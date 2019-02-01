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
  real deltavpara, deltavperp2;
  real delvpara, delvperp2;
  real *df_ps, *f_ps, *g_ps;
  real *sendl_ps, *sendr_ps, *recvl_ps, *recvr_ps;
  int s1, s2, s3;
  int icount, idest, isource, isendtag, irecvtag;
  MPI_Status istatus;
  int ipsi_remap_in, ipsi_remap_out;
  int ipsi_in, ipsi_out, ipsi_nover_in, ipsi_nover_out;

  real* __restrict__ z0; real* __restrict__ z1; real* __restrict__ z2;
  real* __restrict__ z3; real* __restrict__ z4; real* __restrict__ z5;
  real* __restrict__ z00; real* __restrict__ z01; real* __restrict__ z02;
  real* __restrict__ z03; real* __restrict__ z04; real* __restrict__ z05;
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
  int m, pp, pr, pr3, kk, ip, jt, ij;
  real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m, weight, mweight,
    r, b, vpara, vperp2, wpp0, wpp1, wpp2, wpp3, wpr0, wpr1, wpr2, wpr3, wz1, wz0, wp1, wp0, wt0, wt1, tdum, tdumtmp;
  real d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,
    d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,d41,d42,d43,d44,d45,d46,d47,
    d48,d49,d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,d60,d61,d62,d63,d64;
  real m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,
    m25,m26,m27,m28,m29,m30,m31,m32,m33,m34,m35,m36,m37,m38,m39,m40,m41,m42,m43,m44,m45,m46,m47,
    m48,m49,m50,m51,m52,m53,m54,m55,m56,m57,m58,m59,m60,m61,m62,m63,m64;
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
    pp = abs_min_int(mvpara-1, (int)wpp1);
    assert((pp-1)>=0);
    assert((pp+2)<=mvpara);

    wpp0 = wpp1 - (real)pp;
    wpp1 = 1.0 - wpp0;
    wpp2 = 1.0 + wpp1;
    wpp3 = 1.0 + wpp0;

    wpp0 = 1.0 - 2.5*wpp0*wpp0 + 1.5*wpp0*wpp0*wpp0;
    wpp1 = 1.0 - 2.5*wpp1*wpp1 + 1.5*wpp1*wpp1*wpp1;
    wpp2 = 0.5*(2.0-wpp2)*(2.0-wpp2)*(1.0-wpp2);
    wpp3 = 0.5*(2.0-wpp3)*(2.0-wpp3)*(1.0-wpp3);
    
    //assert(wpp1>=0.0);
    //assert(wpp1<=1.0);
    //assert(abs(wpp0+wpp1+wpp2+wpp3-1.0)<1.0e-14);

    // v perp
    wpr1 = vperp2*delvperp2;
    pr = abs_min_int(mvperp2-1, (int)wpr1);
    assert(pr>=0);
    assert((pr+2)<=mvperp2);

    wpr0 = wpr1 - (real)pr;
    wpr1 = 1.0 - wpr0;
    wpr2 = 1.0 + wpr1;
    wpr3 = 1.0 + wpr0;

    wpr0 = 1.0 - 2.5*wpr0*wpr0 + 1.5*wpr0*wpr0*wpr0;
    wpr1 = 1.0 - 2.5*wpr1*wpr1 + 1.5*wpr1*wpr1*wpr1;
    wpr2 = 0.5*(2.0-wpr2)*(2.0-wpr2)*(1.0-wpr2);
    wpr3 = 0.5*(2.0-wpr3)*(2.0-wpr3)*(1.0-wpr3);

    //assert(wpr1>=0.0);
    //assert(wpr1<=1.0);
    //assert(abs(wpr0+wpr1+wpr2+wpr3-1.0)<1.0e-14);

    pr3 = pr - 1;
    if (pr3<0) {
      pr3=0;
      wpr0 = wpr0+wpr3;
      wpr3 = 0.0;
    }

    // zeta
    wz1 = (zion2m - zetamin)*delz;
    assert((int)wz1<mzeta);
    kk = abs_min_int(mzeta-1, (int)wz1);
    wz1 = wz1 - (real)kk;
    wz0 = 1.0 - wz1;
    assert(wz1>=0.0);
    assert(wz1<=1.0);

    // psi
    wp1 = (r-a0)*delr;
    assert((int)wp1<mpsi);
    ip = abs_min_int(mpsi-1, (int)wp1);
    wp1 = wp1 - (real)ip;
    wp0 = 1.0 - wp1;
    assert(wp1>=0.0);
    assert(wp1<=1.0);
    
    if (p==1) ip = ip+1;
    
    // theta
    //tdum = zion1m*pi2_inv*delt[ip];
    tdumtmp = (zion1m-zion2m*qtinv[ip])*pi2_inv + 10.0;
    tdum = (tdumtmp - (int)tdumtmp)*delt[ip];
    assert((int)tdum<mtheta[ip]);
    jt = abs_min_int(mtheta[ip]-1, (int)tdum);
    wt1 = tdum - (real)jt;
    wt0 = 1.0 - wt1;
    assert(wt1>=0.0);
    assert(wt1<=1.0);

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
    m3 = wt0*wz0*wpr0*wpp2;
    m4 = wt0*wz0*wpr0*wpp3;

    m5 = wt0*wz0*wpr1*wpp0;
    m6 = wt0*wz0*wpr1*wpp1;
    m7 = wt0*wz0*wpr1*wpp2;
    m8 = wt0*wz0*wpr1*wpp3;

    m9  = wt0*wz0*wpr2*wpp0;
    m10 = wt0*wz0*wpr2*wpp1;
    m11 = wt0*wz0*wpr2*wpp2;
    m12 = wt0*wz0*wpr2*wpp3;

    m13 = wt0*wz0*wpr3*wpp0;
    m14 = wt0*wz0*wpr3*wpp1;
    m15 = wt0*wz0*wpr3*wpp2;
    m16 = wt0*wz0*wpr3*wpp3;

    m17 = wt0*wz1*wpr0*wpp0;
    m18 = wt0*wz1*wpr0*wpp1;
    m19 = wt0*wz1*wpr0*wpp2;
    m20 = wt0*wz1*wpr0*wpp3;

    m21 = wt0*wz1*wpr1*wpp0;
    m22 = wt0*wz1*wpr1*wpp1;
    m23 = wt0*wz1*wpr1*wpp2;
    m24 = wt0*wz1*wpr1*wpp3;

    m25 = wt0*wz1*wpr2*wpp0;
    m26 = wt0*wz1*wpr2*wpp1;
    m27 = wt0*wz1*wpr2*wpp2;
    m28 = wt0*wz1*wpr2*wpp3;

    m29 = wt0*wz1*wpr3*wpp0;
    m30 = wt0*wz1*wpr3*wpp1;
    m31 = wt0*wz1*wpr3*wpp2;
    m32 = wt0*wz1*wpr3*wpp3;

    m33 = wt1*wz0*wpr0*wpp0;
    m34 = wt1*wz0*wpr0*wpp1;
    m35 = wt1*wz0*wpr0*wpp2;
    m36 = wt1*wz0*wpr0*wpp3;

    m37 = wt1*wz0*wpr1*wpp0;
    m38 = wt1*wz0*wpr1*wpp1;
    m39 = wt1*wz0*wpr1*wpp2;
    m40 = wt1*wz0*wpr1*wpp3;

    m41 = wt1*wz0*wpr2*wpp0;
    m42 = wt1*wz0*wpr2*wpp1;
    m43 = wt1*wz0*wpr2*wpp2;
    m44 = wt1*wz0*wpr2*wpp3;

    m45 = wt1*wz0*wpr3*wpp0;
    m46 = wt1*wz0*wpr3*wpp1;
    m47 = wt1*wz0*wpr3*wpp2;
    m48 = wt1*wz0*wpr3*wpp3;

    m49 = wt1*wz1*wpr0*wpp0;
    m50 = wt1*wz1*wpr0*wpp1;
    m51 = wt1*wz1*wpr0*wpp2;
    m52 = wt1*wz1*wpr0*wpp3;

    m53 = wt1*wz1*wpr1*wpp0;
    m54 = wt1*wz1*wpr1*wpp1;
    m55 = wt1*wz1*wpr1*wpp2;
    m56 = wt1*wz1*wpr1*wpp3;

    m57 = wt1*wz1*wpr2*wpp0;
    m58 = wt1*wz1*wpr2*wpp1;
    m59 = wt1*wz1*wpr2*wpp2;
    m60 = wt1*wz1*wpr2*wpp3;

    m61 = wt1*wz1*wpr3*wpp0;
    m62 = wt1*wz1*wpr3*wpp1;
    m63 = wt1*wz1*wpr3*wpp2;
    m64 = wt1*wz1*wpr3*wpp3;

    real mtot = m1+m2+m3+m4+m5+m6+m7+m8+m9+m10+m11+m12+m13+m14+m15+m16;
    mtot += m17+m18+m19+m20+m21+m22+m23+m24+m25+m26+m27+m28+m29+m30+m31+m32;
    mtot += m33+m34+m35+m36+m37+m38+m39+m40+m41+m42+m43+m44+m45+m46+m47+m48;
    mtot += m49+m50+m51+m52+m53+m54+m55+m56+m57+m58+m59+m60+m61+m52+m63+m64;

    if (p==0)
      assert(abs(mtot-wp0)<1.0e-14);
    else
      assert(abs(mtot-wp1)<1.0e-14);

    d1 = df_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = df_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = df_ps[s1*ij + s2*kk + s3*pr + pp + 2];
    d4 = df_ps[s1*ij + s2*kk + s3*pr + pp - 1];

    d5 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d6 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];
    d7 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2];
    d8 = df_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1];
    
    d9  = df_ps[s1*ij + s2*kk + s3*(pr+2) + pp];
    d10 = df_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1];
    d11 = df_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2];
    d12 = df_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1];

    d13 = df_ps[s1*ij + s2*kk + s3*pr3 + pp];
    d14 = df_ps[s1*ij + s2*kk + s3*pr3 + pp + 1];
    d15 = df_ps[s1*ij + s2*kk + s3*pr3 + pp + 2];
    d16 = df_ps[s1*ij + s2*kk + s3*pr3 + pp - 1];

    d17 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d18 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d19 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2];
    d20 = df_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1];

    d21 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d22 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d23 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d24 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d25 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp];
    d26 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d27 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d28 = df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d29 = df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp];
    d30 = df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1];
    d31 = df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2];
    d32 = df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1];

    d33 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d34 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d35 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2];
    d36 = df_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1];

    d37 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d38 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];
    d39 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2];
    d40 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1];

    d41 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp];
    d42 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1];
    d43 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2];
    d44 = df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1];

    d45 = df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp];
    d46 = df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1];
    d47 = df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2];
    d48 = df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1];

    d49 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d50 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d51 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2];
    d52 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1];

    d53 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d54 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d55 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d56 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d57 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp];
    d58 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d59 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d60 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d61 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp];
    d62 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1];
    d63 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2];
    d64 = df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1];

    d1 += weight*m1;
    d2 += weight*m2;
    d3 += weight*m3;
    d4 += weight*m4;

    d5 += weight*m5;
    d6 += weight*m6;
    d7 += weight*m7;
    d8 += weight*m8;

    d9  += weight*m9;
    d10 += weight*m10;
    d11 += weight*m11;
    d12 += weight*m12;

    d13 += weight*m13;
    d14 += weight*m14;
    d15 += weight*m15;
    d16 += weight*m16;

    d17 += weight*m17;
    d18 += weight*m18;
    d19 += weight*m19;
    d20 += weight*m20;

    d21 += weight*m21;
    d22 += weight*m22;
    d23 += weight*m23;
    d24 += weight*m24;

    d25 += weight*m25;
    d26 += weight*m26;
    d27 += weight*m27;
    d28 += weight*m28;

    d29 += weight*m29;
    d30 += weight*m30;
    d31 += weight*m31;
    d32 += weight*m32;

    d33 += weight*m33;
    d34 += weight*m34;
    d35 += weight*m35;
    d36 += weight*m36;

    d37 += weight*m37;
    d38 += weight*m38;
    d39 += weight*m39;
    d40 += weight*m40;

    d41 += weight*m41;
    d42 += weight*m42;
    d43 += weight*m43;
    d44 += weight*m44;

    d45 += weight*m45;
    d46 += weight*m46;
    d47 += weight*m47;
    d48 += weight*m48;

    d49 += weight*m49;
    d50 += weight*m50;
    d51 += weight*m51;
    d52 += weight*m52;

    d53 += weight*m53;
    d54 += weight*m54;
    d55 += weight*m55;
    d56 += weight*m56;

    d57 += weight*m57;
    d58 += weight*m58;
    d59 += weight*m59;
    d60 += weight*m60;

    d61 += weight*m61;
    d62 += weight*m62;
    d63 += weight*m63;
    d64 += weight*m64;

    df_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    df_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    df_ps[s1*ij + s2*kk + s3*pr + pp + 2] = d3;
    df_ps[s1*ij + s2*kk + s3*pr + pp - 1] = d4;

    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d5;
    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d6;
    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2] = d7;
    df_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1] = d8;

    df_ps[s1*ij + s2*kk + s3*(pr+2) + pp] = d9;
    df_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1] = d10;
    df_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2] = d11;
    df_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1] = d12;

    if (pr!=0){
      df_ps[s1*ij + s2*kk + s3*pr3 + pp] = d13;
      df_ps[s1*ij + s2*kk + s3*pr3 + pp + 1] = d14;
      df_ps[s1*ij + s2*kk + s3*pr3 + pp + 2] = d15;
      df_ps[s1*ij + s2*kk + s3*pr3 + pp - 1] = d16;
    }

    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d17;
    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d18;
    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2] = d19;
    df_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1] = d20;

    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d21;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d22;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2] = d23;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1] = d24;

    df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp] = d25;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1] = d26;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2] = d27;
    df_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1] = d28;

    if (pr!=0){
      df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp] = d29;
      df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1] = d30;
      df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2] = d31;
      df_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1] = d32;
    }

    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d33;
    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d34;
    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2] = d35;
    df_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1] = d36;

    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d37;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d38;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2] = d39;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1] = d40;

    df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp] = d41;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1] = d42;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2] = d43;
    df_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1] = d44;

    if (pr!=0){
      df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp] = d45;
      df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1] = d46;
      df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2] = d47;
      df_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1] = d48;
    }

    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d49;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d50;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2] = d51;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1] = d52;

    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d53;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d54;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2] = d55;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1] = d56;

    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp] = d57;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1] = d58;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2] = d59;
    df_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1] = d60;

    if (pr!=0){
      df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp] = d61;
      df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1] = d62;
      df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2] = d63;
      df_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1] = d64;
    }
    
    d1 = f_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = f_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = f_ps[s1*ij + s2*kk + s3*pr + pp + 2];
    d4 = f_ps[s1*ij + s2*kk + s3*pr + pp - 1];

    d5 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d6 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];
    d7 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2];
    d8 = f_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1];

    d9  = f_ps[s1*ij + s2*kk + s3*(pr+2) + pp];
    d10 = f_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1];
    d11 = f_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2];
    d12 = f_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1];

    d13 = f_ps[s1*ij + s2*kk + s3*pr3 + pp];
    d14 = f_ps[s1*ij + s2*kk + s3*pr3 + pp + 1];
    d15 = f_ps[s1*ij + s2*kk + s3*pr3 + pp + 2];
    d16 = f_ps[s1*ij + s2*kk + s3*pr3 + pp - 1];

    d17 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d18 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d19 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2];
    d20 = f_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1];

    d21 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d22 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d23 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d24 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d25 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp];
    d26 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d27 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d28 = f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d29 = f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp];
    d30 = f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1];
    d31 = f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2];
    d32 = f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1];

    d33 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d34 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d35 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2];
    d36 = f_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1];

    d37 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d38 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];
    d39 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2];
    d40 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1];

    d41 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp];
    d42 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1];
    d43 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2];
    d44 = f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1];

    d45 = f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp];
    d46 = f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1];
    d47 = f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2];
    d48 = f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1];

    d49 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d50 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d51 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2];
    d52 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1];

    d53 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d54 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d55 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d56 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d57 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp];
    d58 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d59 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d60 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d61 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp];
    d62 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1];
    d63 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2];
    d64 = f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1];

    d1 += mweight*m1;
    d2 += mweight*m2;
    d3 += mweight*m3;
    d4 += mweight*m4;

    d5 += mweight*m5;
    d6 += mweight*m6;
    d7 += mweight*m7;
    d8 += mweight*m8;

    d9  += mweight*m9;
    d10 += mweight*m10;
    d11 += mweight*m11;
    d12 += mweight*m12;

    d13 += mweight*m13;
    d14 += mweight*m14;
    d15 += mweight*m15;
    d16 += mweight*m16;

    d17 += mweight*m17;
    d18 += mweight*m18;
    d19 += mweight*m19;
    d20 += mweight*m20;

    d21 += mweight*m21;
    d22 += mweight*m22;
    d23 += mweight*m23;
    d24 += mweight*m24;

    d25 += mweight*m25;
    d26 += mweight*m26;
    d27 += mweight*m27;
    d28 += mweight*m28;

    d29 += mweight*m29;
    d30 += mweight*m30;
    d31 += mweight*m31;
    d32 += mweight*m32;

    d33 += mweight*m33;
    d34 += mweight*m34;
    d35 += mweight*m35;
    d36 += mweight*m36;

    d37 += mweight*m37;
    d38 += mweight*m38;
    d39 += mweight*m39;
    d40 += mweight*m40;

    d41 += mweight*m41;
    d42 += mweight*m42;
    d43 += mweight*m43;
    d44 += mweight*m44;

    d45 += mweight*m45;
    d46 += mweight*m46;
    d47 += mweight*m47;
    d48 += mweight*m48;

    d49 += mweight*m49;
    d50 += mweight*m50;
    d51 += mweight*m51;
    d52 += mweight*m52;

    d53 += mweight*m53;
    d54 += mweight*m54;
    d55 += mweight*m55;
    d56 += mweight*m56;

    d57 += mweight*m57;
    d58 += mweight*m58;
    d59 += mweight*m59;
    d60 += mweight*m60;

    d61 += mweight*m61;
    d62 += mweight*m62;
    d63 += mweight*m63;
    d64 += mweight*m64;

    f_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    f_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    f_ps[s1*ij + s2*kk + s3*pr + pp + 2] = d3;
    f_ps[s1*ij + s2*kk + s3*pr + pp - 1] = d4;

    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d5;
    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d6;
    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2] = d7;
    f_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1] = d8;

    f_ps[s1*ij + s2*kk + s3*(pr+2) + pp] = d9;
    f_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1] = d10;
    f_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2] = d11;
    f_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1] = d12;

    if (pr!=0){
      f_ps[s1*ij + s2*kk + s3*pr3 + pp] = d13;
      f_ps[s1*ij + s2*kk + s3*pr3 + pp + 1] = d14;
      f_ps[s1*ij + s2*kk + s3*pr3 + pp + 2] = d15;
      f_ps[s1*ij + s2*kk + s3*pr3 + pp - 1] = d16;
    }

    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d17;
    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d18;
    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2] = d19;
    f_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1] = d20;

    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d21;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d22;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2] = d23;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1] = d24;

    f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp] = d25;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1] = d26;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2] = d27;
    f_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1] = d28;

    if (pr!=0){
      f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp] = d29;
      f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1] = d30;
      f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2] = d31;
      f_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1] = d32;
    }

    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d33;
    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d34;
    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2] = d35;
    f_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1] = d36;

    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d37;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d38;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2] = d39;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1] = d40;

    f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp] = d41;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1] = d42;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2] = d43;
    f_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1] = d44;

    if (pr!=0){
      f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp] = d45;
      f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1] = d46;
      f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2] = d47;
      f_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1] = d48;
    }

    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d49;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d50;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2] = d51;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1] = d52;

    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d53;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d54;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2] = d55;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1] = d56;

    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp] = d57;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1] = d58;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2] = d59;
    f_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1] = d60;

    if (pr!=0){
      f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp] = d61;
      f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1] = d62;
      f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2] = d63;
      f_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1] = d64;
    }

    d1 = g_ps[s1*ij + s2*kk + s3*pr + pp];
    d2 = g_ps[s1*ij + s2*kk + s3*pr + pp + 1];
    d3 = g_ps[s1*ij + s2*kk + s3*pr + pp + 2];
    d4 = g_ps[s1*ij + s2*kk + s3*pr + pp - 1];

    d5 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp];
    d6 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1];
    d7 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2];
    d8 = g_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1];

    d9  = g_ps[s1*ij + s2*kk + s3*(pr+2) + pp];
    d10 = g_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1];
    d11 = g_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2];
    d12 = g_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1];

    d13 = g_ps[s1*ij + s2*kk + s3*pr3 + pp];
    d14 = g_ps[s1*ij + s2*kk + s3*pr3 + pp + 1];
    d15 = g_ps[s1*ij + s2*kk + s3*pr3 + pp + 2];
    d16 = g_ps[s1*ij + s2*kk + s3*pr3 + pp - 1];

    d17 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp];
    d18 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1];
    d19 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2];
    d20 = g_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1];

    d21 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp];
    d22 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d23 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d24 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d25 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp];
    d26 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d27 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d28 = g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d29 = g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp];
    d30 = g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1];
    d31 = g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2];
    d32 = g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1];

    d33 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp];
    d34 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1];
    d35 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2];
    d36 = g_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1];

    d37 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp];
    d38 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1];
    d39 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2];
    d40 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1];

    d41 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp];
    d42 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1];
    d43 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2];
    d44 = g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1];

    d45 = g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp];
    d46 = g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1];
    d47 = g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2];
    d48 = g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1];

    d49 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp];
    d50 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1];
    d51 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2];
    d52 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1];

    d53 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp];
    d54 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1];
    d55 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2];
    d56 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1];

    d57 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp];
    d58 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1];
    d59 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2];
    d60 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1];

    d61 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp];
    d62 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1];
    d63 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2];
    d64 = g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1];

    d1 += m1;
    d2 += m2;
    d3 += m3;
    d4 += m4;

    d5 += m5;
    d6 += m6;
    d7 += m7;
    d8 += m8;

    d9  += m9;
    d10 += m10;
    d11 += m11;
    d12 += m12;

    d13 += m13;
    d14 += m14;
    d15 += m15;
    d16 += m16;

    d17 += m17;
    d18 += m18;
    d19 += m19;
    d20 += m20;

    d21 += m21;
    d22 += m22;
    d23 += m23;
    d24 += m24;

    d25 += m25;
    d26 += m26;
    d27 += m27;
    d28 += m28;

    d29 += m29;
    d30 += m30;
    d31 += m31;
    d32 += m32;

    d33 += m33;
    d34 += m34;
    d35 += m35;
    d36 += m36;

    d37 += m37;
    d38 += m38;
    d39 += m39;
    d40 += m40;

    d41 += m41;
    d42 += m42;
    d43 += m43;
    d44 += m44;

    d45 += m45;
    d46 += m46;
    d47 += m47;
    d48 += m48;

    d49 += m49;
    d50 += m50;
    d51 += m51;
    d52 += m52;

    d53 += m53;
    d54 += m54;
    d55 += m55;
    d56 += m56;

    d57 += m57;
    d58 += m58;
    d59 += m59;
    d60 += m60;

    d61 += m61;
    d62 += m62;
    d63 += m63;
    d64 += m64;

    g_ps[s1*ij + s2*kk + s3*pr + pp] = d1;
    g_ps[s1*ij + s2*kk + s3*pr + pp + 1] = d2;
    g_ps[s1*ij + s2*kk + s3*pr + pp + 2] = d3;
    g_ps[s1*ij + s2*kk + s3*pr + pp - 1] = d4;

    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp] = d5;
    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 1] = d6;
    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp + 2] = d7;
    g_ps[s1*ij + s2*kk + s3*(pr+1) + pp - 1] = d8;

    g_ps[s1*ij + s2*kk + s3*(pr+2) + pp] = d9;
    g_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 1] = d10;
    g_ps[s1*ij + s2*kk + s3*(pr+2) + pp + 2] = d11;
    g_ps[s1*ij + s2*kk + s3*(pr+2) + pp - 1] = d12;

    if (pr!=0){
      g_ps[s1*ij + s2*kk + s3*pr3 + pp] = d13;
      g_ps[s1*ij + s2*kk + s3*pr3 + pp + 1] = d14;
      g_ps[s1*ij + s2*kk + s3*pr3 + pp + 2] = d15;
      g_ps[s1*ij + s2*kk + s3*pr3 + pp - 1] = d16;
    }

    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp] = d17;
    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 1] = d18;
    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp + 2] = d19;
    g_ps[s1*ij + s2*(kk+1) + s3*pr + pp - 1] = d20;

    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp] = d21;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 1] = d22;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp + 2] = d23;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+1) + pp - 1] = d24;

    g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp] = d25;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 1] = d26;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp + 2] = d27;
    g_ps[s1*ij + s2*(kk+1) + s3*(pr+2) + pp - 1] = d28;

    if (pr!=0){
      g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp] = d29;
      g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 1] = d30;
      g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp + 2] = d31;
      g_ps[s1*ij + s2*(kk+1) + s3*pr3 + pp - 1] = d32;
    }

    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp] = d33;
    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 1] = d34;
    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp + 2] = d35;
    g_ps[s1*(ij+1) + s2*kk + s3*pr + pp - 1] = d36;

    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp] = d37;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 1] = d38;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp + 2] = d39;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+1) + pp - 1] = d40;

    g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp] = d41;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 1] = d42;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp + 2] = d43;
    g_ps[s1*(ij+1) + s2*kk + s3*(pr+2) + pp - 1] = d44;

    if (pr!=0){
      g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp] = d45;
      g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 1] = d46;
      g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp + 2] = d47;
      g_ps[s1*(ij+1) + s2*kk + s3*pr3 + pp - 1] = d48;
    }

    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp] = d49;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 1] = d50;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp + 2] = d51;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr + pp - 1] = d52;

    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp] = d53;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 1] = d54;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp + 2] = d55;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+1) + pp - 1] = d56;

    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp] = d57;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 1] = d58;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp + 2] = d59;
    g_ps[s1*(ij+1) + s2*(kk+1) + s3*(pr+2) + pp - 1] = d60;

    if (pr!=0){
      g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp] = d61;
      g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 1] = d62;
      g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp + 2] = d63;
      g_ps[s1*(ij+1) + s2*(kk+1) + s3*pr3 + pp - 1] = d64;
    }
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

  real tot_df = 0.0;
#pragma omp parallel for reduction(+:tot_df)
  for (int ij=0; ij<nloc_remap*(mzeta+1)*(mvpara+1)*(mvperp2+1); ij++) {
    tot_df += df_ps[ij];
  }

  //if (parallel_decomp->mype==0) printf("pe=%d total_df=%e tot_df=%e\n", parallel_decomp->mype, total_df, tot_df);
  //MPI_Barrier(MPI_COMM_WORLD);
  //MPI_Abort(MPI_COMM_WORLD, 1);

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
    int m, pp, pr, pr3, kk, ip, jt, ij, jt2, ij2;
    real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m, zion05m,
      r, b, vpara, vperp2, wpp0, wpp1, wpp2, wpp3, wpr0, wpr1, wpr2, wpr3, wz1, 
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
      pp = abs_min_int(mvpara-1, (int)wpp1);
      assert((pp-1)>=0);
      assert((pp+2)<=mvpara);

      wpp0 = wpp1 - (real)pp;
      wpp1 = 1.0 - wpp0;
      wpp2 = 1.0 + wpp1;
      wpp3 = 1.0 + wpp0;

      wpp0 = 1.0 - 2.5*wpp0*wpp0 + 1.5*wpp0*wpp0*wpp0;
      wpp1 = 1.0 - 2.5*wpp1*wpp1 + 1.5*wpp1*wpp1*wpp1;
      wpp2 = 0.5*(2.0-wpp2)*(2.0-wpp2)*(1.0-wpp2);
      wpp3 = 0.5*(2.0-wpp3)*(2.0-wpp3)*(1.0-wpp3);

      // v perp
      wpr1 = vperp2*delvperp2;
      pr = abs_min_int(mvperp2-1, (int)wpr1);
      assert(pr>=0);
      assert((pr+2)<=mvperp2);

      wpr0 = wpr1 - (real)pr;
      wpr1 = 1.0 - wpr0;
      wpr2 = 1.0 + wpr1;
      wpr3 = 1.0 + wpr0;

      wpr0 = 1.0 - 2.5*wpr0*wpr0 + 1.5*wpr0*wpr0*wpr0;
      wpr1 = 1.0 - 2.5*wpr1*wpr1 + 1.5*wpr1*wpr1*wpr1;
      wpr2 = 0.5*(2.0-wpr2)*(2.0-wpr2)*(1.0-wpr2);
      wpr3 = 0.5*(2.0-wpr3)*(2.0-wpr3)*(1.0-wpr3);

      //assert(wpr1>=0.0);                                                       
      //assert(wpr1<=1.0);                                                       
      //assert(abs(wpr0+wpr1+wpr2+wpr3-1.0)<1.0e-14);                            

      pr3 = pr - 1;
      if (pr3<0) {
	pr3=0;
	wpr0 = wpr0+wpr3;
	wpr3 = 0.0;
      }

      // zeta
      wz1 = (zion2m - zetamin)*delz;
      assert((int)wz1<mzeta);
      kk = abs_min_int(mzeta-1, (int)wz1);
      wz1 = wz1 - (real)kk;
      wz0 = 1.0 - wz1;
      assert(wz1>=0.0);
      assert(wz1<=1.0);

      // psi
      wp1 = (r-a0)*delr;
      assert((int)wp1<mpsi);
      ip = abs_min_int(mpsi-1, (int)wp1);
      wp1 = wp1 - (real)ip;
      wp0 = 1.0 - wp1;
      assert(wp1>=0.0);
      assert(wp1<=1.0);

      // theta
      //tdum = zion1m*pi2_inv*delt[ip];
      tdumtmp = (zion1m-zion2m*qtinv[ip])*pi2_inv + 10.0;
      tdum = (tdumtmp - (int)tdumtmp)*delt[ip];

      assert((int)tdum<mtheta[ip]);
      jt = abs_min_int(mtheta[ip]-1, (int)tdum);
      wt01 = tdum - (real)jt;
      wt00 = 1.0 - wt01;
      assert(wt01>=0.0);
      assert(wt01<=1.0);
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
      assert(wt11>=0.0);
      assert(wt11<=1.0);
      wt11 = wt11*wp1;
      wt10 = wt10*wp1;
      ij2 = igrid[ip+1] + jt2 - igrid_remap_in;

      df = 0.0;
      f = 0.0;
      g = 0.0;
      
      // df,ij
      df += wt00*wz0*(wpr0*wpp0*df_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij+s2*kk+s3*pr+pp+1]+
		      wpr0*wpp2*df_ps[s1*ij+s2*kk+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*ij+s2*kk+s3*pr+pp-1]+
		      wpr1*wpp0*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]+
		      wpr1*wpp2*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*ij+s2*kk+s3*(pr+1)+pp-1]+
		      wpr2*wpp0*df_ps[s1*ij+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*ij+s2*kk+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*ij+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*ij+s2*kk+s3*(pr+2)+pp-1]+
		      wpr3*wpp0*df_ps[s1*ij+s2*kk+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*ij+s2*kk+s3*pr3+pp+1]+
		      wpr3*wpp2*df_ps[s1*ij+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*ij+s2*kk+s3*pr3+pp-1]);
	
      df += wt00*wz1*(wpr0*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*ij+s2*(kk+1)+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp-1]+
		      wpr3*wpp0*df_ps[s1*ij+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*ij+s2*(kk+1)+s3*pr3+pp-1]);

      df += wt01*wz0*(wpr0*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*(ij+1)+s2*kk+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp-1]+
		      wpr3*wpp0*df_ps[s1*(ij+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*(ij+1)+s2*kk+s3*pr3+pp-1]);
      
      df += wt01*wz1*(wpr0*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
                      wpr3*wpp0*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp-1]);

      // df,ij2
      df += wt10*wz0*(wpr0*wpp0*df_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*ij2+s2*kk+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*ij2+s2*kk+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*ij2+s2*kk+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*ij2+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*ij2+s2*kk+s3*(pr+2)+pp-1]+
                      wpr3*wpp0*df_ps[s1*ij2+s2*kk+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*ij2+s2*kk+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*ij2+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*ij2+s2*kk+s3*pr3+pp-1]);

      df += wt10*wz1*(wpr0*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*ij2+s2*(kk+1)+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp-1]+
                      wpr3*wpp0*df_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp-1]);

      df += wt11*wz0*(wpr0*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*(ij2+1)+s2*kk+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp-1]+
                      wpr3*wpp0*df_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp-1]);

      df += wt11*wz1*(wpr0*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
                      wpr0*wpp2*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp-1]+
                      wpr1*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
                      wpr1*wpp2*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
                      wpr2*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
                      wpr2*wpp2*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
                      wpr3*wpp0*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+1]+
                      wpr3*wpp2*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*df_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp-1]);

      // f, ij
      f += wt00*wz0*(wpr0*wpp0*f_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij+s2*kk+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*ij+s2*kk+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*ij+s2*kk+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*ij+s2*kk+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*ij+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*ij+s2*kk+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*ij+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*ij+s2*kk+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*ij+s2*kk+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*ij+s2*kk+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*ij+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*ij+s2*kk+s3*pr3+pp-1]);

      f += wt00*wz1*(wpr0*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*ij+s2*(kk+1)+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*ij+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*ij+s2*(kk+1)+s3*pr3+pp-1]);


      f += wt01*wz0*(wpr0*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*(ij+1)+s2*kk+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*(ij+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*(ij+1)+s2*kk+s3*pr3+pp-1]);
      
      f += wt01*wz1*(wpr0*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp-1]);
      
      // f,ij2                                                                                                             
      f += wt10*wz0*(wpr0*wpp0*f_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*ij2+s2*kk+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*ij2+s2*kk+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*ij2+s2*kk+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*ij2+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*ij2+s2*kk+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*ij2+s2*kk+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*ij2+s2*kk+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*ij2+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*ij2+s2*kk+s3*pr3+pp-1]);

      f += wt10*wz1*(wpr0*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*ij2+s2*(kk+1)+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp-1]);

      f += wt11*wz0*(wpr0*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*(ij2+1)+s2*kk+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp-1]);

      f += wt11*wz1*(wpr0*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
		     wpr0*wpp2*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp-1]+
		     wpr1*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
		     wpr1*wpp2*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
		     wpr2*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
		     wpr2*wpp2*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
		     wpr3*wpp0*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+1]+
		     wpr3*wpp2*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*f_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp-1]);
      
      //g, ij
      g += wt00*wz0*(wpr0*wpp0*g_ps[s1*ij+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij+s2*kk+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*ij+s2*kk+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*ij+s2*kk+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*ij+s2*kk+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*ij+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*ij+s2*kk+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*ij+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*ij+s2*kk+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*ij+s2*kk+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*ij+s2*kk+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*ij+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*ij+s2*kk+s3*pr3+pp-1]);

      g += wt00*wz1*(wpr0*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*ij+s2*(kk+1)+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*ij+s2*(kk+1)+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*ij+s2*(kk+1)+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*ij+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*ij+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*ij+s2*(kk+1)+s3*pr3+pp-1]);

      g += wt01*wz0*(wpr0*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*(ij+1)+s2*kk+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*(ij+1)+s2*kk+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*(ij+1)+s2*kk+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*(ij+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*(ij+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*(ij+1)+s2*kk+s3*pr3+pp-1]);

      g += wt01*wz1*(wpr0*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*(ij+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*(ij+1)+s2*(kk+1)+s3*pr3+pp-1]);

      // g,ij2
      g += wt10*wz0*(wpr0*wpp0*g_ps[s1*ij2+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij2+s2*kk+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*ij2+s2*kk+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*ij2+s2*kk+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*ij2+s2*kk+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*ij2+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*ij2+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*ij2+s2*kk+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*ij2+s2*kk+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*ij2+s2*kk+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*ij2+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*ij2+s2*kk+s3*pr3+pp-1]);

      g += wt10*wz1*(wpr0*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*ij2+s2*(kk+1)+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*ij2+s2*(kk+1)+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*ij2+s2*(kk+1)+s3*pr3+pp-1]);


      g += wt11*wz0*(wpr0*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*(ij2+1)+s2*kk+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*(ij2+1)+s2*kk+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*(ij2+1)+s2*kk+s3*pr3+pp-1]);

      g += wt11*wz1*(wpr0*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp]+wpr0*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+1]+
                     wpr0*wpp2*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp+2]+wpr0*wpp3*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr+pp-1]+
                     wpr1*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp]+wpr1*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+1]+
                     wpr1*wpp2*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp+2]+wpr1*wpp3*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+1)+pp-1]+
                     wpr2*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp]+wpr2*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+1]+
                     wpr2*wpp2*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp+2]+wpr2*wpp3*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*(pr+2)+pp-1]+
                     wpr3*wpp0*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp]+wpr3*wpp1*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+1]+
                     wpr3*wpp2*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp+2]+wpr3*wpp3*g_ps[s1*(ij2+1)+s2*(kk+1)+s3*pr3+pp-1]);

      zion4m = (1.0-epsilon)*zion4m + epsilon*df/g;
      z4[m] = zion4m;
      z04[m] = zion4m;
      zion05m = (1.0-epsilon)*zion05m + epsilon*f/g;
      z05[m] = zion05m;
#if TWO_WEIGHTS
      z06[m] = zion05m;
#endif
      tot_w_tid += z4[m];
      tot_c_tid += z05[m];
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

#endif

  return 0;

}
