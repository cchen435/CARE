#include "bench_gtc.h"
#include <assert.h>
#include <math.h>
#define _LARGE_FILE_API
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

int calc_moments(gtc_bench_data_t *gtc_input) {
#if CALC_MOMENTS
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;
  gtc_diagnosis_data_t *diagnosis;

  const int *__restrict__ igrid;
  const int *__restrict__ mtheta;
  const real *__restrict__ delt;
  const real *__restrict__ qtinv;
  const int *__restrict__ itran;
  const real *__restrict__ markeri;

  const real *__restrict__ z0;
  const real *__restrict__ z1;
  const real *__restrict__ z2;
  const real *__restrict__ z3;
  const real *__restrict__ z4;
  const real *__restrict__ z5;

  int mi, mpsi, mpsi_max, mstepall, mmomentsoutput, mgrid;
  real delr, delz, zetamin, qion, aion, gyroradius, pi, vthi_inv, pi2_inv, a0,
      a1, aion_inv, a_diff, tstep, zetamax;

  real *phi, *densityi;
  real *phi00, *phip00, *zonali;

  int nloc_calc_moments;
  real *sendl_moments, *recvr_moments;
  // real* __restrict__ moments;
  // real* __restrict__ momentstmp;
  double *moments;
  double *momentstmp;

  int nloc_nover, igrid_nover_in;

  char cdum[19];
  char cdum1[17];
  /*******/

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);
  diagnosis = &(gtc_input->diagnosis_data);

  mpsi = params->mpsi;
  mi = params->mi;
  pi = params->pi;
  zetamin = params->zetamin;
  a1 = params->a1;
  a0 = params->a0;
  qion = params->qion;
  aion = params->aion;
  gyroradius = params->gyroradius;
  tstep = params->tstep;
  mgrid = params->mgrid;
  zetamax = params->zetamax;
  mstepall = params->mstepall;
  mmomentsoutput = params->mmomentsoutput;

  delr = params->delr;
  delz = params->delz;
  delt = field_data->delt;
  igrid = field_data->igrid;
  qtinv = field_data->qtinv;
  mtheta = field_data->mtheta;
  itran = field_data->itran;
  phi = field_data->phi;
  densityi = field_data->densityi;
  phi00 = field_data->phi00;
  phip00 = field_data->phip00;
  zonali = field_data->zonali;
  markeri = field_data->markeri;

  nloc_nover = radial_decomp->nloc_nover;
  igrid_nover_in = radial_decomp->igrid_nover_in;

  pi2_inv = 0.5 / pi;
  vthi_inv = aion / (gyroradius * fabs(qion));
  aion_inv = 1.0 / aion;
  mpsi_max = mpsi - 1;
  a_diff = a1 - a0;

  z0 = particle_data->z0;
  z1 = particle_data->z1;
  z2 = particle_data->z2;
  z3 = particle_data->z3;
  z4 = particle_data->z4;
  z5 = particle_data->z5;

  nloc_calc_moments = diagnosis->nloc_calc_moments;
  moments = diagnosis->moments;
  momentstmp = diagnosis->momentstmp;
  sendl_moments = diagnosis->sendl_moments;
  recvr_moments = diagnosis->recvr_moments;

  {
    real psitmp, thetatmp, zetatmp, weight, r, b, upara, vperp2, energy, P_para,
        P_perp, q_para, q_perp, dz1, dz0, wz1, wz0, wzt, rdum, wp1, wp0, tdum,
        tdum2, tdumtmp, tdumtmp2, wt0, wt10, wt00, wt1, wt11, wt01;
    int i, j, m, kk, ii, im, im2, j00, jt0, j01, jt1, ij, ij1;
    // int ip, iptmp, jt, jttmp, ipjt;
    real d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15,
        d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27;
    real *moments_part;
    real sum_tid = 0.0;

    moments_part = moments; 

    for (i = 0; i < 14 * nloc_calc_moments; i++) {
      moments_part[i] = 0.0;
    }

#pragma omp for
    for (m = 0; m < mi; m++) {
      psitmp = z0[m];
      thetatmp = z1[m];
      zetatmp = z2[m];
      weight = z4[m];

      if (zetatmp == HOLEVAL) {
        continue;
      }


#if SQRT_PRECOMPUTED
      r = psitmp;
#else
      r = sqrt(2.0 * psitmp);
#endif
      b = 1.0 / (1.0 + r * cos(thetatmp));
      upara = z3[m] * b * qion * aion_inv * vthi_inv;
      vperp2 = 2.0 * aion_inv * b * z5[m] * z5[m] * vthi_inv * vthi_inv;
      energy = max(1.0e-20, 0.5 * upara * upara + 0.5 * vperp2);
      P_para = max(1.0e-20, 0.5 * upara * upara);
      P_perp = max(1.0e-20, 0.5 * vperp2);
      q_para = upara * P_para;
      q_perp = upara * P_perp;

      wzt = (zetatmp - zetamin) * delz;
      kk = abs_min_int(mzeta - 1, (int)wzt);
      // assert(kk==0);
      dz1 = wzt - (real)kk;
      dz0 = 1.0 - dz1;
      // assert(dz1>=0.0);
      // assert(dz1<=1.0);
      wz1 = weight * dz1;
      wz0 = weight * dz0;

      rdum = delr * abs_min_real(a_diff, r - a0);
      ii = abs_min_int(mpsi_max, (int)rdum);
      wp1 = rdum - (real)ii;
      wp0 = 1.0 - wp1;
      // assert(wp1>=0.0);
      // assert(wp1<=1.0);

      // inner/outer flux surface
      im = ii;
      im2 = ii + 1;

      tdumtmp = pi2_inv * (thetatmp - zetatmp * qtinv[im]) + 10.0;
      tdumtmp2 = pi2_inv * (thetatmp - zetatmp * qtinv[im2]) + 10.0;

      tdum = (tdumtmp - (int)tdumtmp) * delt[im];
      tdum2 = (tdumtmp2 - (int)tdumtmp2) * delt[im2];

      j00 = abs_min_int(mtheta[im] - 1, (int)tdum);
      j01 = abs_min_int(mtheta[im2] - 1, (int)tdum2);

      jt0 = igrid[im] + j00 - 1;
      jt1 = igrid[im2] + j01 - 1;
      // assert(jt0>=0);
      // assert(jt0+1<nloc_calc_moments);
      // assert(jt1>=0);
      // assert(jt1+1<nloc_calc_moments);

      wt0 = tdum - (real)j00;
      wt10 = wp0 * wt0;
      wt00 = wp0 - wt10;
      // assert(wt0>=0.0);
      // assert(wt0<=1.0);

      wt1 = tdum2 - (real)j01;
      wt11 = wp1 * wt1;
      wt01 = wp1 - wt11;
      // assert(wt1>=0.0);
      // assert(wt1<=1.0);

      ij = jt0;
      d0 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 0];
      d1 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 1];
      d2 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 2];
      d3 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 3];
      d4 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 4];
      d5 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 5];
      d6 = moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 6];

      d7 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 0];
      d8 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 1];
      d9 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 2];
      d10 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 3];
      d11 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 4];
      d12 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 5];
      d13 = moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 6];

      d14 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 0];
      d15 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 1];
      d16 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 2];
      d17 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 3];
      d18 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 4];
      d19 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 5];
      d20 = moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 6];

      d21 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 0];
      d22 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 1];
      d23 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 2];
      d24 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 3];
      d25 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 4];
      d26 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 5];
      d27 = moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 6];

      d0 += wz0 * wt00;
      d1 += wz0 * wt00 * upara;
      d2 += wz0 * wt00 * P_para;
      d3 += wz0 * wt00 * P_perp;
      d4 += wz0 * wt00 * q_para;
      d5 += wz0 * wt00 * q_perp;
      d6 += dz0 * wt00;

      d7 += wz1 * wt00;
      d8 += wz1 * wt00 * upara;
      d9 += wz1 * wt00 * P_para;
      d10 += wz1 * wt00 * P_perp;
      d11 += wz1 * wt00 * q_para;
      d12 += wz1 * wt00 * q_perp;
      d13 += dz1 * wt00;

      d14 += wz0 * wt10;
      d15 += wz0 * wt10 * upara;
      d16 += wz0 * wt10 * P_para;
      d17 += wz0 * wt10 * P_perp;
      d18 += wz0 * wt10 * q_para;
      d19 += wz0 * wt10 * q_perp;
      d20 += dz0 * wt10;

      d21 += wz1 * wt10;
      d22 += wz1 * wt10 * upara;
      d23 += wz1 * wt10 * P_para;
      d24 += wz1 * wt10 * P_perp;
      d25 += wz1 * wt10 * q_para;
      d26 += wz1 * wt10 * q_perp;
      d27 += dz1 * wt10;

      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 0] = d0;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 1] = d1;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 2] = d2;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 3] = d3;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 4] = d4;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 5] = d5;
      moments_part[ij * (mzeta + 1) * 7 + kk * 7 + 6] = d6;

      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 0] = d7;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 1] = d8;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 2] = d9;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 3] = d10;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 4] = d11;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 5] = d12;
      moments_part[ij * (mzeta + 1) * 7 + (kk + 1) * 7 + 6] = d13;

      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 0] = d14;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 1] = d15;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 2] = d16;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 3] = d17;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 4] = d18;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 5] = d19;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + kk * 7 + 6] = d20;

      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 0] = d21;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 1] = d22;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 2] = d23;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 3] = d24;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 4] = d25;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 5] = d26;
      moments_part[(ij + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 6] = d27;

      ij1 = jt1;
      d0 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 0];
      d1 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 1];
      d2 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 2];
      d3 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 3];
      d4 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 4];
      d5 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 5];
      d6 = moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 6];

      d7 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 0];
      d8 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 1];
      d9 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 2];
      d10 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 3];
      d11 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 4];
      d12 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 5];
      d13 = moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 6];

      d14 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 0];
      d15 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 1];
      d16 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 2];
      d17 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 3];
      d18 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 4];
      d19 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 5];
      d20 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 6];

      d21 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 0];
      d22 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 1];
      d23 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 2];
      d24 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 3];
      d25 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 4];
      d26 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 5];
      d27 = moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 6];

      d0 += wz0 * wt01;
      d1 += wz0 * wt01 * upara;
      d2 += wz0 * wt01 * P_para;
      d3 += wz0 * wt01 * P_perp;
      d4 += wz0 * wt01 * q_para;
      d5 += wz0 * wt01 * q_perp;
      d6 += dz0 * wt01;

      d7 += wz1 * wt01;
      d8 += wz1 * wt01 * upara;
      d9 += wz1 * wt01 * P_para;
      d10 += wz1 * wt01 * P_perp;
      d11 += wz1 * wt01 * q_para;
      d12 += wz1 * wt01 * q_perp;
      d13 += dz1 * wt01;

      d14 += wz0 * wt11;
      d15 += wz0 * wt11 * upara;
      d16 += wz0 * wt11 * P_para;
      d17 += wz0 * wt11 * P_perp;
      d18 += wz0 * wt11 * q_para;
      d19 += wz0 * wt11 * q_perp;
      d20 += dz0 * wt11;

      d21 += wz1 * wt11;
      d22 += wz1 * wt11 * upara;
      d23 += wz1 * wt11 * P_para;
      d24 += wz1 * wt11 * P_perp;
      d25 += wz1 * wt11 * q_para;
      d26 += wz1 * wt11 * q_perp;
      d27 += dz1 * wt11;

      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 0] = d0;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 1] = d1;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 2] = d2;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 3] = d3;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 4] = d4;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 5] = d5;
      moments_part[ij1 * (mzeta + 1) * 7 + kk * 7 + 6] = d6;

      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 0] = d7;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 1] = d8;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 2] = d9;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 3] = d10;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 4] = d11;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 5] = d12;
      moments_part[ij1 * (mzeta + 1) * 7 + (kk + 1) * 7 + 6] = d13;

      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 0] = d14;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 1] = d15;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 2] = d16;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 3] = d17;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 4] = d18;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 5] = d19;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + kk * 7 + 6] = d20;

      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 0] = d21;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 1] = d22;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 2] = d23;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 3] = d24;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 4] = d25;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 5] = d26;
      moments_part[(ij1 + 1) * (mzeta + 1) * 7 + (kk + 1) * 7 + 6] = d27;
    }


  /* Poloidal end cell, discard ghost cell j = 0 */
  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = 0; j < mzeta + 1; j++) {
      for (int k = 0; k < 7; k++) {
        moments[(igrid[i] + mtheta[i] - 1) * (mzeta + 1) * 7 +
                j * 7 + k] +=
            moments[(igrid[i] - 1) * (mzeta + 1) * 7 + j * 7 +
                    k];

        moments[(igrid[i] - 1) * (mzeta + 1) * 7 + j * 7 + k] =
            moments[(igrid[i] + mtheta[i] - 1) * (mzeta + 1) * 7 + j * 7 + k];
      }
    }
  }

  for (int i = 0; i < nloc_calc_moments; i++) {
    for (int k = 0; k < 7; k++) {
      recvr_moments[7 * i + k] = moments[(mzeta + 1) * 7 * i + k];
    }
  }

  for (int i = 0; i < nloc_calc_moments; i++) {
    for (int k = 0; k < 7; k++) {
      moments[(mzeta + 1) * 7 * i + mzeta * 7 + k] += recvr_moments[7 * i + k];
    }
  }


  for (int i = 0; i < nloc_calc_moments; i++) {
    for (int j = 1; j < mzeta + 1; j++) {
      // for (int k=0; k<6; k++){
      //	moments[(mzeta+1)*7*i + 7*j + k] /= moments[(mzeta+1)*7*i + 7*j
      //+ 6];
      //}
      real marker = markeri[mzeta * i + j - 1];
      for (int k = 0; k < 7; k++) {
        moments[(mzeta + 1) * 7 * i + 7 * j + k] *= marker;
      }
    }
  }

  // convert row-major (C format) multidimensional array to column-major
  // (Fortran format) for output
  // store them in momentstmp
  for (int i = 0; i < nloc_calc_moments; i++) {
    for (int k = 0; k < 7; k++) {
      momentstmp[7 * i + k] = moments[(mzeta + 1) * 7 * i + 7 * mzeta + k];
    }
  }

  real *phitmp = momentstmp + 7 * nloc_calc_moments;
  real *densityitmp = momentstmp + 8 * nloc_calc_moments;
  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = 0; j < mtheta[i]; j++) {
      int ij = igrid[i] + j - 1;
      int ij2 = igrid[i] + j - 1;
      phitmp[ij2] = phi[ij * (mzeta + 1) + mzeta] / (gyroradius * gyroradius);
      densityitmp[ij2] = densityi[ij * (mzeta + 1) + mzeta];
    }
  }

  for (int i = 0; i < mpsi + 1; i++) {
    phip00[i] = phi00[i] / (gyroradius * gyroradius);
  }

  /* moments output */
  sprintf(cdum, "MOMENTS/MOMENTS");
  sprintf(cdum1, "PHIDEN/PHIDEN";

  
  off_t offset_all = (mstepall+istep)/mmomentsoutput*(4*sizeof(int)+2*sizeof(real)+sizeof(real)*7*mgrid);
  real time=(real)(mstepall+istep)*tstep;
  
  int file,rc;
  if (params->irun==0) {
    file = open64(cdum, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR | S_IXUSR);
  }
  else if (params->irun==1){
    file = open64(cdum, O_WRONLY);
  }
  else {
    printf(" other irun is not available\n");
    exit(1);
  }
  if (file==-1) {
    perror("open() for create failed\n");
    exit(1);
  }
  
  if (radial_decomp->myrank_radiald==0&&radial_decomp->myrank_radial_partd==0){
    int nbyte = 2 * sizeof(real);
    int nbyte1 = sizeof(real) * 7 * mgrid;
    if (-1 == (rc = pwrite64(file, &nbyte, sizeof(int), offset_all))) {
      perror("pwrite failed");
      exit(1);
    }
    if (-1 == (rc = pwrite64(file, &time, sizeof(real),
                             offset_all + (sizeof(int))))) {
      perror("pwrite failed");
      exit(1);
    }
    if (-1 == (rc = pwrite64(file, &zetamax, sizeof(real),
                             offset_all + (sizeof(int) + sizeof(real))))) {
      perror("pwrite failed");
      exit(1);
    }
    if (-1 == (rc = pwrite64(file, &nbyte, sizeof(int),
                             offset_all + (sizeof(int) + 2 * sizeof(real))))) {
      perror("pwrite failed");
      exit(1);
    }

    if (-1 ==
        (rc = pwrite64(file, &nbyte1, sizeof(int),
                       offset_all + (2 * sizeof(int) + 2 * sizeof(real))))) {
      perror("pwrite failed");
      exit(1);
    }
    if (-1 == (rc = pwrite64(
                   file, momentstmp + 7 * (igrid_nover_in - 1),
                   sizeof(real) * 7 * nloc_nover,
                   offset_all + (3 * sizeof(int) + 2 * sizeof(real))))) {
      perror("pwrite failed");
      exit(1);
    }
  }
  else if (radial_decomp->myrank_radiald>0&&radial_decomp->myrank_radial_partd==0){
    int nbyte1 = sizeof(real) * 7 * mgrid;
    off_t offset = offset_all + (3 * sizeof(int) + 2 * sizeof(real) +
                                 sizeof(real) * 7 * (igrid_nover_in - 1));
    off_t offset1 = offset_all + (3 * sizeof(int) + 2 * sizeof(real) +
                                  sizeof(real) * 7 * mgrid);

    if (-1 == (rc = pwrite64(file, momentstmp +
                                       7 * (igrid_nover_in - 1),
                             sizeof(real) * 7 * nloc_nover, offset))) {
      perror("pwrite failed");
      exit(1);
    }

    if (radial_decomp->myrank_radiald == radial_decomp->nproc_radiald - 1)
      if (-1 == (rc = pwrite64(file, &nbyte1, sizeof(int), offset1))) {
        perror("pwrite failed");
        exit(1);
      }
  }
 
  if (0 != (rc= close(file))){
    perror("close failed");
    exit(1);
    }
  
  off_t offset_all1 = (mstepall+istep)/mmomentsoutput*(15*sizeof(int)+sizeof(real)*(mpsi+3+mpsi+1+2*mgrid));
  
  int file1,rc1;
  if (params->irun==0) {
    file1 = open64(cdum1, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR | S_IXUSR);
  }
  else if (params->irun==1){
    file1 = open64(cdum1, O_WRONLY);
  }
  else {
    printf(" other irun is not available\n");
    exit(1);
  }
  if (file1==-1) {
    perror("open() for cerate failed\n");
    exit(1);
  }

    int mstepall1 = mstepall + istep;
    int nbyte = 2 * sizeof(real);
    int nbyte1 = 3 * sizeof(int);
    int nbyte2 = sizeof(real) * (mpsi + 1);
    int nbyte3 = sizeof(real) * mgrid;
    pwrite64(file1, &nbyte, sizeof(int), offset_all1);
    pwrite64(file1, &time, sizeof(real), offset_all1 + (sizeof(int)));
    pwrite64(file1, &zetamax, sizeof(real),
             offset_all1 + (sizeof(int) + sizeof(real)));
    pwrite64(file1, &nbyte, sizeof(int),
             offset_all1 + (sizeof(int) + 2 * sizeof(real)));

    pwrite64(file1, &nbyte1, sizeof(int),
             offset_all1 + (2 * sizeof(int) + 2 * sizeof(real)));
    pwrite64(file1, &mstepall1, sizeof(int),
             offset_all1 + (3 * sizeof(int) + 2 * sizeof(real)));
    pwrite64(file1, &mpsi, sizeof(int),
             offset_all1 + (4 * sizeof(int) + 2 * sizeof(real)));
    pwrite64(file1, &mgrid, sizeof(int),
             offset_all1 + (5 * sizeof(int) + 2 * sizeof(real)));
    pwrite64(file1, &nbyte1, sizeof(int),
             offset_all1 + (6 * sizeof(int) + 2 * sizeof(real)));

    pwrite64(file1, &nbyte2, sizeof(int),
             offset_all1 + (7 * sizeof(int) + 2 * sizeof(real)));
    pwrite64(file1, phip00,
             sizeof(real) * (mpsi + 1),
             offset_all1 + (8 * sizeof(int) + 2 * sizeof(real)));

    pwrite64(file1, &nbyte3, sizeof(int),
             offset_all1 + (9 * sizeof(int) + sizeof(real) * (mpsi + 3)));
    pwrite64(file1, phitmp + (igrid_nover_in - 1),
             sizeof(real) * nloc_nover,
             offset_all1 + (10 * sizeof(int) + sizeof(real) * (mpsi + 3)));

    pwrite64(file1, &nbyte3, sizeof(int),
             offset_all1 +
                 (11 * sizeof(int) + sizeof(real) * (mpsi + 3 + mgrid)));
    pwrite64(file1, densityitmp + (igrid_nover_in - 1),
             sizeof(real) * nloc_nover,
             offset_all1 +
                 (12 * sizeof(int) + sizeof(real) * (mpsi + 3 + mgrid)));

    pwrite64(file1, &nbyte2, sizeof(int),
             offset_all1 +
                 (13 * sizeof(int) + sizeof(real) * (mpsi + 3 + 2 * mgrid)));
    pwrite64(file1, zonali,
             sizeof(real) * (mpsi + 1),
             offset_all1 +
                 (14 * sizeof(int) + sizeof(real) * (mpsi + 3 + 2 * mgrid)));


  if (0 != (rc1= close(file1))){
    perror("close failed");
    exit(1);
  }
#endif /* if CALC_MOMENTS */

  return 0;
}
