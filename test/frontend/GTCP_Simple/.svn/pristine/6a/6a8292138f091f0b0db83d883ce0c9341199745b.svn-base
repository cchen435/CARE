#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <omp.h>
#if USE_MPI
#include <mpi.h>
#endif
#include "bench_gtc.h"

int field(gtc_bench_data_t *gtc_input) {

    gtc_global_params_t     *params;
    gtc_field_data_t        *field_data;
    gtc_particle_decomp_t   *parallel_decomp;
    gtc_radial_decomp_t     *radial_decomp;
    
    int mpsi, ntoroidal, mzeta, mthetamax;
    
    const int*  __restrict__ igrid;
    const int*  __restrict__ mtheta;
    const int*  __restrict__ itran;
    const real* __restrict__ phi; 
    const real* __restrict__ phip00;
    const real* __restrict__ wtp1;
    const int*  __restrict__ jtp1;
    const real* __restrict__ qtinv;
    const real* __restrict__ deltat;

    real a, a0, q0, q1, q2, deltar, deltaz;
    real* __restrict__ evector;

#if USE_MPI
    int icount, isource, idest, isendtag, irecvtag;
    MPI_Status istatus1, istatus2, istatus3;
#endif

    int nloc_over, ipsi_in, ipsi_out, ipsi_nover_in, ipsi_nover_out, igrid_in,
      ipsi_in1, ipsi_out1, ipsi_nover_in_radiald, ipsi_nover_out_radiald;

    int ipsi_nover_in1, ipsi_nover_out1, igrid_nover_in1, igrid_nover_out1,
      igrid_nover_start1, igrid_nover_end1;

    real *difft;
#if USE_MPI
    real *sendl, *sendr, *sendrs;
#endif
    real *recvr, *recvl, *recvls;
    real diffr, diffz;

    real *drdpa, *diffta;
    int *idx1a, *idx2a;
    int *recvl_index, *recvr_index;

    /*******/

    params            = &(gtc_input->global_params);
    field_data        = &(gtc_input->field_data);
    parallel_decomp   = &(gtc_input->parallel_decomp);
    radial_decomp     = &(gtc_input->radial_decomp);

    mthetamax = params->mthetamax;
    mzeta = params->mzeta; mpsi = params->mpsi;
    a0 = params->a0; deltar = params->deltar;
    a  = params->a;
    q0 = params->q0; q1 = params->q1; q2 = params->q2;
    deltat = field_data->deltat; deltaz = params->deltaz;

    evector = field_data->evector;
    igrid = field_data->igrid; mtheta = field_data->mtheta;
    phi = field_data->phi;
    itran = field_data->itran; qtinv = field_data->qtinv;
    ntoroidal = parallel_decomp->ntoroidal;
    phip00 = field_data->phip00;
    jtp1   = field_data->jtp1; 
    wtp1   = field_data->wtp1; 

    difft  = field_data->difft;
#if USE_MPI
    sendl  = field_data->sendlf;
    sendr  = field_data->sendrf;
    sendrs = field_data->sendrsf;
#endif
    recvr  = field_data->recvrf;
    recvl  = field_data->recvlf;
    recvls = field_data->recvlsf;

    drdpa = field_data->drdpa;
    diffta = field_data->diffta;
    idx1a = field_data->idx1a;
    idx2a = field_data->idx2a;
    recvl_index = field_data->recvl_index;
    recvr_index = field_data->recvr_index;

    nloc_over = radial_decomp->nloc_over;
    ipsi_in = radial_decomp->ipsi_in;
    ipsi_out = radial_decomp->ipsi_out;
    ipsi_nover_in = radial_decomp->ipsi_nover_in;
    ipsi_nover_out = radial_decomp->ipsi_nover_out;
    igrid_in = radial_decomp->igrid_in;
    ipsi_nover_in_radiald = radial_decomp->ipsi_nover_in_radiald;
    ipsi_nover_out_radiald = radial_decomp->ipsi_nover_out_radiald;

    ipsi_in1 = ipsi_in;
    ipsi_out1 = ipsi_out; 
    if (ipsi_in1==0) ipsi_in1=1;
    if (ipsi_out1==mpsi) ipsi_out1=mpsi-1;

    ipsi_nover_in1 = ipsi_nover_in_radiald;
    ipsi_nover_out1 = ipsi_nover_out_radiald;
    if (ipsi_nover_in1==0) ipsi_nover_in1=1;
    if (ipsi_nover_out1==mpsi) ipsi_nover_out1=mpsi-1;
    igrid_nover_in1 = igrid[ipsi_nover_in1];
    igrid_nover_out1 = igrid[ipsi_nover_out1] + mtheta[ipsi_nover_out1];
    igrid_nover_start1 = igrid_nover_in1 - igrid_in;
    igrid_nover_end1 = igrid_nover_out1 - igrid_in;
   
    /********/

    /* finite difference for e-field in equilibrium unit */
    diffr = 0.5/deltar;
    //#pragma omp parallel for
    //    for (int i=0; i<mpsi+1; i++) {
    //        difft[i] = 0.5/deltat[i];
    //    } 
    diffz = 0.5/deltaz;

#pragma omp parallel for
    for (int i=0; i<3*nloc_over*(mzeta+1); i++) {
        evector[i] = 0.0;
    }

    /* d_phi/d_psi */
    for (int k=1; k<mzeta+1; k++) {
      /*
#pragma omp parallel for num_threads(NUM_THREADS)
      //#pragma omp parallel for
      //      for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
      for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	real r = a0 + deltar*((real) i);
	real drdp = 1.0/r;
	for (int j=1; j<mtheta[i]+1; j++) {
	  int ij = igrid[i]+j-igrid_in;
	  
	  real wtp11_val = wtp1[2*nloc_over*(k-1)+2*ij+0];
	  real wtp12_val = wtp1[2*nloc_over*(k-1)+2*ij+1];
	  int jtp11_idx = jtp1[2*nloc_over*(k-1)+2*ij+0];
	  int jtp12_idx = jtp1[2*nloc_over*(k-1)+2*ij+1];
	  int jt = j+1-mtheta[i]*(j/mtheta[i]);
	  int idx1 = (mzeta+1)*(igrid[i]+jt-igrid_in)+k;
	  int idx2 = (mzeta+1)*(igrid[i]+j-1-igrid_in)+k;
	  evector[3*(mzeta+1)*ij+3*k]    
	    =  drdp*diffr*((1.0-wtp11_val)*phi[(jtp11_idx-igrid_in)*(mzeta+1)+k]
			   + wtp11_val*phi[(jtp11_idx+1-igrid_in)*(mzeta+1)+k]
			   - ((1.0-wtp12_val)*phi[(jtp12_idx-igrid_in)*(mzeta+1)+k] + 
			      + wtp12_val*phi[(jtp12_idx+1-igrid_in)*(mzeta+1)+k]));
	  
	  evector[3*(mzeta+1)*ij+3*k+1] =
	    difft[i]*(phi[idx1]-phi[idx2]);
	}
	evector[3*(mzeta+1)*(igrid[i]-igrid_in)+3*k] = evector[3*(mzeta+1)*(igrid[i]+mtheta[i]-igrid_in)+3*k];
      }
      */

#pragma omp parallel for
      for (int i=igrid_nover_in1; i<igrid_nover_out1+1; i++){
	int ij = i-igrid_in;
        //assert(ij>=0);
        //assert(ij<nloc_over);

	real wtp11_val = wtp1[2*nloc_over*(k-1)+2*ij+0];
	real wtp12_val = wtp1[2*nloc_over*(k-1)+2*ij+1];
	int jtp11_idx = jtp1[2*nloc_over*(k-1)+2*ij+0];
	int jtp12_idx = jtp1[2*nloc_over*(k-1)+2*ij+1];
	int idx1 = (mzeta+1)*idx1a[ij]+k;
	int idx2 = (mzeta+1)*idx2a[ij]+k;
	evector[3*(mzeta+1)*ij+3*k]
	  =  drdpa[ij]*diffr*((1.0-wtp11_val)*phi[(jtp11_idx-igrid_in)*(mzeta+1)+k]
			      + wtp11_val*phi[(jtp11_idx+1-igrid_in)*(mzeta+1)+k]  
			      - ((1.0-wtp12_val)*phi[(jtp12_idx-igrid_in)*(mzeta+1)+k] +
				 + wtp12_val*phi[(jtp12_idx+1-igrid_in)*(mzeta+1)+k]));
	evector[3*(mzeta+1)*ij+3*k+1] = diffta[ij]*(phi[idx1]-phi[idx2]);	
      }
      
      for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
	evector[3*(mzeta+1)*(igrid[i]-igrid_in)+3*k] = evector[3*(mzeta+1)*(igrid[i]+mtheta[i]-igrid_in)+3*k];
      }
    }

    /* fix ghost cells */
    //fix_radial_ghosts(gtc_input, evector, 1, 3);

    /* d_phi/d_theta */
    /*
#pragma omp parallel for num_threads(NUM_THREADS)
    //    for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
    for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
        for (int k=1; k<mzeta+1; k++) {
            for (int j=1; j<mtheta[i]+1; j++) {
                int ij = igrid[i]+j-igrid_in;
                int jt = j+1-mtheta[i]*(j/mtheta[i]);
                int idx1 = (mzeta+1)*(igrid[i]+jt-igrid_in)+k;
                int idx2 = (mzeta+1)*(igrid[i]+j-1-igrid_in)+k;
                evector[3*(mzeta+1)*ij+3*k+1] =
                    difft[i]*(phi[idx1]-phi[idx2]);
            }
        }
    }
    */

#if USE_MPI
    /* Send phi to right and receive from left */
    /* Send phi to left and receive from right */
#pragma omp parallel for 
    //    for (int i=0; i<nloc_over; i++) {
    for (int i=igrid_nover_start1; i<igrid_nover_end1+1; i++){
        sendr[i] = phi[i*(mzeta+1)+mzeta];
        recvl[i] = 0.0;
        sendl[i] = phi[i*(mzeta+1)+1];
        recvr[i] = 0.0;
    }
    
    //icount = nloc_over;
    icount = igrid_nover_end1-igrid_nover_start1+1;
    idest  = parallel_decomp->right_pe;
    isource = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
   
    MPI_Barrier(parallel_decomp->toroidal_comm);
    MPI_Sendrecv(sendr+igrid_nover_start1, icount, MPI_MYREAL, idest, isendtag, recvl+igrid_nover_start1, 
            icount, MPI_MYREAL, isource, irecvtag,
            parallel_decomp->toroidal_comm, &istatus1);


    //icount = nloc_over;
    idest  = parallel_decomp->left_pe;
    isource = parallel_decomp->right_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    MPI_Sendrecv(sendl+igrid_nover_start1, icount, MPI_MYREAL, idest, isendtag, recvr+igrid_nover_start1, 
            icount, MPI_MYREAL, isource, irecvtag,
            parallel_decomp->toroidal_comm, &istatus2);

#else
#pragma omp parallel for
    //    for (int i=0; i<nloc_over; i++) {
    for (int i=igrid_nover_start1; i<igrid_nover_end1+1; i++){
        recvl[i] = phi[i*(mzeta+1)+mzeta];
        recvr[i] = phi[i*(mzeta+1)+1];
    }
#endif

#pragma omp parallel for
    for (int ij=igrid_nover_start1; ij<igrid_nover_end1+1; ij++){
      if (mzeta == 1){
	evector[3*(mzeta+1)*ij+3*1+2] = (recvr[recvr_index[ij]]-recvl[recvl_index[ij]])*diffz;
      } else {
	printf("mzeta!=0 hasn't been implemented in field.c\n");
      }
    }

    /* Unpack phi_boundary and calculate E_zeta at boundaries, mzeta=1 */
    /*
#pragma omp parallel num_threads(NUM_THREADS)
    //#pragma omp parallel
{
    real *pleft;
    real *pright;
    pleft  = (real *) malloc(mthetamax*sizeof(real));
    pright = (real *) malloc(mthetamax*sizeof(real));

#pragma omp for
    //    for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
    for (int i=ipsi_nover_in1; i<ipsi_nover_out1+1; i++){
        int ii = igrid[i];
        int jt = mtheta[i];
        int iti = itran[i];
        if (parallel_decomp->myrank_toroidal == 0) {
            // down-shift for zeta=0
            for (int j=1; j<jt+1; j++) {
                pright[j-1] = recvr[ii+j-igrid_in]; 
            }

            for (int j=ii+1; j<ii+iti+1; j++) {
                pleft[j-ii-1] = recvl[j+jt-iti-igrid_in];
            }
            for (int j=ii+iti+1; j<ii+jt+1; j++) {
                pleft[j-ii-1] = recvl[j-iti-igrid_in];
            }

            
        } else if (parallel_decomp->myrank_toroidal == (ntoroidal - 1)) {
            // up-shift for zeta=2*pi
            for (int j=1; j<jt+1; j++) {
                pleft[j-1]  = recvl[ii+j-igrid_in];
            }

            for (int j=ii+1; j<ii+jt-iti+1; j++) {
                pright[j-ii-1] = recvr[j+iti-igrid_in];
            }
            for (int j=ii+jt-iti+1; j<ii+jt+1; j++) {
                pright[j-ii-1] = recvr[j+iti-jt-igrid_in];
            }


        } else {
            for (int j=1; j<jt+1; j++) {
                pleft[j-1] = recvl[ii+j-igrid_in];
                pright[j-1] = recvr[ii+j-igrid_in];
            }
        }


        for (int j=1; j<mtheta[i]+1; j++) {
            int ij = igrid[i] + j - igrid_in;
            if (mzeta == 1) {
                evector[3*(mzeta+1)*ij+3*1+2] =
                    (pright[j-1]-pleft[j-1])*diffz;
            } else if (mzeta == 2) {
                evector[3*(mzeta+1)*ij+3*1+2] = 
                    (phi[ij*(mzeta+1)+2]-pleft[j-1])*diffz;
                evector[3*(mzeta+1)*ij+3*2+2] = 
                    (pright[j-1]-phi[ij*(mzeta+1)+1])*diffz;
            } else {
                evector[3*(mzeta+1)*ij+3*1+2] = 
                    (phi[ij*(mzeta+1)+2]-pleft[j-1])*diffz;
                evector[3*(mzeta+1)*ij+3*mzeta+2] = 
                    (pright[j-1]-phi[ij*(mzeta+1)+mzeta-1])*diffz;
                for (int k=2; k<mzeta; k++) {
                    evector[3*(mzeta+1)*ij+3*k+2] = 
                    (phi[ij*(mzeta+1)+k+1]-phi[ij*(mzeta+1)+k-1])*diffz;
                }
            }

        }

    }
   
    free(pleft); free(pright);
}
    */

 fix_radial_ghosts(gtc_input, evector, 1, 3);

    /* Adjust the difference between safety factor q and qtinv for
     * field-line coordinate */
#pragma omp parallel for num_threads(NUM_THREADS)
 //#pragma omp parallel for
 for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
        real r = a0 + deltar*((real) i);
        real q = q0 + q1*r/a + q2*r*r/(a*a);
        real delq = (1.0/q-qtinv[i]);
    
        for (int j=1; j<mtheta[i]+1; j++) {
            int ij = igrid[i]+j-igrid_in;
            for (int k=0; k<mzeta+1; k++) {
                evector[3*(mzeta+1)*ij+3*k+2] +=
                    delq*evector[3*(mzeta+1)*ij+3*k+1];
            }
        }
    }
    


    /* Add (0,0) mode, d phi/d psi */
    if (params->mode00 == 1) {
#pragma omp parallel for num_threads(NUM_THREADS)
        for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
            real r = a0 + deltar*((real) i);
            int ii = igrid[i]-igrid_in;
            int jt = mtheta[i];
            for (int j=ii+1; j<ii+jt+1; j++) {
              for (int k=1; k<mzeta+1; k++) {
                evector[3*(mzeta+1)*j+3*k+0] += phip00[i]/r;
              }
            }

        }
    }

#if USE_MPI
#pragma omp parallel for
    for (int i=0; i<nloc_over; i++) {
        sendrs[3*i+0] = evector[3*(mzeta+1)*i+3*mzeta+0];
        sendrs[3*i+1] = evector[3*(mzeta+1)*i+3*mzeta+1];
        sendrs[3*i+2] = evector[3*(mzeta+1)*i+3*mzeta+2];
        recvls[3*i+0] = 0.0;
        recvls[3*i+1] = 0.0;
        recvls[3*i+2] = 0.0;
    } 

    icount = 3*nloc_over;
    idest  = parallel_decomp->right_pe;
    isource = parallel_decomp->left_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;

    MPI_Sendrecv(sendrs, icount, MPI_MYREAL, idest, isendtag, 
            recvls, icount, MPI_MYREAL, isource, irecvtag,
            parallel_decomp->toroidal_comm, &istatus3);

#else

#pragma omp parallel for
    for (int i=0; i<nloc_over; i++) {
        recvls[3*i+0] = evector[3*(mzeta+1)*i+3*mzeta+0];
        recvls[3*i+1] = evector[3*(mzeta+1)*i+3*mzeta+1];
        recvls[3*i+2] = evector[3*(mzeta+1)*i+3*mzeta+2];
    }

#endif

    /* Unpack end point data for k=0 */
    if (parallel_decomp->myrank_toroidal == 0) {
#pragma omp parallel for num_threads(NUM_THREADS)
        for (int i=ipsi_in1; i<ipsi_out1+1; i++) {
            int ii = igrid[i]-igrid_in;
            int jt = mtheta[i];
            int iti = itran[i];
            for (int j=ii+1; j<ii+iti+1; j++) {
                evector[3*j*(mzeta+1)+0] = recvls[3*(j+jt-iti)+0];
                evector[3*j*(mzeta+1)+1] = recvls[3*(j+jt-iti)+1];
                evector[3*j*(mzeta+1)+2] = recvls[3*(j+jt-iti)+2];
            }
            for (int j=ii+iti+1; j<ii+jt+1; j++) {
                evector[3*j*(mzeta+1)+0] = recvls[3*(j-iti)+0];
                evector[3*j*(mzeta+1)+1] = recvls[3*(j-iti)+1];
                evector[3*j*(mzeta+1)+2] = recvls[3*(j-iti)+2];
            }
        }

    } else {
#pragma omp parallel for
        for (int i=0; i<nloc_over; i++) {
            evector[3*(mzeta+1)*i+0] = recvls[3*i+0];
            evector[3*(mzeta+1)*i+1] = recvls[3*i+1];
            evector[3*(mzeta+1)*i+2] = recvls[3*i+2];
        }
    }

    /* Poloidal end point */
#pragma omp parallel for num_threads(NUM_THREADS)
    for (int i=ipsi_in; i<ipsi_out+1; i++) {
        int ii = igrid[i];
        int jt = mtheta[i];
        for (int j=0; j<mzeta+1; j++) {
            evector[3*(ii-igrid_in)*(mzeta+1)+3*j+0] =
                evector[3*(ii+jt-igrid_in)*(mzeta+1)+3*j+0];
            evector[3*(ii-igrid_in)*(mzeta+1)+3*j+1] =
                evector[3*(ii+jt-igrid_in)*(mzeta+1)+3*j+1];
            evector[3*(ii-igrid_in)*(mzeta+1)+3*j+2] =
                evector[3*(ii+jt-igrid_in)*(mzeta+1)+3*j+2];
        }
    }

    return 0;
}
