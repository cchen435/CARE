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
#include "RngStream.h"

int collision(gtc_bench_data_t *gtc_input){
  gtc_global_params_t     *params;
  gtc_particle_data_t     *particle_data;
  gtc_aux_particle_data_t     *aux_particle_data;
  gtc_particle_decomp_t   *parallel_decomp;
  gtc_particle_collision_t *particle_collision;

  int mi,mype,numberpe;
  int istep, ndiag;
  real q0, q1, q2;    
  real a, a1, a0, qion, aion, gyroradius, tauii;
  real tstep, pi;

  real* __restrict__ z0;
  real* __restrict__ z1;
  real* __restrict__ z2;
  real* __restrict__ z3;
  real* __restrict__ z4;
  real* __restrict__ z5;
  real* __restrict__ z00;
  real* __restrict__ z01;
  real* __restrict__ z02;
  real* __restrict__ z03;
  real* __restrict__ z04;
  real* __restrict__ z05;

  real *maxwell;

  int m, ip, jt, kz, k, icount;
  int neop, neot, neoz;
  real ainv, cmratio, psimin, psimax, delp, delt, delz;
  real vth, vths, vmin, v3, v5;
  //real *tmp, *tmp_loc;
  real *dele, *delm, *marker, *ddum; 
  real *dele_loc, *delm_loc, *marker_loc;
  int *mcell;

  RngStream rs;
  double *rng_seed;
  int num_threads;

#pragma omp parallel
  {
#ifdef _OPENMP
#pragma omp master
    num_threads = omp_get_num_threads();
#else
    num_threads = 1;
#endif
#pragma omp barrier
  }

  params            = &(gtc_input->global_params);
  particle_data     = &(gtc_input->particle_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  parallel_decomp   = &(gtc_input->parallel_decomp);
  particle_collision = &(gtc_input->particle_collision);

  mype       = parallel_decomp->mype;
  numberpe   = parallel_decomp->numberpe;

  mi    = params->mi;
  pi = params->pi;
  a1 = params->a1; a0 = params->a0; a = params->a;
  qion = params->qion; aion = params->aion;
  gyroradius = params->gyroradius;
  q0 = params->q0; q1 = params->q1; q2 = params->q2;
  ndiag = params->ndiag;
  istep = params->istep;
  tstep = params->tstep;
  tauii = params->tauii;

  z0 = particle_data->z0; z1 = particle_data->z1; 
  z2 = particle_data->z2; z3 = particle_data->z3;
  z4 = particle_data->z4; z5 = particle_data->z5;

  z00 = particle_data->z00; z01 = particle_data->z01; 
  z02 = particle_data->z02; z03 = particle_data->z03;
  z04 = particle_data->z04; z05 = particle_data->z05;

  maxwell = particle_collision->maxwell;
  dele = particle_collision->dele;
  delm = particle_collision->delm;
  marker = particle_collision->marker;
  ddum = particle_collision->ddum;
  dele_loc = particle_collision->dele_loc;
  delm_loc = particle_collision->delm_loc;
  marker_loc = particle_collision->marker_loc;
  neop = particle_collision->neop;
  neot = particle_collision->neot;
  neoz = particle_collision->neoz;
  
  mcell = aux_particle_data->kzi;

  icount = neop*neot*neoz;
  ainv = 1.0/a;
  cmratio = qion/aion;
  psimin = 0.5 * a0 * a0;
  psimax = 0.5 * a1 * a1;
  delp = (real)neop/(psimax-psimin);
  delt = (real)neot/(2.0*pi);
  delz = (real)neoz/(2.0*pi);
  
  vth = 2.0*gyroradius*gyroradius;
  vths = 1.0/sqrt(vth);
  vmin = 1.0e-20*vth;
  v3 = 1.0e-10*vth*gyroradius;
  v5 = vth*v3;

  //tmp = (real *) malloc(4*icount*sizeof(real));
  //dele = tmp;
  //delm = tmp + icount;
  //marker = tmp + 2*icount;
  //ddum = tmp + 3*icount;

  for (int i=0; i<icount; i++){
    dele[i] = 0.0;
    delm[i]= 0.0;
    marker[i] = 0.0;
    ddum[i] = 0.0;
  }

  //tmp_loc = (real *) malloc(num_threads*3*icount*sizeof(real));
  //dele_loc = tmp_loc;
  //delm_loc = tmp_loc + num_threads*icount;
  //marker_loc = tmp_loc + 2*num_threads*icount;

#pragma omp parallel for
  for (int i=0; i<num_threads*icount; i++){
    dele_loc[i] = 0.0;
    delm_loc[i] = 0.0;
    marker_loc[i] = 0.0;
  }

  /* Initialize RNG */
  rng_seed = (double *) malloc(6 * sizeof(double));
  assert(rng_seed != NULL);
  rng_seed[0] = 12345; rng_seed[1] = 12345; rng_seed[2] = 12345;
  rng_seed[3] = 12345; rng_seed[4] = 12345; rng_seed[5] = 12345;

  RngStream_ParInit(mype, numberpe, 0, 1, 1, rng_seed);
  rs = RngStream_CreateStream("", rng_seed);

  // use zion03, zion04 to store random number
  for (m=0; m<mi; m++) {
    z03[m] = (real) RngStream_RandU01(rs);
    z04[m] = (real) RngStream_RandU01(rs);
  }

#pragma omp parallel
  {
    int m, ip, jt, kz, k, mcelli;
    real r, q, sint, cost, b;
    real v, zv, xv, freq, phix, dphi, f, g, h, sp, sn, dp, dn, dpn, delu, delv2;
    real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m, zion03m, zion04m;
    real upara, uperp2;

#ifdef _OPENMP
    int tid = omp_get_thread_num();
#else
    int tid = 0;
#endif

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
      zion03m = z03[m]; zion04m = z04[m];

#if SQRT_PRECOMPUTED
      r        = zion0m;
#else
      r        = sqrt(2.0*zion0m);
#endif

      q = q0 + q1*r*ainv + q2*r*r*ainv*ainv;
      sint = sin(zion1m);
      cost = cos(zion1m);
      b = 1.0/(1.0 + r * cost);

      // use cell in psi for near equal volume
      ip = max(0,min(neop-1, (int)((0.5*r*r-psimin)*delp)));
      // use cell in theta for near equal volume   
      jt = max(0,min(neot-1, (int)(zion1m*delt)));
      // use cell in global zeta address
      kz = max(0,min(neoz-1, (int)(zion2m*delz)));
      mcelli = kz*neop*neot + jt*neop + ip;

      // use z00 for v_para, z01 for v_perp^2 and z02 for b-field
      upara = zion3m*b*cmratio;
      uperp2 = 2.0*zion5m*zion5m*b;
            
      v = sqrt(max(vmin, upara*upara+uperp2));
      zv = max(0.1, min(10.0, v*vths));
      xv = zv*zv;
      
      freq = 1.88*(real)ndiag*tstep/(tauii*zv*xv);

      // maxwellian integral by table look-up for range of (0.0001, 10.0)
      k = min(100000, (int)(xv*10000.0)+1);
      phix = ((real)k-10000.0*xv)*maxwell[k-1] + (10000.0*xv-(real)(k-1))*maxwell[k];
      if (xv < 0.025) phix = 4.0/3.0*sqrt(xv/pi)*xv*(1.0-0.6*xv+3.0/14.0*xv*xv);
      if (xv > 10.0) phix = 1.0-2.0/exp(xv)*sqrt(xv/pi)*(1.0+1.0/(2.0*xv)-1.0/(4.0*xv*xv));
      dphi = 2.0*sqrt(xv/pi)/exp(xv);
      
      //coefficient for like-species collisons
      f = 2.0*phix;
      g = phix - 0.5*phix/xv + dphi;
      h = phix/xv;

      sp = upara*f;
      sn = uperp2*(2.0*f-h-g)-2.0*upara*upara*g;
      dp = max(v3, upara*upara*h + uperp2*g);
      dn = max(v5, 4.0*uperp2*v*v*v*v*g*h/dp);
      dpn = 2.0*uperp2*upara*(h-g);

      //if (parallel_decomp->mype==0&&m==9){
      //  printf("z0=%e upara=%e uperp2=%e b=%e freq=%e phix=%e dp=%e dn=%e dpn=%e\n", zion0m, upara, uperp2, b, freq, phix, dp, dn, dpn);
      //}

      delu = (zion03m-0.5)*sqrt(12.0*dp*freq)-sp*freq;
      delv2 = dpn*(zion03m-0.5)*sqrt(12.0/dp*freq)-sn*freq+(zion04m-0.5)*sqrt(12.0*dn*freq);

      if ((delu*delu+fabs(delv2))> vth) {
	delu = 0.0;
	delv2 = 0.0;
      }

      delm_loc[tid*icount + mcelli] += zion4m*delu;
      dele_loc[tid*icount + mcelli] += zion4m*(delv2+delu*(2.0*upara+delu));
      marker_loc[tid*icount + mcelli] += 1.0;

      upara = upara + delu;
      uperp2 = max(vmin, uperp2 + delv2);

      z00[m] = upara;
      z01[m] = uperp2;

      z3[m] = upara/b;
      z5[m] = sqrt(0.5*uperp2/b);
      mcell[m] = mcelli;
    }
  }
  
#pragma omp parallel for
  for (int i=0; i<icount; i++){
    real deletmp=0.0;
    real delmtmp=0.0;
    real markertmp=0.0;
    for (int j=0; j<num_threads; j++){
      deletmp += dele_loc[j*icount + i];
      delmtmp += delm_loc[j*icount + i];
      markertmp += marker_loc[j*icount + i];
    }
    dele[i] = deletmp;
    delm[i] = delmtmp;
    marker[i] = markertmp;
  }
  /*
  if (parallel_decomp->mype==0)
    printf("before reduce");
  for (int i=0; i<icount; i++){
    if (parallel_decomp->mype==0)
      printf("i=%d dele=%e delm=%e marker=%e\n", i, dele[i], delm[i], marker[i]);
  }
  */

  MPI_Allreduce(marker, ddum, icount, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  for (int i=0; i<icount; i++){
    marker[i] = max(1.0, ddum[i]);
    ddum[i] = 0.0;
  }
  MPI_Allreduce(delm, ddum, icount, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  for (int i=0; i<icount; i++){
    delm[i] = sqrt(4.5*pi)*2.0*ddum[i]/(vth*marker[i]);
    ddum[i] = 0.0;
  }
  MPI_Allreduce(dele, ddum, icount, MPI_MYREAL, MPI_SUM, MPI_COMM_WORLD);
  /*
  if (parallel_decomp->mype==0)
    printf("after reduce");
  for (int i=0; i<icount; i++){
    dele[i] = sqrt(4.5*pi)*ddum[i]/(1.5*vth*marker[i]);
    if (parallel_decomp->mype==0)
      printf("i=%d dele=%e delm=%e marker=%e\n", i, dele[i], delm[i], marker[i]); 
  }
  */

#pragma omp parallel for
  for (int m=0; m<mi; m++){
    real zion2m = z2[m];

    /* skip holes */
    if (zion2m == HOLEVAL) {
      continue;
    }

    real zion0m = z0[m]; real zion1m = z1[m];
    real zion3m = z3[m]; real zion4m = z4[m];
    //    real zion5m = z5[m];
    real zion00m = z00[m]; real zion01m = z01[m];
    int mcelli = mcell[m];

    real v = sqrt(max(vmin, zion00m*zion00m+zion01m));
    real zv = max(0.1, min(10.0, v*vths));
    real xv = zv*zv;

    // maxwellian integral by table look-up for range of (0.0001, 10.0)
    int k = min(100000, (int)(xv*10000.0)+1);
    real phix = ((real)k-10000.0*xv)*maxwell[k-1] + (10000.0*xv-(real)(k-1))*maxwell[k];
    if (xv < 0.025) phix = 4.0/3.0*sqrt(xv/pi)*xv*(1.0-0.6*xv+3.0/14.0*xv*xv);
    if (xv > 10.0) phix = 1.0-2.0/exp(xv)*sqrt(xv/pi)*(1.0+1.0/(2.0*xv)-1.0/(4.0*xv*xv));
    real dphi = 2.0*sqrt(xv/pi)/exp(xv);

    zion4m = zion4m - phix/(xv*zv)*zion00m*delm[mcelli]-(phix-dphi)/zv*dele[mcelli];

    //if (parallel_decomp->mype==0&&m==9){
    //  printf("zion3m=%e zion5m=%e\n", zion3m, zion5m);
    //}

    z4[m] = zion4m;
    // save zion for time integration
    z00[m] = zion0m;
    z01[m] = zion1m;
    z02[m] = zion2m;
    z03[m] = zion3m;
    z04[m] = zion4m;
  }

  RngStream_DeleteStream(rs);
  free(rng_seed);
  //free (tmp);
  //free (tmp_loc);

  //MPI_Barrier(MPI_COMM_WORLD);
  //MPI_Abort(MPI_COMM_WORLD, 1);

  return 0;
}
