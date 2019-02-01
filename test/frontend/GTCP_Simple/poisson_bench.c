#include <assert.h>
#include <math.h>
#include "bench_gtc.h"

int poisson_initial(gtc_bench_data_t *gtc_input, int mring, int mindex, int *nindex, int *indexp, real *ring) {

    gtc_global_params_t     *params;
    gtc_field_data_t        *field_data;
    gtc_particle_decomp_t   *parallel_decomp;
    gtc_radial_decomp_t     *radial_decomp;

    int mpsi, mzeta;
    int *igrid, *mtheta;
    real *delt;
    real *pgyro, *tgyro;

    real pi, pi2_inv, a0, a1, *qtinv, delr, 
         deltar, *deltat, deltaz;
    double vring[3], fring[3];

    int i, j, k;
    real tdum1, zdum, zetamin;
    int max_nindex, min_nindex, sum_nindex;

    int nloc_over, ipsi_in, ipsi_out, igrid_in;
    /*******/

    params            = &(gtc_input->global_params);
    field_data        = &(gtc_input->field_data);
    parallel_decomp   = &(gtc_input->parallel_decomp);
    radial_decomp     = &(gtc_input->radial_decomp);

    mzeta = params->mzeta; mpsi = params->mpsi;
    a0 = params->a0; deltar = params->deltar;
    a1 = params->a1;
    deltat = field_data->deltat; deltaz = params->deltaz;
    pi = params->pi;
    zetamin = params->zetamin;
    delt = field_data->delt;

    igrid = field_data->igrid; mtheta = field_data->mtheta;
    qtinv = field_data->qtinv;
    pgyro  = field_data->pgyro; tgyro = field_data->tgyro;

    nloc_over = radial_decomp->nloc_over;
    ipsi_in   = radial_decomp->ipsi_in;
    ipsi_out  = radial_decomp->ipsi_out;
    igrid_in  = radial_decomp->igrid_in;

    /********/

    if (mring == 1) {
        fprintf(stderr, "Error! mring=1 not implemented\n");
        exit(1);
    } else if (mring == 2) {
        vring[0] = 0.9129713024553;
        vring[1] = 2.233935334042;
        fring[0] = 0.7193896325719;
        fring[1] = 0.2806103674281;

    } else {
        fprintf(stderr, "Error! mring=%d not implemented\n", mring);
        exit(1);
    }

    pi2_inv = 0.5/pi;
    delr = 1.0/deltar;

#pragma omp parallel for private(i) 
    for (i=0; i<nloc_over*mzeta; i++) {
        nindex[i] = 0;
    }

#pragma omp parallel for private(i)
    for (i=0; i<mindex*nloc_over*mzeta; i++) {
        ring[i] = 0.0;
        indexp[i] = 0;
    }

    for (k=1; k<mzeta+1; k++) {
        zdum = zetamin+deltaz*((real)k);

#pragma omp parallel private(i,j)
{
    
        int jttmp, jt, kr, kp, np, nt, ij0, ipjt, ii, j1, j0, ij;
        real rgrid, tgrid, b, ddelr, ddelt, wght, r, t, rdum, wr, tdum, wt1,
             wt0, rr;
        wght = 0.0;

#pragma omp for
        for (i=ipsi_in; i<ipsi_out+1; i++) {
            for (j=1; j<mtheta[i]+1; j++) {
                ij0 = igrid[i]+j-igrid_in;

		assert(ij0>=0);
		assert(ij0<nloc_over);
                /* 1st point is the original grid point */
                nindex[(k-1)*nloc_over+ij0] = 1;
                indexp[(k-1)*mindex*nloc_over+ij0*mindex+0] = ij0;
                ring[(k-1)*mindex*nloc_over+ij0*mindex+0]= 0.25;

                /* position of grid points */
                rgrid = a0+deltar*((real) i);
                tgrid = deltat[i]*((real) j) + zdum*qtinv[i];
                tgrid *= pi2_inv;
                tgrid = 2.0*pi*(tgrid-((int)tgrid));
    
                jttmp    = (int) (pi2_inv*delt[i]*tgrid+0.5); 
                jt       = abs_min_int(mtheta[i], jttmp);

                /* B-field */
                b = 1.0/(1.0+rgrid*cos(tgrid));
                ipjt = igrid[i]+jt-igrid_in;

		assert(ipjt>=0);
		assert(ipjt<nloc_over);
		
                /* FLR from grid point and weight of 8-point for each ring */
                for (kr=1; kr<mring+1; kr++) {
                    for (kp=1; kp<9; kp++) {

                        if (kp < 5) {
                            ddelr = pgyro[4*ipjt+kp-1];
                            ddelt = tgyro[4*ipjt+kp-1];
                            wght  = 0.0625*fring[kr-1];
                        } else if (kp == 5) {
                            ddelr = 0.5*(pgyro[4*ipjt+0]+pgyro[4*ipjt+2]);
                            ddelt = 0.5*(tgyro[4*ipjt+0]+tgyro[4*ipjt+2]);
                            wght   = 0.125*fring[kr-1];
                        } else if (kp == 6) {
                            ddelr = 0.5*(pgyro[4*ipjt+1]+pgyro[4*ipjt+2]);
                            ddelt = 0.5*(tgyro[4*ipjt+1]+tgyro[4*ipjt+2]);
                        } else if (kp == 7) {
                            ddelr = 0.5*(pgyro[4*ipjt+1]+pgyro[4*ipjt+3]);
                            ddelt = 0.5*(tgyro[4*ipjt+1]+tgyro[4*ipjt+3]);
                        } else if (kp == 8) {
                            ddelr = 0.5*(pgyro[4*ipjt+0]+pgyro[4*ipjt+3]);
                            ddelt = 0.5*(tgyro[4*ipjt+0]+tgyro[4*ipjt+3]);
                        }

                        /* position for each point with rho_i=2.0*vring */
                        r = rgrid + ddelr*2.0*vring[kr-1]*sqrt(0.5/b);
                        t = tgrid + ddelt*2.0*vring[kr-1]*sqrt(0.5/b);

                        /* linear interpolation */
                        rdum = delr*abs_min_real(a1-a0, r-a0);
                        //ii = max(ipsi_in, min(ipsi_out-1, (int) rdum));
			ii = max(0, min(mpsi-1, (int) rdum));
                        wr = rdum - ((real) ii);
                        if (wr > 0.95)
                            wr = 1.0;
                        if (wr < 0.05)
                            wr = 0.0;

                        /* outer flux surface */
                        tdum = t-zdum*qtinv[ii+1];
                        tdum = tdum*pi2_inv+10.0;
                        tdum = delt[ii+1]*(tdum-((int)tdum));
                        j1 = abs_min_int(mtheta[ii+1]-1, ((int) tdum));
                        wt1 = tdum - ((real) j1);
                        if (wt1 > 0.95)
                            wt1 = 1.0;
                        if (wt1 < 0.05)
                            wt1 = 0.0;

                        /* inner flux surface */
                        tdum = t - zdum*qtinv[ii];
                        tdum = tdum*pi2_inv+10.0;
                        tdum = delt[ii]*(tdum - ((int)tdum));
                        j0   = abs_min_int(mtheta[ii]-1, ((int) tdum));
                        wt0  = tdum - ((real) j0);
                        if (wt0 > 0.95)
                            wt0 = 1.0;
                        if (wt0 < 0.05)
                            wt0 = 0.0;

                        /* index and weight of each point */
                        for (np=1; np<5; np++) {

                            if (np == 1) {
                                ij = igrid[ii+1]+j1+1-igrid_in;
                                rr = wght*wr*wt1;
                            } else if (np == 2) {
                                if (j1 == 0)
                                    j1 = mtheta[ii+1];
                                ij = igrid[ii+1]+j1-igrid_in;
                                rr = wght*wr*(1.0-wt1);
                            } else if (np == 3) {
                                ij = igrid[ii]+j0+1-igrid_in;
                                rr = wght*(1.0-wr)*wt0;
                            } else {
                                if (j0 == 0)
                                    j0 = mtheta[ii];
                                ij = igrid[ii]+j0-igrid_in;
                                rr = wght*(1.0-wr)*(1.0-wt0);
                            }

                            /* insignificant point replaced by the 
                                original grid point */
                            if (rr < 0.001) {
                                ring[(k-1)*mindex*nloc_over + ij0*mindex + 0] += rr;
                                goto contloop;
                            }

                            /* redundant point */
                            for (nt = 1; nt<nindex[(k-1)*nloc_over+ij0]+1; nt++) {
                                if (ij == indexp[(k-1)*mindex*nloc_over+ij0*mindex+nt-1]) {
                                    ring[(k-1)*mindex*nloc_over + ij0*mindex + nt-1] += rr;
                                    goto contloop;
                                }
                            }
  
                            /* new point */
                            nindex[(k-1)*nloc_over+ij0] += 1;
                            nt = nindex[(k-1)*nloc_over+ij0];
                            indexp[(k-1)*mindex*nloc_over+ij0*mindex+nt-1] = ij;
                            ring[(k-1)*mindex*nloc_over+ij0*mindex+nt-1] = rr;

                            /* continue */
contloop:
                            continue;
                        }
                    }
                }

            }

        }

}

    }

    
    tdum1 = 0.0;
    zdum = 1.0;
    max_nindex = -1;
    min_nindex = 23232323;
    sum_nindex = 0;

    for (k=0; k<mzeta; k++) {
      for (i=0; i<nloc_over; i++) {
            real rdum = 0.0;
            for (j=0; j<nindex[k*nloc_over+i]; j++) {
	      rdum  += ring[k*mindex*nloc_over+i*mindex+j];
            }    
            if (rdum > tdum1)
	      tdum1 = rdum;
            if (rdum < zdum)
	      zdum = rdum;
      }
    }
    for (i=0; i<mzeta*nloc_over; i++) {
       sum_nindex += nindex[i];
       if (nindex[i] > max_nindex)
           max_nindex = nindex[i];
       if (nindex[i] < min_nindex)
           min_nindex = nindex[i];
    }
    if (parallel_decomp->mype == 0) {
        fprintf(stderr, "poisson solver: %d %d %f %f %d %d\n", 
                max_nindex, min_nindex, tdum1, zdum, nloc_over, sum_nindex);
    }
    

    /* _mm_free(delt); */
    return 0; 
}

int poisson(int iflag, gtc_bench_data_t *gtc_input) {

    gtc_global_params_t     *params;
    gtc_field_data_t        *field_data;
    gtc_radial_decomp_t     *radial_decomp;
    gtc_particle_decomp_t   *parallel_decomp;

    int mpsi, mzeta;
    const int* __restrict__ igrid;
    const int* __restrict__ mtheta;
    real qion;

    const real* __restrict__ densityi;
    const real* __restrict__ rtemi;
    real* __restrict__ phi;
    real aion;
    real gyroradius;
    const int* __restrict__ nindex;
    const int* __restrict__ indexp;
    const real* __restrict__ ring;
    real* __restrict__ phitmp;

    real qion_gyro_aioninv;

    int it, iteration, mring, mindex;
    real gamma, tite, tmp;

    int nloc_over, ipsi_in, ipsi_out, igrid_in;
    
    real* __restrict__ ptilde;
    real* __restrict__ dentmp;

    /*******/
    params            = &(gtc_input->global_params);
    field_data        = &(gtc_input->field_data);
    radial_decomp     = &(gtc_input->radial_decomp);
    parallel_decomp   = &(gtc_input->parallel_decomp);

    mzeta = params->mzeta; mpsi = params->mpsi;
    qion = params->qion;
    aion = params->aion;
    gyroradius = params->gyroradius;

    ptilde = field_data->ptilde;
    phitmp = field_data->phitmp;
    dentmp = field_data->dentmp;

    igrid = field_data->igrid; mtheta = field_data->mtheta;
    densityi = field_data->densityi; phi = field_data->phi;
    rtemi  = field_data->rtemi;

    nloc_over = radial_decomp->nloc_over;
    ipsi_in   = radial_decomp->ipsi_in;
    ipsi_out  = radial_decomp->ipsi_out;
    igrid_in  = radial_decomp->igrid_in;

    int igrid_nover_in = radial_decomp->igrid_nover_in;
    int igrid_nover_out = radial_decomp->igrid_nover_out;

    int nloc_nover_in = igrid_nover_in-igrid_in;
    int nloc_nover_out = igrid_nover_out-igrid_in;
    /********/

    /* number of gyro-ring */
    mring = 2;

    /* number of summation: maximum is 32*mring+1 */
    mindex = 32*mring + 1;
    
    /* gamma=0.75: max resolution for k=0.577 */
    gamma = 0.75;
    iteration = 5;
    
    /* initialize Poisson solver */
    if ((istep == 1) && (irk == 1) && (iflag == 0)) {
        poisson_initial(gtc_input, mring, mindex, field_data->nindex, field_data->indexp, field_data->ring);
    }

    indexp = field_data->indexp; nindex = field_data->nindex;
    ring = field_data->ring;


    tite = 1.0;

    tmp = 1.0/(tite+1.0-gamma);

    qion_gyro_aioninv = pow(qion*gyroradius, 2)/aion;

    for (int k=1; k<mzeta+1; k++) {

#pragma omp parallel for
        for (int i=0; i<nloc_over; i++) {
            real denval  = qion*densityi[i*(mzeta+1)+k];
            dentmp[i] = denval;
            phitmp[i] = denval*tmp;
        }

        for (it=2; it<iteration+1; it++) {
	  
#pragma omp parallel for
            for (int i=nloc_nover_in; i<nloc_nover_out+1; i++) {
	      ptilde[i] = 0.0;
	      int nindex_val = nindex[(k-1)*nloc_over+i]+1;
	      for (int j=1; j<nindex_val; j++) {
		int indexp_idx = (k-1)*mindex*nloc_over+i*mindex+j-1;
		int indexp_val = indexp[indexp_idx];
		assert(indexp_val>=0);
		assert(indexp_val<nloc_over);
		  ptilde[i] += ring[indexp_idx] *
		    phitmp[indexp_val];
	      }
            }

#pragma omp parallel for 
            for (int i=nloc_nover_in;i<nloc_nover_out+1; i++) {
                real perr_i = ptilde[i] - gamma*phitmp[i];
                phitmp[i] = (dentmp[i]+perr_i)*tmp;
            }

            /* radial boundary */
            if (ipsi_in==0) {
              for (int i=igrid[0]; i<igrid[0]+mtheta[0]+1; i++) {
                phitmp[i-igrid_in] = 0.0;
              }
            }
            if (ipsi_out==mpsi){
              for (int i=igrid[mpsi]; i<igrid[mpsi]+mtheta[mpsi]+1; i++) {
                phitmp[i-igrid_in] = 0.0;
              }
            }
	    
	    /* fix ghost cells */
	    fix_radial_ghosts(gtc_input, phitmp, 0, 1);
	    /*
    if (parallel_decomp->mype==0) {
      char filename[50];
      sprintf(filename, "poisson_phi_mid0.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
	fprintf(fp, "j=%d, phi=%14.13e\n", j+igrid_in, phitmp[j]);
      }
      fclose(fp);
    }
    else if (parallel_decomp->mype==1){
      char filename[50];
      sprintf(filename, "poisson_phi_mid1.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
	fprintf(fp, "j=%d, phi=%14.13e\n", j+igrid_in, phitmp[j]);
      }
      fclose(fp);
    }
    MPI_Barrier(MPI_COMM_WORLD);
    MPI_Abort(MPI_COMM_WORLD, 1);
	    
	    */
        } // iteration end

        /* store final result */
#pragma omp parallel for 
        for (int i=0; i<nloc_over; i++) {
            phi[i*(mzeta+1)+k] = phitmp[i];
        }

	// debug 
	/*
	#pragma omp parallel for
	for (int i=nloc_nover_in; i<nloc_nover_out+1; i++) {
	  ptilde[i] = 0.0;
	  int nindex_val = nindex[(k-1)*nloc_over+i]+1;
	  for (int j=1; j<nindex_val; j++) {
	    int indexp_idx = (k-1)*mindex*nloc_over+i*mindex+j-1;
	    int indexp_val = indexp[indexp_idx];
	    assert(indexp_val>=0);
	    assert(indexp_val<nloc_over);
	    ptilde[i] += ring[indexp_idx] *
	      phitmp[indexp_val];
	  }
	}
	
        real max_err = 0.0;
	for (int i=nloc_nover_in; i<nloc_nover_out+1; i++){
	  real perr_i = (1.0+tite)*phitmp[i]-ptilde[i]-dentmp[i];
	  perr_i = sqrt(perr_i*perr_i);
	  if (perr_i>max_err)
	    max_err = perr_i;
	}
	
	printf("mype=%d, max_err=%e\n", parallel_decomp->mype, max_err);
	*/
    }

    /* in equilibrium unit */
#pragma omp parallel for
    for (int i=ipsi_in; i<ipsi_out+1; i++) {
        for (int j=igrid[i]+1; j<igrid[i]+mtheta[i]+1; j++) {
            for (int l=1; l<mzeta+1; l++) {
                phi[(j-igrid_in)*(mzeta+1)+l] 
                    *= rtemi[i]*qion_gyro_aioninv;
            }
        }
	
        /* poloidal BC */
        for (int k=1; k<mzeta+1; k++) {
            phi[(igrid[i]-igrid_in)*(mzeta+1)+k] 
                = phi[(igrid[i]+mtheta[i]-igrid_in)*(mzeta+1)+k];
        }
    }
    /*
    if (parallel_decomp->mype==0) {
      char filename[50];
      sprintf(filename, "poisson_phi.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
	fprintf(fp, "j=%d, phi=%e\n", j+igrid_in, phi[(mzeta+1)*j+1]);
      }
      fclose(fp);
    }
    MPI_Barrier(MPI_COMM_WORLD);
    */
    /*
    if (parallel_decomp->mype==1){
      char filename[50];
      sprintf(filename, "poisson_phi_after.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
        fprintf(fp, "j=%d, phi=%14.13e\n", j+igrid_in, phi[j*(mzeta+1)+1]);
      }
      fclose(fp);
    }
    MPI_Barrier(MPI_COMM_WORLD);
    MPI_Abort(MPI_COMM_WORLD, 1);
    */

    return 0;
}

