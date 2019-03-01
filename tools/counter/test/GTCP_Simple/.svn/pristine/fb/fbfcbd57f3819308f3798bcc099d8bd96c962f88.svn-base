#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <omp.h>
#if USE_MPI
#include <mpi.h>
#endif
#include "bench_gtc.h"

int smooth(int iflag, gtc_bench_data_t *gtc_input) {
    gtc_global_params_t     *params;
    gtc_field_data_t        *field_data;
    gtc_particle_decomp_t   *parallel_decomp;
    gtc_diagnosis_data_t    *diagnosis_data;
    gtc_radial_decomp_t     *radial_decomp;
    
    int mpsi, mzeta, mthetamax, ntoroidal;
    int *igrid, *mtheta, *itran;
    real qion;
    real *densityi; real *zonali;
    real *phi; real *phi00; real *phip00;
    real a0, deltar;
    real gyroradius;
    real nonlinear;

    real *phitmp;

    real *wtp1, *wtp2;
    int *jtp1, *jtp2;

    real *recvl, *recvr;
    real *den00;

    int *recvl_index, *recvr_index;

    int nloc_over, ipsi_in, ipsi_out, igrid_in, ipsi_in1, ipsi_out1,
      ipsi_nover_in, ipsi_nover_out, ipsi_nover_in_radiald, ipsi_nover_out_radiald;
    int ipsi_nover_in1, ipsi_nover_out1, igrid_nover_in1, igrid_nover_out1,
      igrid_nover_start1, igrid_nover_end1, igrid_over_in1, igrid_over_out1,
      igrid_over_start1, igrid_over_end1;

#if USE_MPI
    real *sendr, *sendl;
    int icount, isource, idest, isendtag, irecvtag;
    MPI_Status istatus;
#endif
    int ismooth;

    /*******/
    params            = &(gtc_input->global_params);
    field_data        = &(gtc_input->field_data);
    parallel_decomp   = &(gtc_input->parallel_decomp);
    diagnosis_data    = &(gtc_input->diagnosis_data);
    radial_decomp     = &(gtc_input->radial_decomp);

    mzeta = params->mzeta; mpsi = params->mpsi;
    mthetamax = params->mthetamax;
    ntoroidal = parallel_decomp->ntoroidal;
    qion = params->qion;
    a0 = params->a0; deltar = params->deltar;
    gyroradius = params->gyroradius;
    nonlinear = params->nonlinear;

    igrid = field_data->igrid; mtheta = field_data->mtheta;
    densityi = field_data->densityi; phi = field_data->phi;
    itran = field_data->itran;
    phip00 = field_data->phip00;
    phitmp = field_data->phitmps;
    zonali = field_data->zonali;
    phi00  = field_data->phi00;
    den00  = field_data->den00;
    recvl = field_data->recvlf;
    recvr = field_data->recvrf;
#if USE_MPI
    sendr = field_data->sendrf;
    sendl = field_data->sendlf;
#endif
    wtp1 = field_data->wtp1;
    wtp2 = field_data->wtp2;
    jtp1 = field_data->jtp1;
    jtp2 = field_data->jtp2;

    recvl_index = field_data->recvl_index;
    recvr_index = field_data->recvr_index;

    nloc_over = radial_decomp->nloc_over;
    ipsi_in   = radial_decomp->ipsi_in;
    ipsi_out  = radial_decomp->ipsi_out;
    igrid_in  = radial_decomp->igrid_in;
    ipsi_nover_in = radial_decomp->ipsi_nover_in;
    ipsi_nover_out = radial_decomp->ipsi_nover_out;
    ipsi_nover_in_radiald = radial_decomp->ipsi_nover_in_radiald;
    ipsi_nover_out_radiald = radial_decomp->ipsi_nover_out_radiald;

    ipsi_in1 = ipsi_in;
    ipsi_out1 = ipsi_out;
    if (ipsi_in1==0) ipsi_in1=1;
    if (ipsi_out1==mpsi) ipsi_out1=mpsi-1;
    igrid_over_in1 = igrid[ipsi_in1];
    igrid_over_out1 = igrid[ipsi_out1] + mtheta[ipsi_out1];
    
    igrid_over_start1 = igrid_over_in1 - igrid_in;
    igrid_over_end1   = igrid_over_out1 - igrid_in;

    ipsi_nover_in1 = ipsi_nover_in_radiald;
    ipsi_nover_out1 = ipsi_nover_out_radiald;
    if (ipsi_nover_in1==0) ipsi_nover_in1 = 1;
    if (ipsi_nover_out1==mpsi) ipsi_nover_out1 = mpsi-1;
    igrid_nover_in1 = igrid[ipsi_nover_in1];
    igrid_nover_out1 = igrid[ipsi_nover_out1] + mtheta[ipsi_nover_out1];

    igrid_nover_start1 = igrid_nover_in1 - igrid_in;
    igrid_nover_end1 = igrid_nover_out1 - igrid_in;

    /********/

    real* phism = (real *) _mm_malloc(nloc_over*sizeof(real), IDEAL_ALIGNMENT);
    assert(phism != NULL);
   
#pragma omp parallel for
    for (int i=0; i<(mzeta+1)*nloc_over; i++) {
        phitmp[i] = 0.0;
    }

    if (iflag == 0) {

#pragma omp parallel for
        for (int i=0; i<nloc_over; i++) {
            for (int j=1; j<mzeta+1; j++) {
                phitmp[i*(mzeta+1)+j] = densityi[i*(mzeta+1)+j];
            }
        }
	
    } else if (iflag == 3) {
      
#pragma omp parallel for
      for (int i=0; i<nloc_over; i++) {
        for (int j=1; j<=mzeta; j++) {
          phitmp[i*(mzeta+1)+j] = phi[i*(mzeta+1)+j];
        }
      }
    
    } else {
    
        fprintf(stderr, "Error! Bad iflag argument\n");
        exit(1);
    
    }

    ismooth = 1;
    if (nonlinear<0.5) ismooth = 0;
    for (int ip=1; ip<ismooth+1; ip++){
      // radial smoothing
#pragma omp parallel for num_threads(NUM_THREADS)
      for (int i=ipsi_in1; i<ipsi_out1+1; i++){
          for (int k=0; k<mzeta+1; k++)
	    phitmp[(mzeta+1)*(igrid[i]-igrid_in)+k] = phitmp[(mzeta+1)*(igrid[i]+mtheta[i]-igrid_in)+k];
      }
      /*
      if (parallel_decomp->mype==0&&iflag==0) {
        char filename[50];
        sprintf(filename, "smooth_den_before0.txt");
        FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, phi=%e\n", j+igrid_in, phitmp[(mzeta+1)*j+1]);
        }
        fclose(fp);
      }
      if (parallel_decomp->mype==1&&iflag==0) {
        char filename[50];
        sprintf(filename, "smooth_den_before1.txt");
        FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, phi=%e\n", j+igrid_in, phitmp[(mzeta+1)*j+1]);
        }
        fclose(fp);
      }
      */
      for (int k=1; k<mzeta+1; k++){
#pragma omp parallel for
	for (int i=0; i<nloc_over; i++){
	  phism[i] = 0.0;
	}

#pragma omp parallel for
	//	for (int i=ipsi_in1; i<ipsi_out1+1; i++){
	//	  for (int j=1; j<mtheta[i]+1; j++){
	for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
	  //int ij = igrid[i]+j-igrid_in;
	  //            assert(ij>=0);
          //  assert(ij<nloc_over);

	    phism[ij] = 0.25*((1.0-wtp1[(k-1)*2*nloc_over+ij*2])*phitmp[(mzeta+1)*(jtp1[(k-1)*2*nloc_over+ij*2]-igrid_in)+k]+
                              wtp1[(k-1)*2*nloc_over+ij*2]*phitmp[(mzeta+1)*(jtp1[(k-1)*2*nloc_over+ij*2]+1-igrid_in)+k]+
                              (1.0-wtp1[(k-1)*2*nloc_over+ij*2+1])*phitmp[(mzeta+1)*(jtp1[(k-1)*2*nloc_over+ij*2+1]-igrid_in)+k]+
			  wtp1[(k-1)*2*nloc_over+ij*2+1]*phitmp[(mzeta+1)*(jtp1[(k-1)*2*nloc_over+ij*2+1]+1-igrid_in)+k])-
	      0.0625*((1.0-wtp2[(k-1)*2*nloc_over+ij*2])*phitmp[(mzeta+1)*(jtp2[(k-1)*2*nloc_over+ij*2]-igrid_in)+k]+
		      wtp2[(k-1)*2*nloc_over+ij*2]*phitmp[(mzeta+1)*(jtp2[(k-1)*2*nloc_over+ij*2]+1-igrid_in)+k]+
		      (1.0-wtp2[(k-1)*2*nloc_over+ij*2+1])*phitmp[(mzeta+1)*(jtp2[(k-1)*2*nloc_over+ij*2+1]-igrid_in)+k]+
		      wtp2[(k-1)*2*nloc_over+ij*2+1]*phitmp[(mzeta+1)*(jtp2[(k-1)*2*nloc_over+ij*2+1]+1-igrid_in)+k]);

	    //} 
	//phism[igrid[i]-igrid_in] = phism[igrid[i]+mtheta[i]-igrid_in];
	}

	//#pragma omp parallel for
	for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	  phism[igrid[i]-igrid_in] = phism[igrid[i]+mtheta[i]-igrid_in];
	}

#pragma omp parallel for
	//	for (int i=ipsi_in1; i<ipsi_out1+1; i++){
	//          for (int j=0; j<mtheta[i]+1; j++){
	//            int ij = igrid[i]+j-igrid_in;
	for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
	    phitmp[(mzeta+1)*ij+k] = 0.625*phitmp[(mzeta+1)*ij+k]+phism[ij];
	    phism[ij] = 0.0;
	    //  }
	}
      }

      /* fix ghost cells */
      //fix_radial_ghosts(gtc_input, phitmp, 1, 1);
      /*
      if (parallel_decomp->mype==0&&iflag==0) {
        char filename[50];
        sprintf(filename, "smooth_den_mid0.txt");
        FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, phi=%e\n", j+igrid_in, phitmp[(mzeta+1)*j+1]);
        }
        fclose(fp);
      }
      if (parallel_decomp->mype==1&&iflag==0) {
        char filename[50];
        sprintf(filename, "smooth_den_mid1.txt");
        FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, phi=%e\n", j+igrid_in, phitmp[(mzeta+1)*j+1]);
        }
        fclose(fp);
      }
      */

      /*
      // poloidal smoothing (-0.0625 0.25 0.625 0.25 -0.0625)
      for (int k=1;k<mzeta+1; k++){
#pragma omp parallel for num_threads(NUM_THREADS)
	//#pragma omp parallel for
	//	for (int i=ipsi_in1; i<ipsi_out1+1; i++){
	for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	  for (int j=0; j<mtheta[i]+1; j++){	    
	    int ij = igrid[i]+j-igrid_in;
	    phism[ij] = phitmp[(mzeta+1)*ij+k];
	  }
	  for (int j=1; j<mtheta[i]+1; j++){
	    int ij = igrid[i]+j-igrid_in;
	    if (ij==igrid[i]+1-igrid_in){
	      phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[igrid[i]+mtheta[i]-igrid_in]+phism[ij+1])- 0.0625*(phism[igrid[i]+mtheta[i]-1-igrid_in]+phism[ij+2]);
	    }
	    else if (ij==(igrid[i]+2-igrid_in)){
              phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[ij-1]+phism[ij+1])- 0.0625*(phism[igrid[i]+mtheta[i]-igrid_in]+phism[ij+2]);
	    }
	    else if (ij==(igrid[i]+mtheta[i]-igrid_in)){
	      phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[ij-1]+phism[igrid[i]+1-igrid_in])- 0.0625*(phism[ij-2]+phism[igrid[i]+2-igrid_in]);
	    }
	    else if (ij==(igrid[i]+mtheta[i]-1-igrid_in)){
	      phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[ij-1]+phism[ij+1])- 0.0625*(phism[ij-2]+phism[igrid[i]+1-igrid_in]);
	    }
	    else {
	      phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[ij-1]+phism[ij+1])- 0.0625*(phism[ij-2]+phism[ij+2]);
	    }
	  }
	}
      }
      */

      // poloidal smoothing (-0.0625 0.25 0.625 0.25 -0.0625)
      for (int k=1;k<mzeta+1; k++){
#pragma omp parallel 
{
#pragma omp for
  for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
    phism[ij] = phitmp[(mzeta+1)*ij+k];
  }
  
#pragma omp for
  for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
    phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[ij-1]+phism[ij+1])- 0.0625*(phism[ij-2]+phism[ij+2]);
  }
}
       for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	 int ij=igrid[i]+1-igrid_in;
	 phitmp[(mzeta+1)*ij+k] = 0.625*phism[ij]+0.25*(phism[igrid[i]+mtheta[i]-igrid_in]+phism[ij+1])- 0.0625*(phism[igrid[i]+mtheta[i]-1-igrid_in]+phism[ij+2]);
	 int ij1=igrid[i]+2-igrid_in;                                                       
	 phitmp[(mzeta+1)*ij1+k] = 0.625*phism[ij1]+0.25*(phism[ij1-1]+phism[ij1+1])- 0.0625*(phism[igrid[i]+mtheta[i]-igrid_in]+phism[ij1+2]);
	 int ij2=igrid[i]+mtheta[i]-igrid_in;
	 phitmp[(mzeta+1)*ij2+k] = 0.625*phism[ij2]+0.25*(phism[ij2-1]+phism[igrid[i]+1-igrid_in])-0.0625*(phism[ij2-2]+phism[igrid[i]+2-igrid_in]);
	 int ij3=igrid[i]+mtheta[i]-1-igrid_in;
	 phitmp[(mzeta+1)*ij3+k] = 0.625*phism[ij3]+0.25*(phism[ij3-1]+phism[ij3+1])- 0.0625*(phism[ij3-2]+phism[igrid[i]+1-igrid_in]); 
       }
      }
      
#if USE_MPI
      /* Send phi to right and receive from left */
#pragma omp parallel for
      //      for (int i=0; i<nloc_over; i++) {
      for (int i=igrid_nover_start1; i<igrid_nover_end1+1; i++){
        sendr[i] = phitmp[i*(mzeta+1)+mzeta];
        recvl[i] = 0.0;
      }
      //icount   = nloc_over;
      icount = igrid_nover_end1-igrid_nover_start1+1;
      idest    = parallel_decomp->right_pe;
      isource  = parallel_decomp->left_pe;
      isendtag = parallel_decomp->myrank_toroidal;
      irecvtag = isource;
      MPI_Sendrecv(sendr+igrid_nover_start1, icount, MPI_MYREAL, idest, isendtag, recvl+igrid_nover_start1, icount,
		   MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm, 
		   &istatus);
      
      /* send phi to left and receive from right */
#pragma omp parallel for
      //      for (int i=0; i<nloc_over; i++) {
      for (int i=igrid_nover_start1; i<igrid_nover_end1+1; i++){
	sendl[i] = phitmp[i*(mzeta+1)+1];
	recvr[i] = 0.0;
      }
      idest = parallel_decomp->left_pe;
      isource = parallel_decomp->right_pe;
      isendtag = parallel_decomp->myrank_toroidal;
      irecvtag = isource;
      MPI_Sendrecv(sendl+igrid_nover_start1, icount, MPI_MYREAL, idest, isendtag, recvr+igrid_nover_start1, icount,
		   MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm,
		   &istatus);
#else

#pragma omp parallel for
      //      for (int i=0; i<nloc_over; i++) {
      for (int i=igrid_nover_start1; i<igrid_nover_end1+1; i++){
        recvl[i] = phitmp[i*(mzeta+1)+mzeta];
	recvr[i] = phitmp[i*(mzeta+1)+1];
      }
#endif

#pragma omp parallel for
      for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
	if (mzeta == 1){
	  phitmp[(mzeta+1)*ij+1]= 0.5*phitmp[(mzeta+1)*ij+1]+0.25*(recvr[recvr_index[ij]]+recvl[recvl_index[ij]]); 
	} else {
	  printf("mzeta!=0 hasn't been implemented in field.c\n");
	}
      }

      
      /*
#pragma omp parallel num_threads(NUM_THREADS)
      //#pragma omp parallel
{      
      real *pleft;
      real *pright;
      pleft  = (real *) malloc(mthetamax*sizeof(real));
      pright = (real *) malloc(mthetamax*sizeof(real));

#pragma omp for 
      //      for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
      for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	int ii = igrid[i];
	int jt = mtheta[i];
	int iti = itran[i];
	if (parallel_decomp->myrank_toroidal == 0) { 
          // down-shift for zeta=0 
	  for (int j=1; j<jt+1; j++){
	    pright[j-1] = recvr[ii+j-igrid_in];
	  }
	  // cshift by -tran[i]
	  for (int j=ii+1; j<ii+iti+1; j++) {
	    pleft[j-ii-1] = recvl[j+jt-iti-igrid_in];
	  }
	  for (int j=ii+iti+1; j<ii+jt+1; j++) {
	    pleft[j-ii-1] = recvl[j-iti-igrid_in];
	  }
	
	}else if (parallel_decomp->myrank_toroidal == ntoroidal-1){
          // up-shift for zeta=2*pi
	  for (int j=1; j<jt+1; j++){
	    pleft[j-1] = recvl[ii+j-igrid_in];
	  }
	  // cshift by tran[i]
	  for (int j=ii+1; j<ii+jt-iti+1; j++) {
	    pright[j-ii-1] = recvr[j+iti-igrid_in];
	  }
	  for (int j=ii+jt-iti+1; j<ii+jt+1; j++) {
	    pright[j-ii-1] = recvr[j+iti-jt-igrid_in];
	  }
	}else {
	  for (int j=1; j<jt+1; j++)
	    {
	      pleft[j-1] = recvl[ii+j-igrid_in];
	      pright[j-1] = recvr[ii+j-igrid_in];
	    }
	}	  
	if (mzeta==1){
	  for (int j=1; j<jt+1; j++){
	    phitmp[(mzeta+1)*(ii+j-igrid_in)+1]= 0.5*phitmp[(mzeta+1)*(ii+j-igrid_in)+1]+
	      0.25*(pleft[j-1]+pright[j-1]);
	  } 
	}else{
	  printf("mzeta!=0 hasn't been implemented in smooth.c\n");
	  exit (1);
	}
      }
      free(pleft);
      free(pright);        
 }
      */


 //real start = MPI_Wtime();
 fix_radial_ghosts(gtc_input, phitmp, 1, 1); 
 //real end = MPI_Wtime()-start;
 //if (parallel_decomp->mype<8)
 //  printf("mype=%d fix_radial_ghosts=%e\n", parallel_decomp->mype, end);

    } // end ismooth
    
//toroidal BC:send phi to right and receive from left	
#if USE_MPI
#pragma omp parallel for
    for (int i=0; i<nloc_over; i++) {
      sendr[i] = phitmp[i*(mzeta+1)+mzeta];
      recvl[i] = 0.0;
    }
    icount   = nloc_over;
    idest    = parallel_decomp->right_pe;
    isource  = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendr, icount, MPI_MYREAL, idest, isendtag, recvl, icount,
		 MPI_MYREAL, isource, irecvtag, parallel_decomp->toroidal_comm,
		 &istatus);
#else
#pragma omp parallel for
    for (int i=0; i<nloc_over; i++) {
      recvl[i] = phitmp[i*(mzeta+1)+mzeta];
    }
#endif
    
#pragma omp parallel for
    for (int ij=igrid_over_start1; ij<igrid_over_end1+1; ij++){
      phitmp[(mzeta+1)*ij] = recvl[recvl_index[ij]];
    }
    
    /*
#pragma omp parallel for num_threads(NUM_THREADS)
    //#pragma omp parallel for
    for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
      int ii = igrid[i];
      int jt = mtheta[i];
      int iti = itran[i];
      if (parallel_decomp->myrank_toroidal == 0) {
	// cshift by -tran[i]
	for (int j=ii+1-igrid_in; j<ii+iti+1-igrid_in; j++) {
	  phism[j] = recvl[j+jt-iti];
	  assert((j+jt-iti)==recvl_index[j]);
	}
	for (int j=ii+iti+1-igrid_in; j<ii+jt+1-igrid_in; j++) {
	  phism[j] = recvl[j-iti];
	  assert((j-iti)==recvl_index[j]);
	}

	for (int j=1-igrid_in; j<jt+1-igrid_in; j++){
	  phitmp[(mzeta+1)*(ii+j)] = phism[ii+j];
	}
      }	else{
	for (int j=1-igrid_in; j<jt+1-igrid_in; j++){
	  phitmp[(mzeta+1)*(ii+j)] = recvl[ii+j];
	  assert((ii+j)==recvl_index[ii+j]);
	}
      }
    }
    */

    /* Poloidal BC */
    for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
      for (int j=0; j<mzeta+1; j++) {
	phitmp[(igrid[i]-igrid_in)*(mzeta+1)+j] =
	  phitmp[(igrid[i]+mtheta[i]-igrid_in)*(mzeta+1)+j];
      }
    }	

    /* Radial boundary */
    if (ipsi_in==0) {
      for (int i=igrid[0]; i<igrid[0]+mtheta[0]+1; i++) {
        for (int j=0; j<mzeta+1; j++) {
          phitmp[(i-igrid_in)*(mzeta+1)+j] = 0.0;
        }   
      }
    }
    
    if (ipsi_out==mpsi) {
      for (int i=igrid[mpsi]; i<igrid[mpsi]+mtheta[mpsi]+1; i++) {
        for (int j=0; j<mzeta+1; j++) {
          phitmp[(i-igrid_in)*(mzeta+1)+j] = 0.0;
        }   
      }
    }

    if (iflag == 0) {
      
#pragma omp parallel for
      for (int i=0; i<nloc_over*(mzeta+1); i++) {
	densityi[i] = phitmp[i];
      }
      /*
      if (parallel_decomp->mype==0) {
	char filename[50];
	sprintf(filename, "smooth_den0.txt");
	FILE *fp;
	fp = fopen(filename, "w");
	for (int j=0; j<nloc_over; j++){
	  fprintf(fp, "j=%d, den=%e\n", j+igrid_in, densityi[(mzeta+1)*j+1]);
	}
	fclose(fp);
      }
      if (parallel_decomp->mype==1) {
        char filename[50];
        sprintf(filename, "smooth_den1.txt");
        FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, den=%e\n", j+igrid_in, densityi[(mzeta+1)*j+1]);
        }
        fclose(fp);
      }
      */
      //MPI_Barrier(MPI_COMM_WORLD);
      //MPI_Abort(MPI_COMM_WORLD, 1);
      
    } else if (iflag == 3) {
      
#pragma omp parallel for 
      for (int i=0; i<nloc_over*(mzeta+1); i++) {
            phi[i] = phitmp[i];
      }
      /*
      if (parallel_decomp->mype==1) {
	char filename[50];
        sprintf(filename, "smooth_phi.txt");
	FILE *fp;
        fp = fopen(filename, "w");
        for (int j=0; j<nloc_over; j++){
          fprintf(fp, "j=%d, den=%e\n", j+igrid_in, phi[(mzeta+1)*j+1]);
        }
	fclose(fp);
      }
      */
    } else {
      
      fprintf(stderr, "Error! Bad iflag argument\n");
      exit(1);
      
    }
    
    
    /* Solve zonal flow: trapezoidal rule */
    if (iflag == 3) {
      /* assuming nhybrid = 0; adiabatic electron */
      for (int i=0; i<mpsi+1; i++) {
	phip00[i] = qion*zonali[i];
      }

      /* ismooth = 1,1 */
      den00[0] = phip00[0];
      den00[mpsi] = phip00[mpsi];
      den00[1] = phip00[3];
      den00[mpsi-1] = phip00[mpsi-3];
   
      for (int i=2; i<mpsi-1; i++) {
	den00[i] = phip00[i-2] + phip00[i+2];
      }
      
      for (int i=1; i<mpsi; i++) {
	den00[i] = 0.625*phip00[i] +
	  0.25*(phip00[i-1]+phip00[i+1]) - 0.0625*den00[i];
      }
      
      for (int i=0; i<mpsi+1; i++) {
	phip00[i] = 0.0;
      }
      
      for (int i=1; i<mpsi+1; i++) {
	real r = a0 + deltar * ((real) i);
	    phip00[i] = phip00[i-1] + 0.5*deltar*((r-deltar)*den00[i-1] 
						  + r*den00[i]);
      }
      
      /* d phi/dr, in equilibrium unit */
      for (int i=0; i<mpsi+1; i++) {
	real r = a0 + deltar * ((real) i);
	phip00[i] = -phip00[i]/r;
      }
      
      /* Add FLR contribution using Pade approximation */
      for (int i=0; i<mpsi+1; i++) {
	phi00[i] = den00[i]*gyroradius*gyroradius;
      }
      
      for (int i=1; i<mpsi; i++) {
	phip00[i] = phip00[i] + 0.5*(phi00[i+1]-phi00[i-1])/deltar;
      }
      	
	/* (0, 0) mode potential store in phi00 */
      for (int i=0; i<mpsi+1; i++) {
	phi00[i] = 0.0;
      }
      
      for (int i=1; i<mpsi+1; i++) {
	phi00[i] = phi00[i-1]+0.5*deltar*(phip00[i-1]+phip00[i]);
      }
      
      if (params->mode00 == 0) {
	for (int i=0; i<mpsi+1; i++) { 
	  phip00[i] = 0.0;
	}
      }
    }
    
    /* diagnostic */
    if (iflag==3&&idiag==0){
      for (int i=0; i<18; i++){
        (diagnosis_data->scalar_data)[i] = 0.0;
      }
      diagnosis_data->scalar_data[18] = 1.0;
      
      real sum_phip00=0.0;
      for (int i=1; i<mpsi+1; i++)
        sum_phip00 += phip00[i]*phip00[i];
      
      // shear flow amplitude                                                                
      real eradial = sqrt(sum_phip00/((real) mpsi))/gyroradius;

      real efield=0.0;
      for (int i=ipsi_nover_in; i<ipsi_nover_out+1; i++){
        for (int j=1-igrid_in; j<mtheta[i]+1-igrid_in; j++){
          for (int k=1; k<mzeta+1; k++){
            efield += phi[(igrid[i]+j)*(mzeta+1)+k]*phi[(igrid[i]+j)*(mzeta+1)+k];
          }
        }
      }

      int sum_mtheta = 0;
      for (int i=0; i<mpsi+1; i++){
	sum_mtheta += mtheta[i];
      }

      real tmp1=0.0;
      MPI_Allreduce(&efield, &tmp1, 1, MPI_MYREAL, MPI_SUM, parallel_decomp->partd_comm);
      efield = tmp1;
      
      real energy_unit = gyroradius*gyroradius;
      real energy_unit_sq = energy_unit*energy_unit;
      efield = efield/( (real)(mzeta*sum_mtheta)*energy_unit_sq );
 
      (diagnosis_data->scalar_data)[10] = efield;
      (diagnosis_data->scalar_data)[11] = eradial;
    }
    
    _mm_free(phism);
    return 0;
}
