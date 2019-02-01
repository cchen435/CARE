#include <math.h>
#include <assert.h>
#ifdef _OPENMP
#include <omp.h>
#endif
#include "bench_gtc.h"
#if defined(__bgq__)
#include <stdio.h>
#endif

inline int abs_min_int(int arg1, int arg2) {
    
    int minval, retval;
    
    minval = (arg1 < arg2) ? arg1 : arg2;
    retval = (minval > 0) ? minval : 0;
    return retval;
}

inline real abs_min_real(real arg1, real arg2) {
    
    real minval, retval;
    
    minval = (arg1 < arg2) ? arg1 : arg2;
    retval = (minval > 0) ? minval : 0;
    return retval;
}


int chargei(gtc_bench_data_t *gtc_input) {

    gtc_global_params_t     *params;
    gtc_field_data_t        *field_data;
    gtc_particle_data_t     *particle_data;
    gtc_aux_particle_data_t *aux_particle_data;
    gtc_particle_decomp_t   *parallel_decomp;
    gtc_radial_decomp_t *radial_decomp;
    
    int mpsi, mzeta;
    int nloc_over, ipsi_in, ipsi_out, ipsi_nover_in, ipsi_nover_out, igrid_in,
      ipsi_valid_in, ipsi_valid_out; 
    int mi;
    int ntoroidal;
    int nbound;
    real delr, deltar, delz, zetamin, rho_max;
    real pi, pi2_inv, pi_inv, smu_inv;
    real a1, a0;

    const int*  __restrict__ igrid;
    const int*  __restrict__ mtheta;
    const real* __restrict__ delt;
    const real* __restrict__ qtinv;

    const real* __restrict__ z0;
    const real* __restrict__ z1;
    const real* __restrict__ z2;
    const real* __restrict__ z4;
    const real* __restrict__ z5;

#if !ONTHEFLY_PUSHAUX
    int* __restrict__ jtion0;
    int* __restrict__ jtion1;
    real* __restrict__ wtion0;
    real* __restrict__ wtion1;
    real* __restrict__ wpion;
    real* __restrict__ wzion;
#endif
#if !ASSUME_MZETA_EQUALS1
    int* __restrict__ kzion;
#endif
    
    const real* __restrict__ pgyro;
    const real* __restrict__ tgyro;
    const int*  __restrict__ itran;

    wreal *densityi;
    wreal *densityi_local;

    wreal *recvr; real *zonali; real *markeri; real *pmarki;
    int *recvr_index;
  
    real a_diff;
    int mpsi_max;

#if GYRO_LOCAL_COMPUTE
    real gyrorad_const_mult;
    real q0, q1, q2, rc, rw;
#endif

#if USE_MPI
    real *adum, *adum2;
    wreal *sendl, *dnitmp;
    int icount, idest, isource, isendtag, irecvtag; 
    MPI_Status istatus;
#endif

    /*******/

    params            = &(gtc_input->global_params);
    field_data        = &(gtc_input->field_data);
    particle_data     = &(gtc_input->particle_data);
    aux_particle_data = &(gtc_input->aux_particle_data);
    parallel_decomp   = &(gtc_input->parallel_decomp);
    radial_decomp     = &(gtc_input->radial_decomp);

    mzeta = params->mzeta; mpsi = params->mpsi;
    mi    = params->mi;
    pi = params->pi;
    zetamin = params->zetamin;
    nbound = params->nbound;
    a1 = params->a1; a0 = params->a0;
    
    delr = params->delr; delz = params->delz;
    
#if GYRO_LOCAL_COMPUTE
    q0 = params->q0; q1 = params->q1; q2 = params->q2;
    rc = params->rc; rw = params->rw;
    gyrorad_const_mult = 102.0 * 
        sqrt((params->aion) * params->temperature)/(fabs(params->qion)*params->b0)/params->r0;
#endif
    smu_inv = params->smu_inv;

    z0 = particle_data->z0; z1 = particle_data->z1; 
    z2 = particle_data->z2;
    z4 = particle_data->z4; z5 = particle_data->z5;

#if !ONTHEFLY_PUSHAUX
    jtion0 = aux_particle_data->jtion0; 
    jtion1 = aux_particle_data->jtion1;
    wtion0 = aux_particle_data->wtion0;
    wtion1 = aux_particle_data->wtion1;
    wpion  = aux_particle_data->wpion;
    wzion  = aux_particle_data->wzion;
#endif
    
#if !ASSUME_MZETA_EQUALS1
    kzion  = aux_particle_data->kzion;
#endif

    densityi = field_data->densityi;
    densityi_local = field_data->densityi_local;
    pgyro = field_data->pgyro; tgyro = field_data->tgyro;
    igrid = field_data->igrid; delt = field_data->delt;
    qtinv = field_data->qtinv; mtheta = field_data->mtheta;
    itran = field_data->itran; 
    recvr = field_data->recvr; 
    recvr_index = field_data->recvr_index;

#if USE_MPI
    sendl = field_data->sendl;
    dnitmp = field_data->dnitmp;
#endif

    zonali = field_data->zonali; markeri = field_data->markeri;
    pmarki = field_data->pmarki; 

    ntoroidal = parallel_decomp->ntoroidal;

    nloc_over = radial_decomp->nloc_over;
    ipsi_in   = radial_decomp->ipsi_in;
    ipsi_out  = radial_decomp->ipsi_out;
    ipsi_valid_in = radial_decomp->ipsi_valid_in;
    ipsi_valid_out = radial_decomp->ipsi_valid_out;
    ipsi_nover_in = radial_decomp->ipsi_nover_in;
    ipsi_nover_out = radial_decomp->ipsi_nover_out;
    igrid_in  = radial_decomp->igrid_in;
    rho_max = radial_decomp->rho_max;

    pi_inv = 1.0/pi;
    pi2_inv = 0.5*pi_inv;

    /********/

    a_diff   = a1-a0;
    mpsi_max = mpsi-1;
    deltar   = a_diff/mpsi;
    pi = 4.0 * atan(1.0);

#pragma omp parallel
{

    int i, j, m;
    real  psitmp, thetatmp, zetatmp, weight, rhoi, r;
    int iptmp, ip, jttmp, jt, ipjt;
    real wzt;
    int kk;
    real wz1, wz0, r_diff;
    int larmor;
    real rdum, rhotmp;
    int idx1, ii;
    real wp1, wp0, tflr;
    int im, im2;
    real tdumtmp, tdumtmp2, tdum, tdum2;
    int j00, j01, jtion0tmp, jtion1tmp;
    real wtion0tmp, wtion1tmp;
    int ij1, ij2;
    real wt00, wt01, wt10, wt11;

    wreal* densityi_part;
    int tid;
    int nthreads;
#if GYRO_LOCAL_COMPUTE
    real tdum_lc, rad_lc, q_lc, rho_lc, dtheta_dx;
    real radcos_lc, rad_frac_lc;
    real pgyro_lc[4], tgyro_lc[4];

    pgyro_lc[0] = pgyro_lc[1] = pgyro_lc[2] = pgyro_lc[3] = 0.0;
    tgyro_lc[0] = tgyro_lc[1] = tgyro_lc[2] = tgyro_lc[3] = 0.0;
#endif

#if SIMD_CODE
#if defined(__x86_64__)
    __m128d d1v, d2v, d3v, d4v;
    __m128d incr1v, incr2v, incr3v, incr4v;
    __m128d res1v, res2v, res3v, res4v;
#endif

#if defined(__bgq__)
    vector4double d1v, d2v, d3v, d4v;
    vector4double incr1v, incr2v, incr3v, incr4v;
    vector4double res1v, res2v, res3v, res4v;
#endif

#else
    wreal d1, d2, d3, d4, d5, d6, d7, d8;
#endif
 
#ifdef _OPENMP
    tid = omp_get_thread_num();
    nthreads = omp_get_num_threads();
#else
    tid = 0;
    nthreads = 1;
#endif

    densityi_part = densityi_local + tid*(mzeta+1)*nloc_over;

    for (i=0; i<(mzeta+1)*nloc_over; i++) {
        densityi_part[i] = 0.0; 
    }

#pragma omp for schedule(static)
    for (i=0; i<(mzeta+1)*nloc_over; i++) {
        densityi[i] = 0.0; 
    }

#pragma omp barrier

#pragma omp for
    for (m = 0; m < mi; m++) {

        real wpiont[4] __attribute__ ((aligned (16)));
        real wtion0t[4] __attribute__ ((aligned (16)));
        real wtion1t[4] __attribute__ ((aligned (16)));
        int jtion0t[4] __attribute__ ((aligned (16)));
        int jtion1t[4] __attribute__ ((aligned (16)));

        psitmp   = z0[m];
        thetatmp = z1[m]; 
        zetatmp  = z2[m];
        weight   = z4[m];
        rhoi     = z5[m]*smu_inv;

        if (zetatmp == HOLEVAL) {
            continue;
        }


#if SQRT_PRECOMPUTED
        r        = psitmp; 
#else
        r        = sqrt(2.0*psitmp);
#endif

        iptmp    = (int) ((r-a0)*delr+0.5);
        ip       = abs_min_int(mpsi, iptmp);
	
	assert(ip>=ipsi_valid_in);
        assert(ip<=ipsi_valid_out);

        jttmp    = (int) (thetatmp*pi2_inv*delt[ip]+0.5); 
        jt       = abs_min_int(mtheta[ip], jttmp);

        ipjt     = igrid[ip]+jt;
        wzt      = (zetatmp-zetamin)*delz;
        kk       = abs_min_int(mzeta-1, (int) wzt);

#if !ASSUME_MZETA_EQUALS1
        kzion[m] = kk;
        wzion[m] = wzt - (real) kk;
#endif

#if !ONTHEFLY_PUSHAUX
#endif
        wz1      = weight * (wzt - (real) kk);
        wz0      = weight - wz1;
        r_diff   = r-a0;

#if GYRO_LOCAL_COMPUTE
        rad_lc = a0 + deltar * ip;
       
        dtheta_dx = 1.0/rad_lc;
        
        tdum_lc = (2 * pi * jt)/mtheta[ip];

        rad_frac_lc = rad_lc/params->a;

        q_lc = q0 + q1 * rad_frac_lc  + q2 * rad_frac_lc * rad_frac_lc;
       
        radcos_lc = 1.0 + rad_lc * cos(tdum_lc);
        
        pgyro_lc[2] = pgyro_lc[3] = radcos_lc * gyrorad_const_mult * gyrorad_const_mult * dtheta_dx;

        rho_lc = sqrt(2.0 * radcos_lc) * gyrorad_const_mult;

        pgyro_lc[0] = -rho_lc;
        pgyro_lc[1] =  rho_lc;

        tgyro_lc[2] = -rho_lc * dtheta_dx;
        tgyro_lc[3] =  -tgyro_lc[2];
#endif

        for (larmor = 0; larmor < 4; larmor++) {
#if GYRO_LOCAL_COMPUTE
	  rhotmp = rhoi*pgyro_lc[larmor];
	  if (fabs(rhotmp)>rho_max) {
	    printf("warning: reducing rhoi to %e from %e\n", (rhotmp/fabs(rhotmp))*rho_max/pgyro_lc[larmor], rhoi);
	    rhotmp = (rhotmp/fabs(rhotmp))*rho_max;
	    rhoi = rhotmp/pgyro_lc[larmor];
	  }
	  rdum = delr * abs_min_real(a_diff, 
				     r_diff+rhotmp);
#else
	  idx1    = larmor + 4*(ipjt-igrid_in);
          rhotmp = rhoi*pgyro[idx1];
	  if (fabs(rhotmp)>rho_max) {
            printf("warning: reducing rhoi to %e from %e\n", (rhotmp/fabs(rhotmp))*rho_max/pgyro[idx1], rhotmp);
            rhotmp = (rhotmp/fabs(rhotmp))*rho_max;
	    rhoi = rhotmp/pgyro[idx1];
          }
          rdum = delr * abs_min_real(a_diff,
                                     r_diff+rhotmp);
#endif
	  
            /* ii      = abs_min_int(mpsi_max,
             * _mm_cvttsd_si32(_mm_load_sd(&rdum))); */
            ii      = abs_min_int(mpsi_max, (int) rdum);
	    //if (ii<ipsi_in||ii>ipsi_out-1){
	    //printf("ipsi_in=%d ipsi_out=%d ii=%d rhotmp=%e rho_max=%e larmor=%d\n", ipsi_in, ipsi_out, ii,
	    //	     rhotmp, rho_max, larmor);
	      assert(ii>=ipsi_in);
	      assert(ii<=ipsi_out-1);
	      //}            
            wp1     = rdum - (real) ii;
            wp0     = 1.0  - wp1;

            /* Particle position in theta */
#if GYRO_LOCAL_COMPUTE
            tflr    = thetatmp + rhoi*tgyro_lc[larmor];
#else
            tflr    = thetatmp + rhoi*tgyro[idx1];
#endif
            /* Inner flux surface */
            /* Outer flux surface */
            
            im      = ii;
            im2     = ii + 1;
            
            tdumtmp = pi2_inv * (tflr - zetatmp * qtinv[im]) + 10.0;
            tdumtmp2 = pi2_inv * (tflr - zetatmp * qtinv[im2]) + 10.0;
            
            tdum = (tdumtmp - (int) tdumtmp) * delt[im];
            tdum2 = (tdumtmp2 - (int) tdumtmp2) * delt[im2];
            
            j00 = abs_min_int(mtheta[im]-1, (int) tdum);
            j01 = abs_min_int(mtheta[im2]-1, (int) tdum2);
            
            jtion0tmp = igrid[im] + j00;
            jtion1tmp = igrid[im2] + j01;
            
            wtion0tmp = tdum - (real) j00;
            wtion1tmp = tdum2 - (real) j01;

#if DO_CHARGE_UPDATES 

            wt10 = wp0 * wtion0tmp;
            wt00 = wp0 - wt10;

            wt11 = wp1 * wtion1tmp;
            wt01 = wp1 - wt11;

            ij1 = kk + (mzeta+1)*(jtion0tmp-igrid_in);
            ij2 = kk + (mzeta+1)*(jtion1tmp-igrid_in);

#if SIMD_CODE
#if defined(__x86_64__)
            d1v    = _mm_load_pd(densityi_part+ij1);
            d2v    = _mm_load_pd(densityi_part+ij1+mzeta+1);
            d3v    = _mm_load_pd(densityi_part+ij2);
            d4v    = _mm_load_pd(densityi_part+ij2+mzeta+1);

            incr1v = _mm_set_pd(wz1*wt00, wz0*wt00);
            incr2v = _mm_set_pd(wz1*wt10, wz0*wt10);
            incr3v = _mm_set_pd(wz1*wt01, wz0*wt01);
            incr4v = _mm_set_pd(wz1*wt11, wz0*wt11);

            res1v  = _mm_add_pd(d1v, incr1v);
            res2v  = _mm_add_pd(d2v, incr2v);
            res3v  = _mm_add_pd(d3v, incr3v);
            res4v  = _mm_add_pd(d4v, incr4v);

            _mm_store_pd(densityi_part+ij1, res1v);
            _mm_store_pd(densityi_part+ij1+mzeta+1, res2v);
            _mm_store_pd(densityi_part+ij2, res3v);
            _mm_store_pd(densityi_part+ij2+mzeta+1, res4v);
#endif

#if defined(__bgq__)
	    d1v    = vec_ld2(0, densityi_part+ij1);
	    d2v    = vec_ld2(0, densityi_part+ij1+mzeta+1);
	    d3v    = vec_ld2(0, densityi_part+ij2);
	    d4v    = vec_ld2(0, densityi_part+ij2+mzeta+1);

	    incr1v = vec_insert(wz1*wt00, incr1v, 0);
	    incr1v = vec_insert(wz0*wt00, incr1v, 1);
	    incr2v = vec_insert(wz1*wt10, incr2v, 0);
            incr2v = vec_insert(wz0*wt10, incr2v, 1);
            incr3v = vec_insert(wz1*wt01, incr3v, 0);
            incr3v = vec_insert(wz0*wt01, incr3v, 1);
            incr4v = vec_insert(wz1*wt11, incr4v, 0);
            incr4v = vec_insert(wz0*wt11, incr4v, 1);

	    res1v = vec_add(d1v, incr1v);
	    res2v = vec_add(d2v, incr2v);
	    res3v = vec_add(d3v, incr3v);
	    res4v = vec_add(d4v, incr4v);
	    
	    vec_st2(res1v, 0, densityi_part+ij1);
	    vec_st2(res2v, 0, densityi_part+mzeta+1);
	    vec_st2(res3v, 0, densityi_part+ij2);
	    vec_st2(res4v, 0, densityi_part+ij2+mzeta+1);
#endif

#else
            d1 = densityi_part[ij1];
            d2 = densityi_part[ij1+1];
            d3 = densityi_part[ij1+mzeta+1];
            d4 = densityi_part[ij1+mzeta+2];

            d5 = densityi_part[ij2];
            d6 = densityi_part[ij2+1];
            d7 = densityi_part[ij2+mzeta+1];
            d8 = densityi_part[ij2+mzeta+2];

            d1 += wz0*wt00;
            d2 += wz1*wt00;
            d3 += wz0*wt10;
            d4 += wz1*wt10;

            d5 += wz0*wt01;
            d6 += wz1*wt01;
            d7 += wz0*wt11;
            d8 += wz1*wt11;

            densityi_part[ij1]   = d1;
            densityi_part[ij1+1] = d2;
            densityi_part[ij1+mzeta+1] = d3;
            densityi_part[ij1+mzeta+2] = d4;

            densityi_part[ij2]   = d5;
            densityi_part[ij2+1] = d6;
            densityi_part[ij2+mzeta+1] = d7;
            densityi_part[ij2+mzeta+2] = d8;
#endif

#endif

#if !ONTHEFLY_PUSHAUX
            wpiont[larmor] = wp1;
            jtion0t[larmor] = jtion0tmp;
            jtion1t[larmor] = jtion1tmp;
            wtion0t[larmor] = wtion0tmp;
            wtion1t[larmor] = wtion1tmp;
#endif

        }

#if !ONTHEFLY_PUSHAUX
	/*
#if SIMD_CODE
        int idx     = 4*m;
        __m128d wpiont0 = _mm_set_pd(wpiont[1], wpiont[0]);
        __m128d wpiont1 = _mm_set_pd(wpiont[3], wpiont[2]);

        __m128d wtion0t0 = _mm_set_pd(wtion0t[1], wtion0t[0]);
        __m128d wtion0t1 = _mm_set_pd(wtion0t[3], wtion0t[2]);

        __m128d wtion1t0 = _mm_set_pd(wtion1t[1], wtion1t[0]);
        __m128d wtion1t1 = _mm_set_pd(wtion1t[3], wtion1t[2]);

        _mm_stream_pd(wpion+idx+0, wpiont0);
        _mm_stream_pd(wpion+idx+2, wpiont1);

        _mm_stream_pd(wtion0+idx,   wtion0t0);
        _mm_stream_pd(wtion0+idx+2, wtion0t1);
        _mm_stream_pd(wtion1+idx,   wtion1t0);
        _mm_stream_pd(wtion1+idx+2, wtion1t1);

        jtion0[idx] = jtion0t[0];
        jtion0[idx+1] = jtion0t[1];
        jtion0[idx+2] = jtion0t[2];
        jtion0[idx+3] = jtion0t[3];

        jtion1[idx] = jtion1t[0];
        jtion1[idx+1] = jtion1t[1];
        jtion1[idx+2] = jtion1t[2];
        jtion1[idx+3] = jtion1t[3];

#else
	*/
        int idx  = 4*m;
        wpion[idx] = wpiont[0];
        wpion[idx+1] = wpiont[1];
        wpion[idx+2] = wpiont[2];
        wpion[idx+3] = wpiont[3];

        wtion0[idx] = wtion0t[0];
        wtion0[idx+1] = wtion0t[1];
        wtion0[idx+2] = wtion0t[2];
        wtion0[idx+3] = wtion0t[3];

        wtion1[idx] = wtion1t[0];
        wtion1[idx+1] = wtion1t[1];
        wtion1[idx+2] = wtion1t[2];
        wtion1[idx+3] = wtion1t[3];

        jtion0[idx] = jtion0t[0];
        jtion0[idx+1] = jtion0t[1];
        jtion0[idx+2] = jtion0t[2];
        jtion0[idx+3] = jtion0t[3];

        jtion1[idx] = jtion1t[0];
        jtion1[idx+1] = jtion1t[1];
        jtion1[idx+2] = jtion1t[2];
        jtion1[idx+3] = jtion1t[3];

	//#endif

#endif


    }

#pragma omp barrier
   
#pragma omp for
    for (i=0; i<nloc_over*(mzeta+1); i++) {
        wreal denloc_sum = 0.0;
        for (j=0; j<nthreads; j++) {
            denloc_sum += densityi_local[j*(mzeta+1)*nloc_over + i];
        }
        densityi[i] = denloc_sum;
    }

}

#if PRINT_CHECKSUM
    double sum = 0.0;         
    for (int j=0; j<nloc_over*(mzeta+1); j++) {
        sum += j * densityi[j];
    }
    if (parallel_decomp->myrank_toroidal == 0)
        fprintf(stderr, "Checksum: %9.12lf\n", sum);
#endif
    
#if USE_MPI
    if (parallel_decomp->npartdom > 1) {
      /* sum radial particles */
      if (radial_decomp->nproc_radial_partd > 1){
#pragma omp parallel for
	for (int ij=0; ij<nloc_over; ij++) {
	  for (int kk=0; kk<mzeta+1; kk++) {
	    dnitmp[ij*(mzeta+1)+kk] = densityi[ij*(mzeta+1)+kk];
	    densityi[ij*(mzeta+1)+kk] = 0.0;
	  }
	}
	MPI_Allreduce(dnitmp, densityi, nloc_over*(mzeta+1),
		      MPI_MYWREAL, MPI_SUM,
		      radial_decomp->radial_partd_comm);
      }
      /* sum ghost cell*/
      sum_plane(gtc_input);
    }
#endif
    
    /* Poloidal end cell, discard ghost cell j = 0 */
#pragma omp parallel for
    for (int i=ipsi_in; i<ipsi_out+1; i++) {
        int col_start = igrid[i] + mtheta[i] - igrid_in;
        for (int j=0; j<mzeta+1; j++) {
            densityi[col_start*(mzeta+1) + j] 
                += densityi[(igrid[i]-igrid_in)*(mzeta+1)+j];
        }
    }

#if USE_MPI
#pragma omp parallel for
    for (int j=0; j<nloc_over; j++) {
        sendl[j] = densityi[(mzeta+1)*j];
        recvr[j] = 0.0;
    }

    icount = nloc_over;
    idest = parallel_decomp->left_pe;
    isource = parallel_decomp->right_pe;
    isendtag = parallel_decomp->myrank_toroidal;
    irecvtag = isource;
    
    MPI_Sendrecv(sendl, icount, MPI_MYWREAL, idest, isendtag,
            recvr, icount, MPI_MYWREAL,
            isource, irecvtag, parallel_decomp->toroidal_comm, &istatus);
#else
#pragma omp parallel for
    for (int j=0; j<nloc_over; j++) {
        recvr[j] = densityi[(mzeta+1)*j];
    }
#endif

    
#pragma omp parallel for
    for (int j=0; j<nloc_over; j++){
      densityi[mzeta+(mzeta+1)*j] += recvr[recvr_index[j]];
    }
    
    /*
    if (parallel_decomp->myrank_toroidal 
            == (ntoroidal - 1)) {
        // B.C. at zeta=2*pi is shifted 
#pragma omp parallel for
        for (int i=ipsi_in; i<ipsi_out+1; i++) {
            int ii = igrid[i]-igrid_in;
            int jt = mtheta[i];

            // cshift of recvr 
            int iti = itran[i];
            for (int j=ii+1; j<ii+jt-iti+1; j++) {
                densityi[mzeta + (mzeta+1)*j] += recvr[j+iti];
            }
            for (int j=ii+jt-iti+1; j<ii+jt+1; j++) {
                densityi[mzeta + (mzeta+1)*j] += recvr[j+iti-jt];
            }
        }
    } else {
#pragma omp parallel for 
        for (int j=0; j<nloc_over; j++) {
            densityi[mzeta+(mzeta+1)*j] += recvr[j];
        }
    }
    */

    /* Zero out charge in radial boundary cell */
    for (int i=0; i<nbound; i++) {
        int col_start, col_end;
        if (i>=ipsi_in&&i<=ipsi_out){
          col_start = igrid[i]-igrid_in;
          col_end = igrid[i]+mtheta[i]-igrid_in;
          for (int j=col_start+1; j<col_end+1; j++) {
            for (int k=0; k<mzeta+1; k++) {
              densityi[k+j*(mzeta+1)] *= (real) i/(real) nbound;
            }
          }
        }
        if ((mpsi-i)<=ipsi_out&&(mpsi-i)>=ipsi_in){
          col_start = igrid[mpsi-i]-igrid_in;
          col_end   = igrid[mpsi-i]+mtheta[mpsi-i]-igrid_in;
          for (int j=col_start+1; j<col_end+1; j++) {
            for (int k=0; k<mzeta+1; k++) {
              densityi[k+j*(mzeta+1)] *= (real) i/(real) nbound;
            }
          }
        }
    }

    /* Flux surface average and normalization */
#pragma omp parallel for
    for (int i=0; i<mpsi+1; i++) {
        zonali[i] = 0.0;
    }

#pragma omp parallel for num_threads(NUM_THREADS)
    for (int i=ipsi_in; i<ipsi_out+1; i++) {
        for (int j=1; j<mtheta[i]+1; j++) {
            for (int k=1; k<mzeta+1; k++) {
                int ij = igrid[i] + j - igrid_in;
                if (i>=ipsi_nover_in&&i<=ipsi_nover_out)
                  zonali[i] += 0.25*densityi[k+ij*(mzeta+1)];
                densityi[k+ij*(mzeta+1)] =
                    0.25*densityi[k+ij*(mzeta+1)]*markeri[k-1+ij*mzeta];
            }
        }
    }
 
#if USE_MPI
    adum = (real *) _mm_malloc((mpsi+1)*sizeof(real), IDEAL_ALIGNMENT);
    adum2 = (real *) _mm_malloc((mpsi+1)*sizeof(real), IDEAL_ALIGNMENT);
    assert(adum != NULL);
    assert(adum2 != NULL);

    MPI_Allreduce(zonali, adum2, mpsi+1, MPI_MYREAL, MPI_SUM, 
		  parallel_decomp->toroidal_comm);
    MPI_Allreduce(adum2, adum, mpsi+1, MPI_MYREAL, MPI_SUM,
		  parallel_decomp->partd_comm);
#pragma omp parallel for 
    for (int i=0; i<mpsi+1; i++) {
        zonali[i] = adum[i]*pmarki[i];
    }
    _mm_free(adum);
    _mm_free(adum2);
#else
#pragma omp parallel for
    for (int i=0; i<mpsi+1; i++) {
        zonali[i] = zonali[i]*pmarki[i];
    }
#endif

    /* densityi subtracted (0,0) mode */
#pragma omp parallel for
    for (int i=ipsi_in;i<ipsi_out+1; i++) {
        for (int j=1; j<mtheta[i]+1; j++) {
            for (int k=1; k<mzeta+1; k++) {
                int ij = igrid[i] + j - igrid_in;
                densityi[k+ij*(mzeta+1)] -= zonali[i];
            }
        }
        /* poloidal BC condition */
        int col_start = igrid[i] - igrid_in;
        int col_end   = igrid[i] + mtheta[i] - igrid_in;
        for (int j=1; j<mzeta+1; j++) {
            densityi[j+col_start*(mzeta+1)] = densityi[j+col_end*(mzeta+1)];
        }
    }

    /*
    MPI_Barrier(MPI_COMM_WORLD);
    if (parallel_decomp->mype==0) {
      char filename[50];
      sprintf(filename, "den_out0.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
        fprintf(fp, "j=%d, den=%14.13e\n", j+igrid_in, densityi[(mzeta+1)*j+1]);
      }
      fclose(fp);
    }
    if (parallel_decomp->mype==1) {
      char filename[50];
      sprintf(filename, "den_out1.txt");
      FILE *fp;
      fp = fopen(filename, "w");
      for (int j=0; j<nloc_over; j++){
        fprintf(fp, "j=%d, den=%14.13e\n", j+igrid_in, densityi[(mzeta+1)*j+1]);
      }
      fclose(fp);
    }
    //MPI_Barrier(MPI_COMM_WORLD);
    //MPI_Abort(MPI_COMM_WORLD, 1);      
    */

    /* enforce charge conservation for zonal flow mode */
    real rdum = 0.0;
    real tdum = 0.0;
#pragma omp parallel for reduction(+:rdum,tdum)
    for (int i=1; i<mpsi; i++) {
        real r = a0+deltar*(real) i;
        rdum += r;
        tdum += r*zonali[i];
    }

    tdum = tdum/rdum;
    
#pragma omp parallel for
    for (int i=1; i<mpsi; i++) {
        zonali[i] -= tdum;
    }

    return 0; 
}

int chargei_init(gtc_bench_data_t* gtc_input) {

    gtc_global_params_t   *params;
    gtc_field_data_t     *grid;
    gtc_aux_particle_data_t *aux_zion;
    gtc_particle_data_t     *zion;
    gtc_radial_decomp_t     *radial_decomp;

    real* zion0; real* zion1; 
    real* zion2;
    real* zion5;

    int* kzion; real* wzion; 

    int* jtion0; int* jtion1; real* wtion0;
    real* wtion1; real* wpion; 

    int* igrid; real* delt; const real* qtinv;
    int* mtheta; int mi; 
    real smu_inv; real a0;
    real a1; real delr; real delz; 
    int mpsi; real rho_max;
    int ipsi_in, ipsi_out, ipsi_valid_in, ipsi_valid_out, igrid_in;
    real pi2_inv; real zetamin; 
    int mzeta;
    real *pgyro, *tgyro;

    /* temporary variables */
    real psitmp, thetatmp, zetatmp, rhoi, r, wzt, rhotmp;
    int iptmp, ip, jttmp, jt, ipjt, kk, ii, im, im2, m, larmor, idx, idx1;
    real rdum, wp1, tflr;
    int j01, j00, jtion0tmp, jtion1tmp,  mpsi_max;
    real tdumtmp, tdum, tdum2, tdumtmp2, wtion0tmp, wtion1tmp;
    real r_diff, a_diff;

    params   = &(gtc_input->global_params);
    grid     = &(gtc_input->field_data);
    aux_zion = &(gtc_input->aux_particle_data);
    zion     = &(gtc_input->particle_data);
    radial_decomp = &(gtc_input->radial_decomp);

    mpsi = params->mpsi;
    a0 = params->a0; a1=params->a1;
    delr = params->delr;
    delz = params->delz;
    smu_inv = params->smu_inv;
    zetamin = params->zetamin; mzeta = params->mzeta;
    pi2_inv = params->pi2_inv; mi = params->mi;
    kzion = aux_zion->kzion; wzion = aux_zion->wzion; wpion = aux_zion->wpion;
    jtion0 = aux_zion->jtion0; jtion1 = aux_zion->jtion1; wtion0 = aux_zion->wtion0;
    wtion1 = aux_zion->wtion1; wpion = aux_zion->wpion; 
    
    igrid = grid->igrid; qtinv = grid->qtinv; 
    mtheta = grid->mtheta; delt = grid->delt;
    pgyro = grid->pgyro; tgyro = grid->tgyro;
    zion0 = zion->z0; zion1 = zion->z1; zion2 = zion->z2;
    zion5 = zion->z5; 

    ipsi_in = radial_decomp->ipsi_in;
    ipsi_out = radial_decomp->ipsi_out;
    igrid_in = radial_decomp->igrid_in;
    ipsi_valid_in = radial_decomp->ipsi_valid_in;
    ipsi_valid_out = radial_decomp->ipsi_valid_out;
    rho_max = radial_decomp->rho_max;

    a_diff   = a1-a0;
    mpsi_max = mpsi-1;

    for (m = 0; m < mi; m++) {

        psitmp   = zion0[m];
        thetatmp = zion1[m]; 
        zetatmp  = zion2[m];
        rhoi     = zion5[m]*smu_inv;

#if SQRT_PRECOMPUTED
        r        = psitmp; 
#else
        r        = sqrt(2.0*psitmp);
#endif

        iptmp    = (int) ((r-a0)*delr+0.5);
        ip       = abs_min_int(mpsi, iptmp);
        assert(ip>=ipsi_valid_in);
        assert(ip<=ipsi_valid_out);

        jttmp    = (int) (thetatmp*pi2_inv*delt[ip]+0.5); 
        jt       = abs_min_int(mtheta[ip], jttmp);

        ipjt     = igrid[ip]+jt;
        wzt      = (zetatmp-zetamin)*delz;
        kk       = abs_min_int(mzeta-1, (int) wzt);

        kzion[m] = kk;
        wzion[m] = wzt - (real) kk;
            
        r_diff   = r-a0;

        for (larmor = 0; larmor < 4; larmor++) {

            idx     = larmor + 4*m;

            idx1    = larmor + 4*(ipjt-igrid_in);
	    //            rdum    = delr * abs_min_real(a_diff,
            //              r_diff+rhoi*pgyro[idx1]);

	    rhotmp = rhoi*pgyro[idx1];
	    if (fabs(rhotmp)>rho_max) {
	      printf("warning: reducing rhoi to %e from %e\n", (rhotmp/fabs(rhotmp))*rho_max/pgyro[idx1], rhotmp);
	      rhotmp = (rhotmp/fabs(rhotmp))*rho_max;
	      rhoi = rhotmp/pgyro[idx1];
	    }
	    rdum = delr * abs_min_real(a_diff,
				       r_diff+rhotmp);

            ii      = abs_min_int(mpsi_max, (int) rdum);
            assert(ii>=ipsi_in);
            assert(ii<=ipsi_out-1);

            wp1     = rdum - (real) ii;

            /* Particle position in theta */
            tflr    = thetatmp + rhoi*tgyro[idx1];
               
            /* Inner flux surface */
            /* Outer flux surface */
            im      = ii;
            im2     = ii + 1;
            
            tdumtmp = pi2_inv * (tflr - zetatmp * qtinv[im]) + 10.0;
            tdumtmp2 = pi2_inv * (tflr - zetatmp * qtinv[im2]) + 10.0;
          
            tdum = (tdumtmp - (int) tdumtmp) * delt[im];
            tdum2 = (tdumtmp2 - (int) tdumtmp2) * delt[im2];
            
            j00 = abs_min_int(mtheta[im]-1, (int) tdum);
            j01 = abs_min_int(mtheta[im2]-1, (int) tdum2);
           
            jtion0tmp = igrid[im] + j00;
            jtion1tmp = igrid[im2] + j01;
            
            wtion0tmp = tdum - (real) j00;
            wtion1tmp = tdum2 - (real) j01;

            wpion [idx] = wp1;
            jtion0[idx] = jtion0tmp;
            jtion1[idx] = jtion1tmp;
            wtion0[idx] = wtion0tmp;
            wtion1[idx] = wtion1tmp;
            
        }
    }

    return 0;
}

