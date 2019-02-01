#include "bench_gtc.h"
#include <math.h>
#include <assert.h>

int diagnosis(gtc_bench_data_t *gtc_input) {
#if DIAGNOSIS  
  gtc_global_params_t *params;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_diagnosis_data_t *diagnosis_data;
 
  params = &(gtc_input->global_params);
  parallel_decomp = &(gtc_input->parallel_decomp);
  diagnosis_data = &(gtc_input->diagnosis_data);

  int numberpe = parallel_decomp->numberpe;
  int mype = parallel_decomp->mype;

  int mflux = params->mflux;
  real a0 = params->a0;
  real a1 = params->a1;
  real rw = params->rw;
  real rc = params->rc;
  int nbound = params->nbound;
  real kappati = params->kappati;
  real gyroradius = params->gyroradius;
  real qion = params->qion;
  real aion = params->aion;
  real aelectron = params->aelectron;
  real tite = params->tite;

  real eradial = (diagnosis_data->scalar_data)[11]; 

  int mstepall = params->mstepall; 
  int ndiag = params->ndiag;
  int mstep = params->mstep;

  //int efluxt_start = 10000;
  //int efluxt_start = 3000;

  real *scalar_data, *eflux, *rmarker;
  real r, rfac, kappa, vthi, vthe, tem_inv;
  real *xnormal = (real *) _mm_malloc(mflux*sizeof(real), IDEAL_ALIGNMENT);
  real *fdum = (real *) _mm_malloc((15+2*mflux)*sizeof(real), IDEAL_ALIGNMENT);
  real *adum = (real *) _mm_malloc((15+2*mflux)*sizeof(real), IDEAL_ALIGNMENT);
  assert(xnormal!=NULL);
  assert(fdum!=NULL);
  assert(adum!=NULL);
  //real fdum[21];
  //real adum[21];
  //for (int i=0; i<21; i++){
  for (int i=0; i<15+2*mflux; i++){
    fdum[i] = 0.0;
    adum[i] = 0.0;
  }
  
  scalar_data = diagnosis_data->scalar_data;
  eflux = diagnosis_data->eflux;
  rmarker = diagnosis_data->rmarker;

  if (mype==0){
      for (int i=0; i<mflux; i++){
        r = a0 + (a1-a0)*( (real)(i+1)-0.5 )/((real)mflux ); 
        rfac = rw*(r - rc);
#if PROFILE_SHAPE==0
	// exp(x^6)
        rfac = rfac*rfac;
        rfac = rfac*rfac*rfac;
        rfac = max(0.1, exp(-rfac));
#elif PROFILE_SHAPE==1
	// sech2(x)
	rfac = tanh(rfac)*tanh(rfac);
	rfac = 1.0 - rfac;
#endif
        kappa = 1.0;
        if (nbound==0) kappa = 0.0;
        kappa = 1.0 - kappa + kappa*rfac;
       
        xnormal[i] = 1.0/(kappa*kappati*gyroradius);
        if (istep==ndiag)
           printf("kappa_T at radial_bin %d is %e gyroradius=%e\n", i, kappa*kappati, gyroradius);
      }
  }
  
  //#if USE_MPI 
  //     MPI_Bcast(&mstepall, 1, MPI_INT, 0, MPI_COMM_WORLD);
  //     params->mstepall = mstepall;
  //#endif
   
  // global sum of fluxes
  /* all these quantities come from summing up contributions from the 
     particles, sothe MPI_Reduce involves all the MPI processes */
  vthi = gyroradius*fabs(qion)/aion;
  vthe = vthi*sqrt(aion/(aelectron*tite));
  tem_inv = 1.0/(aion*vthi*vthi);
  /*
  fdum[0] = diagnosis_data->efield;
  fdum[1] = diagnosis_data->entropyi;
  fdum[2] = diagnosis_data->entropye;
  fdum[3] = diagnosis_data->dflowi/vthi;
  fdum[4] = diagnosis_data->dflowe/vthe;
  fdum[5] = diagnosis_data->pfluxi/vthi; 
  fdum[6] = diagnosis_data->pfluxe/vthi;
  fdum[7] = diagnosis_data->efluxi*tem_inv/vthi;
  fdum[8] = diagnosis_data->efluxe*tem_inv/vthi;
  fdum[9] = diagnosis_data->particles_energy[0];     
  fdum[10] = diagnosis_data->particles_energy[1];
  fdum[11] = diagnosis_data->sum_of_weights;
  for (int i=0; i<mflux; i++){
    fdum[12+i] = (diagnosis_data->eflux[i])*tem_inv/vthi;
    fdum[12+mflux+i] = diagnosis_data->rmarker[i];
    }
  */
  fdum[0] = scalar_data[10];
  fdum[1] = scalar_data[8];
  fdum[2] = scalar_data[9];
  fdum[3] = scalar_data[6]/vthi;
  fdum[4] = scalar_data[7]/vthe;
  fdum[5] = scalar_data[2]/vthi;
  fdum[6] = scalar_data[3]/vthi;
  fdum[7] = scalar_data[0]*tem_inv/vthi;
  fdum[8] = scalar_data[1]*tem_inv/vthi;

  fdum[9] = scalar_data[12];
  fdum[10] = scalar_data[13];
  fdum[11] = scalar_data[15];
  fdum[12] = scalar_data[16];
  fdum[13] = scalar_data[17];
  fdum[14] = scalar_data[18];

  for (int i=0; i<mflux; i++){
    fdum[15+i] = eflux[i]*tem_inv/vthi;
    fdum[15+mflux+i] = rmarker[i];
  }

#if USE_MPI
  MPI_Reduce(fdum, adum, 13, MPI_MYREAL, MPI_SUM, 0, MPI_COMM_WORLD);
  MPI_Reduce(fdum+13, adum+13, 1, MPI_MYREAL, MPI_MAX, 0, MPI_COMM_WORLD);
  MPI_Reduce(fdum+14, adum+14, 1, MPI_MYREAL, MPI_MIN, 0, MPI_COMM_WORLD);
  MPI_Reduce(fdum+15, adum+15, 2*mflux, MPI_MYREAL, MPI_SUM, 0, MPI_COMM_WORLD);
#endif

  if (mype==0){
#if USE_MPI
    //    for (int i=0; i<21; i++){
    for (int i=0; i<15+2*mflux; i++){
      fdum[i] = adum[i];
    }
#endif

    // normalization
    real tmarker= 0.0;
    for (int i=0; i<mflux; i++){
      fdum[15+mflux+i] = max(1.0, fdum[15+mflux+i]);
      fdum[15+i] = fdum[15+i]*xnormal[i]/fdum[15+mflux+i];
      tmarker = tmarker + fdum[15+mflux+i];
    }

    fdum[0] = sqrt(fdum[0]/((real)numberpe));
    for (int i=1; i<9; i++){
        fdum[i] = fdum[i]/tmarker;
    }
    fdum[11] = fdum[11]/tmarker;
    fdum[12] = fdum[12]/tmarker;
    fdum[13] = fdum[13];
    fdum[14] = fdum[14];
  
    printf("istep+mstepall=%d efield=%e eradial=%e entropyi=%e, dflowi=%e, pfluxi=%e, efluxi=%e eflux[2]=%e rmarker[2]=%e particles_energy[0]=%e particles_energy[1]=%e, sum_of_weights=%e sum_of_f0=%e max_of_f0=%e min_of_f0=%e\n",
           istep+mstepall, fdum[0], eradial, fdum[1], fdum[3], fdum[5], fdum[7], fdum[15+mflux/2], fdum[15+mflux+mflux/2], fdum[9], fdum[10], fdum[11], fdum[12], fdum[13], fdum[14]);

    FILE *pFile;
    if (istep+mstepall==ndiag)
      pFile = fopen("diag_c.txt", "w");
    else
      pFile = fopen("diag_c.txt", "a");
    fprintf(pFile, "%d %e %e %e %e %e %e %e %e %e %e %e %e %e %e\n",  istep+mstepall, fdum[0], eradial, fdum[1], fdum[3], fdum[5], fdum[7], fdum[15+mflux/2], fdum[15+mflux+mflux/2], fdum[9], fdum[10], fdum[11], fdum[12], fdum[13], fdum[14]);
    fclose(pFile);

    //if (istep+mstepall>=efluxt_start)
    //  diagnosis_data->eflux_average += fdum[11+mflux/2];
    
    //if (istep==mstep&&mstep+mstepall>efluxt_start)
    //  printf("average flux from %d to %d is %e\n", efluxt_start, mstep, diagnosis_data->eflux_average/((mstep-efluxt_start)/ndiag)); 
    
  }

  _mm_free(xnormal);
  _mm_free(fdum);
  _mm_free(adum);
  
#endif

    return 0;
}
