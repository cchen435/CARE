#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <string.h>
#include "bench_gtc.h"
#if USE_MPI
#include <mpi.h>
#endif
#ifdef _OPENMP
#include <omp.h>
#endif

int remap(gtc_bench_data_t *gtc_input){
#if REMAPPING
  gtc_global_params_t     *params;
  gtc_field_data_t        *field_data;
  gtc_particle_data_t     *particle_data;
  gtc_particle_remap_t    *particle_remap;
  gtc_particle_decomp_t   *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;

  int mi, mpsi, mzeta;
  real delr, delz, zetamin, qion, aion, gyroradius, pi, vthi, pi2_inv, cmratio, a0;
  const real* __restrict__ delt; const int* __restrict__ mtheta; const int* __restrict__ igrid;
  const real* __restrict__ qtinv;

  int igrid_remap_in, nloc_remap;
  int remap_order;
  int mvpara, mvperp2;
  real epsilon;
  int conserve_charge;
  real deltavpara, deltavperp2;
  real delvpara, delvperp2;
  real *df_ps, *f_ps, *g_ps;
  real *sendl_ps, *sendr_ps, *recvl_ps, *recvr_ps;
  int s1, s2, s3;
  int icount, idest, isource, isendtag, irecvtag;
  MPI_Status istatus;
  int ipsi_remap_in, ipsi_remap_out;
  int ipsi_in, ipsi_out, ipsi_nover_in, ipsi_nover_out;

  real* __restrict__ z0; real* __restrict__ z1;real* __restrict__ z2;
  real* __restrict__ z3;real* __restrict__ z4;real* __restrict__ z5;
  real* __restrict__ z00;real* __restrict__ z01;real* __restrict__ z02;
  real* __restrict__ z03;real* __restrict__ z04;real* __restrict__ z05;
  real* __restrict__ z06;

  params            = &(gtc_input->global_params);
  field_data        = &(gtc_input->field_data);
  particle_data     = &(gtc_input->particle_data);
  particle_remap    = &(gtc_input->particle_remap);
  parallel_decomp   = &(gtc_input->parallel_decomp);
  radial_decomp     = &(gtc_input->radial_decomp);

  mzeta = params->mzeta; mpsi = params->mpsi;
  mi    = params->mi;
  pi = params->pi;
  qion = params->qion; aion = params->aion;
  gyroradius = params->gyroradius;
  delr = params->delr;
  zetamin = params->zetamin;
  delz  = params->delz;
  a0 = params->a0;

  mtheta = field_data->mtheta;
  qtinv = field_data->qtinv;
  delt = field_data->delt;
  igrid = field_data->igrid;

  z0 = particle_data->z0; z1 = particle_data->z1;
  z2 = particle_data->z2; z3 = particle_data->z3;
  z4 = particle_data->z4; z5 = particle_data->z5;

  z00 = particle_data->z00; z01 = particle_data->z01;
  z02 = particle_data->z02; z03 = particle_data->z03;
  z04 = particle_data->z04; z05 = particle_data->z05;
#if TWO_WEIGHTS
  z06 = particle_data->z06;
#endif

  // bin particles according to its cell index in physical space 
  igrid_remap_in = particle_remap->igrid_remap_in;
  nloc_remap = particle_remap->nloc_remap;
  ipsi_remap_in = particle_remap->ipsi_remap_in;
  ipsi_remap_out = particle_remap->ipsi_remap_out;
  remap_order = particle_remap->remap_order;
  mvpara = particle_remap->mvpara;
  mvperp2 = particle_remap->mvperp2;
  deltavpara = particle_remap->deltavpara;
  deltavperp2 = particle_remap->deltavperp2;
  df_ps = particle_remap->df_phase_space;
  f_ps = particle_remap->f_phase_space;
  g_ps = particle_remap->g_phase_space;	       
  sendl_ps = particle_remap->sendl_phase_space;
  sendr_ps = particle_remap->sendr_phase_space;
  recvl_ps = particle_remap->recvl_phase_space;
  recvr_ps = particle_remap->recvr_phase_space;

  ipsi_in   = radial_decomp->ipsi_in;
  ipsi_out  = radial_decomp->ipsi_out;
  ipsi_nover_in = radial_decomp->ipsi_nover_in;
  ipsi_nover_out = radial_decomp->ipsi_nover_out;
  
  epsilon = 0.05;
  conserve_charge = 0;
  delvpara = 1.0/deltavpara;
  delvperp2 = 1.0/deltavperp2;
  vthi = gyroradius*fabs(qion)/aion;
  pi2_inv = 0.5/pi;
  cmratio = qion/aion;
  
  s1 = (mzeta+1)*(mvpara+1)*(mvperp2+1);
  s2 = (mvpara+1)*(mvperp2+1);
  s3 = mvpara+1;
  icount = nloc_remap*(mvpara+1)*(mvperp2+1);

  if (((istep % particle_remap->remapping_freq) != 0) || (irk == 1)) {
    return 0;
  }

  // bin the particles for conflict free deposition
  igrid_bin_particles(gtc_input);

#pragma omp parallel for
  for (int i=0; i<(mzeta+1)*nloc_remap*(mvpara+1)*(mvperp2+1); i++){
    df_ps[i] = 0.0;
    f_ps[i] = 0.0;
    g_ps[i] = 0.0;
  }
#pragma omp parallel for
  for (int i=0; i<nloc_remap*(mvpara+1)*(mvperp2+1); i++){
    sendl_ps[i] = 0.0;
    sendr_ps[i] = 0.0;
    recvl_ps[i] = 0.0;
    recvr_ps[i] = 0.0;
  }

  real total_df = 0.0;
  real total_f = 0.0;
  real total_g = 0.0;
  for (int p=0; p<2; p++){
#pragma omp parallel 
{
  int m, pp, pr, kk, ip, jt, ij;
  real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m, weight, mweight, pweight,
    r, b, vpara, vperp2, wpp0, wpp1, wpr0, wpr1, wz1, wz0, wp1, wp0, wt0, wt1, tdum, tdumtmp;
  real d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16;
  real m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16;
  real total_df_tid=0.0; real total_f_tid=0.0; real total_g_tid=0.0;
  
#pragma omp for
  for (m=0; m<mi; m++){
    zion2m = z2[m];

    /* skip holes */
    if (zion2m == HOLEVAL) {
      continue;
    }

    zion0m = z0[m]; zion1m = z1[m];
    zion3m = z3[m];
    zion4m = z4[m]; zion5m = z5[m];
    weight = zion4m;
    mweight = z05[m];
    pweight = 1.0;

    if (p==0) {
      total_df_tid += weight;
      total_f_tid += mweight;
      total_g_tid += 1.0;
    }
#if SQRT_PRECOMPUTED
    r        = zion0m;
#else
    r        = sqrt(2.0*zion0m);
#endif
    b = 1.0/(1.0 + r*cos(zion1m));
    vpara = zion3m*b*cmratio/vthi;
    vperp2 = zion5m*zion5m*b/(aion*vthi*vthi);

    // v para
    wpp1 = vpara*delvpara;
    wpp1 = wpp1 + (real)mvpara/2;
    assert((int)wpp1>=0);
    assert((int)wpp1<mvpara);
    pp = abs_min_int(mvpara-1, (int)wpp1);
    wpp1 = wpp1 - (real)pp;
    //if (wpp1<=0.5) wpp1=0.0; // zero order interpolation
    wpp0 = 1.0 - wpp1;
    //assert(wpp1>=0.0);
    //assert(wpp1<=1.0);

    // v perp
    wpr1 = vperp2*delvperp2;
    assert((int)wpr1>=0);
    assert((int)wpr1<mvperp2);
    pr = abs_min_int(mvperp2-1, (int)wpr1);
    wpr1 = wpr1 - (real)pr;
    //if (wpr1<=0.5) wpr1=0.0; // zero order interpolation
    wpr0 = 1.0 - wpr1;
    //assert(wpr1>=0.0);
    //assert(wpr1<=1.0);

    // zeta
    wz1 = (zion2m - zetamin)*delz;
    //assert((int)wz1<mzeta);
    kk = abs_min_int(mzeta-1, (int)wz1);
    wz1 = wz1 - (real)kk;
    wz0 = 1.0 - wz1;
    //assert(wz1>=0.0);
    //assert(wz1<=1.0);

    // psi
    wp1 = (r-a0)*delr;
    assert((int)wp1<mpsi);
    ip = abs_min_int(mpsi-1, (int)wp1);
    wp1 = wp1 - (real)ip;
    wp0 = 1.0 - wp1;
    //assert(wp1>=0.0);
    //assert(wp1<=1.0);
    
    if (p==1) ip = ip+1;
    
    // theta
    //tdum = zion1m*pi2_inv*delt[ip];
    tdumtmp = (zion1m-zion2m*qtinv[ip])*pi2_inv + 10.0;
    tdum = (tdumtmp - (int)tdumtmp)*delt[ip];
    assert((int)tdum<mtheta[ip]);
    jt = abs_min_int(mtheta[ip]-1, (int)tdum);
    wt1 = tdum - (real)jt;
    wt0 = 1.0 - wt1;
    //assert(wt1>=0.0);
    //assert(wt1<=1.0);

    if (p==0){
      wt1 = wt1*wp0;
      wt0 = wt0*wp0;
    }
    else{
      wt1 = wt1*wp1;
      wt0 = wt0*wp1;
    }

    ij = igrid[ip] + jt - igrid_remap_in;

    m1 = wt0*wz0*wpr0*wpp0;
    m2 = wt0*wz0*wpr0*wpp1;
    m3 = wt0*wz0*wpr1*wpp0;
    m4 = wt0*wz0*wpr1*wpp1;

    m5 = wt0*wz1*wpr0*wpp0;
    m6 = wt0*wz1*wpr0*wpp1;
    m7 = wt0*wz1*wpr1*wpp0;
    m8 = wt0*wz1*wpr1*wpp1;

    m9 = wt1*wz0*wpr0*wpp0;
    m10 = wt1*wz0*wpr0*wpp1;
    m11 = wt1*wz0*wpr1*wpp0;
    m12 = wt1*wz0*wpr1*wpp1;

    m13 = wt1*wz1*wpr0*wpp0;
    m14 = wt1*wz1*wpr0*wpp1;
    m15 = wt1*wz1*wpr1*wpp0;
    m16 = wt1*wz1*wpr1*wpp1;

    d1 = df_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = df_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d4 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];
    
    d5 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d6 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d7 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d8 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d9 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d10 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d11 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d12 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];

    d13 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d14 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d15 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d16 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d1 += weight*m1;
    d2 += weight*m2;
    d3 += weight*m3;
    d4 += weight*m4;

    d5 += weight*m5;
    d6 += weight*m6;
    d7 += weight*m7;
    d8 += weight*m8;

    d9 += weight*m9;
    d10 += weight*m10;
    d11 += weight*m11;
    d12 += weight*m12;

    d13 += weight*m13;
    d14 += weight*m14;
    d15 += weight*m15;
    d16 += weight*m16;

    df_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    df_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d3;
    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d4;

    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d5;
    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d6;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d7;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d8;

    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d9;
    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d10;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d11;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d12;

    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d13;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d14;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d15;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d16;

    d1 = f_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = f_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d4 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];

    d5 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d6 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d7 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d8 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d9 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d10 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d11 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d12 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];

    d13 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d14 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d15 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d16 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d1 += mweight*m1;
    d2 += mweight*m2;
    d3 += mweight*m3;
    d4 += mweight*m4;

    d5 += mweight*m5;
    d6 += mweight*m6;
    d7 += mweight*m7;
    d8 += mweight*m8;

    d9 += mweight*m9;
    d10 += mweight*m10;
    d11 += mweight*m11;
    d12 += mweight*m12;

    d13 += mweight*m13;
    d14 += mweight*m14;
    d15 += mweight*m15;
    d16 += mweight*m16;

    f_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    f_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d3;
    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d4;

    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d5;
    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d6;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d7;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d8;

    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d9;
    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d10;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d11;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d12;

    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d13;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d14;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d15;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d16;

    d1 = g_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = g_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d4 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];

    d5 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d6 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d7 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d8 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d9 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d10 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d11 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d12 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];

    d13 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d14 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d15 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d16 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];

    d1 += pweight*m1;
    d2 += pweight*m2;
    d3 += pweight*m3;
    d4 += pweight*m4;

    d5 += pweight*m5;
    d6 += pweight*m6;
    d7 += pweight*m7;
    d8 += pweight*m8;

    d9  += pweight*m9;
    d10 += pweight*m10;
    d11 += pweight*m11;
    d12 += pweight*m12;

    d13 += pweight*m13;
    d14 += pweight*m14;
    d15 += pweight*m15;
    d16 += pweight*m16;

    g_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    g_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d3;
    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d4;

    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d5;
    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d6;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d7;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d8;

    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d9;
    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d10;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d11;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d12;

    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d13;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d14;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d15;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d16;
  }

  if (p==0){
#pragma omp atomic 
    total_df += total_df_tid;
#pragma omp atomic 
    total_f += total_f_tid;
#pragma omp atomic
    total_g += total_g_tid;
  }
}   // end parallel

  } // end pass

  real global_df = 0.0;
  MPI_Allreduce(&total_df, &global_df, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  real global_f = 0.0;
  MPI_Allreduce(&total_f, &global_f, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  real global_g = 0.0;
  MPI_Allreduce(&total_g, &global_g, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);

  // ghost cell communication in radial dimension
  if (parallel_decomp->npartdom > 1) {
    /* sum radial */
    if (radial_decomp->nproc_radial_partd > 1){
      real *tmp = (real *) malloc(nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1));
#pragma omp parallel for
      for (int ij=0; ij<nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1); ij++) {
	tmp[ij] = df_ps[ij];
	df_ps[ij] = 0.0;
      }
      MPI_Allreduce(tmp, df_ps, nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1),
		    MPI_MYWREAL, MPI_SUM,
		    radial_decomp->radial_partd_comm);
#pragma omp parallel for
      for (int ij=0; ij<nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1); ij++) {
        tmp[ij]= f_ps[ij];
        f_ps[ij] = 0.0;
      }
      MPI_Allreduce(tmp, f_ps, nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1),
                    MPI_MYWREAL, MPI_SUM,
                    radial_decomp->radial_partd_comm);
#pragma omp parallel for
      for (int ij=0; ij<nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1); ij++) {
        tmp[ij]= g_ps[ij];
        g_ps[ij] = 0.0;
      }
      MPI_Allreduce(tmp, g_ps, nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1),
                    MPI_MYWREAL, MPI_SUM,
                    radial_decomp->radial_partd_comm);
      free (tmp);
    }

    /* sum ghost cell */
    sum_plane_remap(gtc_input, 0);

    sum_plane_remap(gtc_input, 1);

    sum_plane_remap(gtc_input, 2);
  }

  if (parallel_decomp->ntoroidal>1){
    // communication in toroidal dimension
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for (int pr=0; pr<mvperp2+1; pr++){		
	for (int pp=0; pp<mvpara+1; pp++){
	  sendr_ps[i*s2+pr*s3+pp] = df_ps[i*s1+mzeta*s2+pr*s3+pp];
	  recvl_ps[i*s2+pr*s3+pp] = 0.0;
	}
      }
    }
    idest = parallel_decomp->right_pe;
    isource = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendr_ps, icount, MPI_MYREAL, idest, isendtag, recvl_ps,
		 icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);
    
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  sendl_ps[i*s2+pr*s3+pp] = df_ps[i*s1+0*s2+pr*s3+pp];
	  recvr_ps[i*s2+pr*s3+pp] = 0.0;
	} 
      }
    }
    
    idest = parallel_decomp->left_pe;
    isource = parallel_decomp->right_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendl_ps, icount, MPI_MYREAL, idest, isendtag, recvr_ps,
	       icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);
    
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  df_ps[i*s1+0*s2+pr*s3+pp] += recvl_ps[i*s2+pr*s3+pp];
	  df_ps[i*s1+mzeta*s2+pr*s3+pp] += recvr_ps[i*s2+pr*s3+pp];
	}
      }
    }
    
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for (int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  sendr_ps[i*s2+pr*s3+pp] = f_ps[i*s1+mzeta*s2+pr*s3+pp];
	  recvl_ps[i*s2+pr*s3+pp] = 0.0;
	}
      }
    }
    
    idest = parallel_decomp->right_pe;
    isource = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendr_ps, icount, MPI_MYREAL, idest, isendtag, recvl_ps,
		 icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);
    
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  sendl_ps[i*s2+pr*s3+pp] = f_ps[i*s1+0*s2+pr*s3+pp];
	  recvr_ps[i*s2+pr*s3+pp] = 0.0;
	}
      }
    }

    idest= parallel_decomp->left_pe;
    isource = parallel_decomp->right_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendl_ps, icount, MPI_MYREAL, idest, isendtag, recvr_ps,
		 icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);
    
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  f_ps[i*s1+0*s2+pr*s3+pp] += recvl_ps[i*s2+pr*s3+pp];
	  f_ps[i*s1+mzeta*s2+pr*s3+pp] += recvr_ps[i*s2+pr*s3+pp];
	}
      }
    }

#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for (int pr=0; pr<mvperp2+1; pr++){
        for (int pp=0; pp<mvpara+1; pp++){
          sendr_ps[i*s2+pr*s3+pp] = g_ps[i*s1+mzeta*s2+pr*s3+pp];
          recvl_ps[i*s2+pr*s3+pp] = 0.0;
        }
      }
    }
    idest = parallel_decomp->right_pe;
    isource = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendr_ps, icount, MPI_MYREAL, idest, isendtag, recvl_ps,
                 icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);

#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
        for (int pp=0; pp<mvpara+1; pp++){
          sendl_ps[i*s2+pr*s3+pp] = g_ps[i*s1+0*s2+pr*s3+pp];
          recvr_ps[i*s2+pr*s3+pp] = 0.0;
        }
      }
    }
    idest = parallel_decomp->left_pe;
    isource = parallel_decomp->right_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendl_ps, icount, MPI_MYREAL, idest, isendtag, recvr_ps,
		 icount, MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);

#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
        for (int pp=0; pp<mvpara+1; pp++){
          g_ps[i*s1+0*s2+pr*s3+pp] += recvl_ps[i*s2+pr*s3+pp];
          g_ps[i*s1+mzeta*s2+pr*s3+pp] += recvr_ps[i*s2+pr*s3+pp];
        }
      }
    }
  }
  else {
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
	for (int pp=0; pp<mvpara+1; pp++){
	  df_ps[i*s1+mzeta*s2+pr*s3+pp] += df_ps[i*s1+0*s2+pr*s3+pp];
	  f_ps[i*s1+mzeta*s2+pr*s3+pp] += f_ps[i*s1+0*s2+pr*s3+pp];
	  g_ps[i*s1+mzeta*s2+pr*s3+pp] += g_ps[i*s1+0*s2+pr*s3+pp];
	}
      }
    }
#pragma omp parallel for
    for (int i=0; i<nloc_remap; i++){
      for(int pr=0; pr<mvperp2+1; pr++){
        for (int pp=0; pp<mvpara+1; pp++){
          df_ps[i*s1+0*s2+pr*s3+pp] = df_ps[i*s1+mzeta*s2+pr*s3+pp];
          f_ps[i*s1+0*s2+pr*s3+pp] = f_ps[i*s1+mzeta*s2+pr*s3+pp];
	  g_ps[i*s1+0*s2+pr*s3+pp] = g_ps[i*s1+mzeta*s2+pr*s3+pp];
	}
      }
    }
  }
  
  for (int i=ipsi_remap_in; i<ipsi_remap_out+1; i++){
      for (int kk=0; kk<mzeta+1; kk++){
	for (int pr=0; pr<mvperp2+1; pr++){
	  for (int pp=0; pp<mvpara+1; pp++){
	    df_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] +=
	      df_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
	    df_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] =
	      df_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
	    f_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] +=
	      f_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
	    f_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] =
	      f_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
            g_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] +=
              g_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
            g_ps[(igrid[i]+mtheta[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp] =
              g_ps[(igrid[i]-igrid_remap_in)*s1+kk*s2+pr*s3+pp];
	  }
	}
    }
  }
  

  real loc_df=0.0;
  real loc_f=0.0;
  real loc_g=0.0;
  for (int i=ipsi_in; i<ipsi_out+1; i++){
    if (i>=ipsi_nover_in&&i<=ipsi_nover_out){
      for (int j=1; j<mtheta[i]+1; j++){
	int ij = igrid[i] + j - igrid_remap_in;	
	for (int pr=0; pr<mvperp2+1; pr++){
	  for (int pp=0; pp<mvpara+1; pp++){
	    loc_df += df_ps[ij*s1+mzeta*s2+pr*s3+pp];
	    loc_f  += f_ps[ij*s1+mzeta*s2+pr*s3+pp];
	    loc_g  += g_ps[ij*s1+mzeta*s2+pr*s3+pp];
	  }
	}
      }
    }
  }

  real glo_df = 0.0;
  MPI_Allreduce(&loc_df, &glo_df, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  real glo_f = 0.0;
  MPI_Allreduce(&loc_f, &glo_f, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  real glo_g = 0.0;
  MPI_Allreduce(&loc_g, &glo_g, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);

  real tot_w=0.0;
  real tot_c=0.0;
#pragma omp parallel
  {
    int m, pp, pr, kk, ip, jt, ij, jt2, ij2;
    real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m, zion05m,
      r, b, vpara, vperp2, wpp0, wpp1, wpr0, wpr1, wz1, 
      wz0, wp1, wp0, wt00, wt01, wt10, wt11, tdum, tdum2, tdumtmp, tdumtmp2;
    real df, f, g;
    real tot_w_tid=0.0; real tot_c_tid=0.0;

#pragma omp for
    for (m=0; m<mi; m++){
      zion2m = z2[m];

      /* skip holes */
      if (zion2m == HOLEVAL) {
	continue;
      }

      zion0m = z0[m]; zion1m = z1[m];
      zion3m = z3[m];
      zion4m = z4[m]; zion5m = z5[m];
      zion05m = z05[m];
      
#if SQRT_PRECOMPUTED
      r        = zion0m;
#else
      r        = sqrt(2.0*zion0m);
#endif
      b = 1.0/(1.0 + r*cos(zion1m));
      vpara = zion3m*b*cmratio/vthi;
      vperp2 = zion5m*zion5m*b/(aion*vthi*vthi);

      // v para
      wpp1 = vpara*delvpara;
      wpp1 = wpp1 + (real)mvpara/2;
      assert((int)wpp1>=0);
      assert((int)wpp1<mvpara);
      pp = abs_min_int(mvpara-1, (int)wpp1);
      wpp1 = wpp1 - (real)pp;
      //if (wpp1<=0.5) wpp1=0.0; // zero order interpolation
      wpp0 = 1.0 - wpp1;
      //assert(wpp1>=0.0);
      //assert(wpp1<=1.0);

      // v perp
      wpr1 = vperp2*delvperp2;
      assert((int)wpr1>=0);
      assert((int)wpr1<mvperp2);
      pr = abs_min_int(mvperp2-1, (int)wpr1);
      wpr1 = wpr1 - (real)pr;
      //if (wpr1<=0.5) wpr1=0.0; // zero order interpolation
      wpr0 = 1.0 - wpr1;
      //assert(wpr1>=0.0);
      //assert(wpr1<=1.0);

      // zeta
      wz1 = (zion2m - zetamin)*delz;
      //assert((int)wz1<mzeta);
      kk = abs_min_int(mzeta-1, (int)wz1);
      wz1 = wz1 - (real)kk;
      wz0 = 1.0 - wz1;
      //assert(wz1>=0.0);
      //assert(wz1<=1.0);

      // psi
      wp1 = (r-a0)*delr;
      assert((int)wp1<mpsi);
      ip = abs_min_int(mpsi-1, (int)wp1);
      wp1 = wp1 - (real)ip;
      wp0 = 1.0 - wp1;
      //assert(wp1>=0.0);
      //assert(wp1<=1.0);

      // theta
      //tdum = zion1m*pi2_inv*delt[ip];
      tdumtmp = (zion1m-zion2m*qtinv[ip])*pi2_inv + 10.0;
      tdum = (tdumtmp - (int)tdumtmp)*delt[ip];

      assert((int)tdum<mtheta[ip]);
      jt = abs_min_int(mtheta[ip]-1, (int)tdum);
      wt01 = tdum - (real)jt;
      wt00 = 1.0 - wt01;
      //assert(wt01>=0.0);
      //assert(wt01<=1.0);
      wt01 = wt01*wp0;
      wt00 = wt00*wp0;
      ij = igrid[ip] + jt - igrid_remap_in;

      // theta
      //tdum2 = zion1m*pi2_inv*delt[ip+1];
      tdumtmp2 = (zion1m-zion2m*qtinv[ip+1])*pi2_inv + 10.0;
      tdum2 = (tdumtmp2 - (int)tdumtmp2)*delt[ip+1];

      assert((int)tdum2<mtheta[ip+1]);
      jt2 = abs_min_int(mtheta[ip+1]-1, (int)tdum2);
      wt11 = tdum2 - (real)jt2;
      wt10 = 1.0 - wt11;
      //assert(wt11>=0.0);
      //assert(wt11<=1.0);
      wt11 = wt11*wp1;
      wt10 = wt10*wp1;
      ij2 = igrid[ip+1] + jt2 - igrid_remap_in;

      df = 0.0;
      f = 0.0;
      g = 0.0;
      
      // df,ij
      df += wt00*wz0*(wpr0*wpp0*df_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij+s2*kk+s3*pr+pp+1]+
		      wpr1*wpp0*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]);
      df += wt00*wz1*(wpr0*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
		      wpr1*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]);
      df += wt01*wz0*(wpr0*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
		      wpr1*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]);
      df += wt01*wz1*(wpr0*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
                      wpr1*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      // df,ij2
      df += wt10*wz0*(wpr0*wpp0*df_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
                      wpr1*wpp0*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]);
      df += wt10*wz1*(wpr0*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
                      wpr1*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]);
      df += wt11*wz0*(wpr0*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
                      wpr1*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]);
      df += wt11*wz1*(wpr0*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
                      wpr1*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      // f,ij
      f += wt00*wz0*(wpr0*wpp0*f_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij+s2*kk+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]);
      f += wt00*wz1*(wpr0*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]);
      f += wt01*wz0*(wpr0*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]);
      f += wt01*wz1*(wpr0*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      // f,ij2                                           
      f += wt10*wz0*(wpr0*wpp0*f_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]);
      f += wt10*wz1*(wpr0*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]);
      f += wt11*wz0*(wpr0*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]);
      f += wt11*wz1*(wpr0*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
		     wpr1*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      // f,ij
      g += wt00*wz0*(wpr0*wpp0*g_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij+s2*kk+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]);
      g += wt00*wz1*(wpr0*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]);
      g += wt01*wz0*(wpr0*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]);
      g += wt01*wz1*(wpr0*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      // f,ij2                                                                                                   
      g += wt10*wz0*(wpr0*wpp0*g_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]);
      g += wt10*wz1*(wpr0*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]);
      g += wt11*wz0*(wpr0*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]);
      g += wt11*wz1*(wpr0*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
                     wpr1*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]);

      zion4m = (1.0-epsilon)*zion4m + epsilon*df/g;
      z4[m] = zion4m;
      z04[m] = zion4m;
      zion05m = (1.0-epsilon)*zion05m + epsilon*f/g;
      z05[m] = zion05m;
#if TWO_WEIGHTS
      z06[m] = zion05m;
#endif
      tot_w_tid += zion4m;
      tot_c_tid += zion05m;
    } 
#pragma omp atomic
    tot_w += tot_w_tid;
#pragma omp atomic
    tot_c += tot_c_tid;
  } // end parallel

  real glo_tot_w=0.0;
  MPI_Allreduce(&tot_w, &glo_tot_w, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  real glo_tot_c= 0.0;
  MPI_Allreduce(&tot_c, &glo_tot_c, 1, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);

  if (parallel_decomp->mype==0)
    printf("mype=%d global_df=%e glo_df=%e global_f=%e glo_f=%e global_g=%e glo_g=%e glo_tot_w=%e glo_tot_c=%e\n", parallel_decomp->mype, global_df, glo_df, global_f, glo_f, global_g, glo_g, glo_tot_w, glo_tot_c);
  
  // conserve the total charge before and after remapping
  if (conserve_charge==1){
    real charge_err = glo_tot_w - global_df;
    charge_err /= global_g;
#pragma omp parallel for
    for (int m=0; m<mi; m++){
      real zion4m = z4[m] - charge_err;
      z4[m] = zion4m;
      z04[m] = zion4m;
    }
  }

#endif

  return 0;

}
