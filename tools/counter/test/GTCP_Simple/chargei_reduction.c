#include <assert.h>
#include <math.h>
#include "bench_gtc.h"

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

int chargei(gtc_bench_data_t* gtc_input) {
  gtc_global_params_t* params;
  gtc_field_data_t* field_data;
  gtc_particle_data_t* particle_data;
  gtc_aux_particle_data_t* aux_particle_data;
  gtc_radial_decomp_t* radial_decomp;

  int mpsi, mgrid;
  int mi;
  int nbound;
  real delr, deltar, delz, rho_max;
  real pi, pi2_inv, pi_inv, smu_inv;
  real a1, a0;

  const int* __restrict__ igrid;
  const int* __restrict__ mtheta;
  const real* __restrict__ delt;
  const real* __restrict__ qtinv;

  const real* __restrict__ z0;
  const real* __restrict__ z1;
  const real* __restrict__ z2;
  const real* __restrict__ z4;
  const real* __restrict__ z5;

  int* __restrict__ jtion0;
  int* __restrict__ jtion1;
  real* __restrict__ wtion0;
  real* __restrict__ wtion1;
  real* __restrict__ wpion;
  real* __restrict__ wzion;

  const real* __restrict__ pgyro;
  const real* __restrict__ tgyro;
  const int* __restrict__ itran;

  wreal* densityi;
  wreal* densityi_local;

  wreal* recvr;
  real* zonali;
  real* markeri;
  real* pmarki;

  real a_diff;
  int mpsi_max;

  /*******/

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  radial_decomp = &(gtc_input->radial_decomp);

  mpsi = params->mpsi;
  mgrid = params->mgrid;
  mi = params->mi;
  pi = params->pi;
  nbound = params->nbound;
  a1 = params->a1;
  a0 = params->a0;

  delr = params->delr;
  delz = params->delz;

  smu_inv = params->smu_inv;

  z0 = particle_data->z0;
  z1 = particle_data->z1;
  z2 = particle_data->z2;
  z4 = particle_data->z4;
  z5 = particle_data->z5;

  jtion0 = aux_particle_data->jtion0;
  jtion1 = aux_particle_data->jtion1;
  wtion0 = aux_particle_data->wtion0;
  wtion1 = aux_particle_data->wtion1;
  wpion = aux_particle_data->wpion;
  wzion = aux_particle_data->wzion;

  densityi = field_data->densityi;
  densityi_local = field_data->densityi_local;
  pgyro = field_data->pgyro;
  tgyro = field_data->tgyro;
  igrid = field_data->igrid;
  delt = field_data->delt;
  qtinv = field_data->qtinv;
  mtheta = field_data->mtheta;
  itran = field_data->itran;
  recvr = field_data->recvr;

  zonali = field_data->zonali;
  markeri = field_data->markeri;
  pmarki = field_data->pmarki;

  rho_max = radial_decomp->rho_max;

  pi_inv = 1.0 / pi;
  pi2_inv = 0.5 * pi_inv;

  /********/

  a_diff = a1 - a0;
  mpsi_max = mpsi - 1;
  deltar = a_diff / mpsi;
  pi = 4.0 * atan(1.0);

  int i, j, m;
  real psitmp, thetatmp, zetatmp, weight, rhoi, r;
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

  wreal d1, d2, d3, d4, d5, d6, d7, d8;


  for (i = 0; i < 2 * mgrid; i++) {
    densityi_local[i] = 0.0;
  }

  for (i = 0; i < 2 * mgrid; i++) {
    densityi[i] = 0.0;
  }

  for (m = 0; m < mi; m++) {
    real wpiont[4] __attribute__((aligned(16)));
    real wtion0t[4] __attribute__((aligned(16)));
    real wtion1t[4] __attribute__((aligned(16)));
    int jtion0t[4] __attribute__((aligned(16)));
    int jtion1t[4] __attribute__((aligned(16)));

    psitmp = z0[m];
    thetatmp = z1[m];
    zetatmp = z2[m];
    weight = z4[m];
    rhoi = z5[m] * smu_inv;

    if (zetatmp == HOLEVAL) {
      continue;
    }

    r = sqrt(2.0 * psitmp);

    iptmp = (int)((r - a0) * delr + 0.5);
    ip = abs_min_int(mpsi, iptmp);

    assert(ip >= 0);
    assert(ip <= mpsi);

    jttmp = (int)(thetatmp * pi2_inv * delt[ip] + 0.5);
    jt = abs_min_int(mtheta[ip], jttmp);

    ipjt = igrid[ip] + jt;
    wzt = (zetatmp) * delz;
    kk = abs_min_int(0, (int)wzt);

    wz1 = weight * (wzt - (real)kk);
    wz0 = weight - wz1;
    r_diff = r - a0;

    for (larmor = 0; larmor < 4; larmor++) {
      idx1 = larmor + 4 * (ipjt - 1);
      rhotmp = rhoi * pgyro[idx1];
      if (fabs(rhotmp) > rho_max) {
        printf("warning: reducing rhoi to %e from %e\n",
               (rhotmp / fabs(rhotmp)) * rho_max / pgyro[idx1], rhotmp);
        rhotmp = (rhotmp / fabs(rhotmp)) * rho_max;
        rhoi = rhotmp / pgyro[idx1];
      }
      rdum = delr * abs_min_real(a_diff, r_diff + rhotmp);

      /* ii      = abs_min_int(mpsi_max,
       * _mm_cvttsd_si32(_mm_load_sd(&rdum))); */
      ii = abs_min_int(mpsi_max, (int)rdum);
      assert(ii >= 0);
      assert(ii <= mpsi - 1);
      //}
      wp1 = rdum - (real)ii;
      wp0 = 1.0 - wp1;

      /* Particle position in theta */
      tflr = thetatmp + rhoi * tgyro[idx1];
      /* Inner flux surface */
      /* Outer flux surface */

      im = ii;
      im2 = ii + 1;

      tdumtmp = pi2_inv * (tflr - zetatmp * qtinv[im]) + 10.0;
      tdumtmp2 = pi2_inv * (tflr - zetatmp * qtinv[im2]) + 10.0;

      tdum = (tdumtmp - (int)tdumtmp) * delt[im];
      tdum2 = (tdumtmp2 - (int)tdumtmp2) * delt[im2];

      j00 = abs_min_int(mtheta[im] - 1, (int)tdum);
      j01 = abs_min_int(mtheta[im2] - 1, (int)tdum2);

      jtion0tmp = igrid[im] + j00;
      jtion1tmp = igrid[im2] + j01;

      wtion0tmp = tdum - (real)j00;
      wtion1tmp = tdum2 - (real)j01;

      wt10 = wp0 * wtion0tmp;
      wt00 = wp0 - wt10;

      wt11 = wp1 * wtion1tmp;
      wt01 = wp1 - wt11;

      ij1 = kk + 2 * (jtion0tmp - 1);
      ij2 = kk + 2 * (jtion1tmp - 1);

      d1 = densityi_local[ij1];
      d2 = densityi_local[ij1 + 1];
      d3 = densityi_local[ij1 + 2];
      d4 = densityi_local[ij1 + 3];

      d5 = densityi_local[ij2];
      d6 = densityi_local[ij2 + 1];
      d7 = densityi_local[ij2 + 2];
      d8 = densityi_local[ij2 + 3];

      d1 += wz0 * wt00;
      d2 += wz1 * wt00;
      d3 += wz0 * wt10;
      d4 += wz1 * wt10;

      d5 += wz0 * wt01;
      d6 += wz1 * wt01;
      d7 += wz0 * wt11;
      d8 += wz1 * wt11;

      densityi_local[ij1] = d1;
      densityi_local[ij1 + 1] = d2;
      densityi_local[ij1 + 2] = d3;
      densityi_local[ij1 + 3] = d4;

      densityi_local[ij2] = d5;
      densityi_local[ij2 + 1] = d6;
      densityi_local[ij2 + 2] = d7;
      densityi_local[ij2 + 3] = d8;

      wpiont[larmor] = wp1;
      jtion0t[larmor] = jtion0tmp;
      jtion1t[larmor] = jtion1tmp;
      wtion0t[larmor] = wtion0tmp;
      wtion1t[larmor] = wtion1tmp;
    }

    int idx = 4 * m;
    wpion[idx] = wpiont[0];
    wpion[idx + 1] = wpiont[1];
    wpion[idx + 2] = wpiont[2];
    wpion[idx + 3] = wpiont[3];

    wtion0[idx] = wtion0t[0];
    wtion0[idx + 1] = wtion0t[1];
    wtion0[idx + 2] = wtion0t[2];
    wtion0[idx + 3] = wtion0t[3];

    wtion1[idx] = wtion1t[0];
    wtion1[idx + 1] = wtion1t[1];
    wtion1[idx + 2] = wtion1t[2];
    wtion1[idx + 3] = wtion1t[3];

    jtion0[idx] = jtion0t[0];
    jtion0[idx + 1] = jtion0t[1];
    jtion0[idx + 2] = jtion0t[2];
    jtion0[idx + 3] = jtion0t[3];

    jtion1[idx] = jtion1t[0];
    jtion1[idx + 1] = jtion1t[1];
    jtion1[idx + 2] = jtion1t[2];
    jtion1[idx + 3] = jtion1t[3];
  }

  for (i = 0; i < mgrid * 2; i++) {
    wreal denloc_sum = 0.0;
    denloc_sum += densityi_local[i];
    densityi[i] = denloc_sum;
  }

#if PRINT_CHECKSUM
  double sum = 0.0;
  for (int j = 0; j < mgrid * 2; j++) {
    sum += j * densityi[j];
  }
  fprintf(stderr, "Checksum: %9.12lf\n", sum);
#endif

  /* Poloidal end cell, discard ghost cell j = 0 */
  for (int i = 0; i < mpsi + 1; i++) {
    int col_start = igrid[i] + mtheta[i] - 1;
    for (int j = 0; j < 2; j++) {
      densityi[col_start * 2 + j] += densityi[(igrid[i] - 1) * 2 + j];
    }
  }

  for (int j = 0; j < mgrid; j++) {
    densityi[1+ 2 * j] += densityi[2 * j];
  }

  /* Zero out charge in radial boundary cell */
  for (int i = 0; i < nbound; i++) {
    int col_start, col_end;
      col_start = igrid[i] - 1;
      col_end = igrid[i] + mtheta[i] - 1;
      for (int j = col_start + 1; j < col_end + 1; j++) {
        for (int k = 0; k < 2; k++) {
          densityi[k + j * 2] *= (real)i / (real)nbound;
        }
      }
      col_start = igrid[mpsi - i] - 1;
      col_end = igrid[mpsi - i] + mtheta[mpsi - i] - 1;
      for (int j = col_start + 1; j < col_end + 1; j++) {
        for (int k = 0; k < 2; k++) {
          densityi[k + j * 2] *= (real)i / (real)nbound;
        }
      }
  }

  /* Flux surface average and normalization */
  for (int i = 0; i < mpsi + 1; i++) {
    zonali[i] = 0.0;
  }

  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = 1; j < mtheta[i] + 1; j++) {
        int ij = igrid[i] + j - 1;
          zonali[i] += 0.25 * densityi[1 + ij * 2];
        densityi[1 + ij * 2] = 0.25 * densityi[1 + ij * 2] * markeri[ij];
    }
  }

  for (int i = 0; i < mpsi + 1; i++) {
    zonali[i] = zonali[i] * pmarki[i];
  }

  /* densityi subtracted (0,0) mode */
  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = 1; j < mtheta[i] + 1; j++) {
        int ij = igrid[i] + j - 1;
        densityi[1 + ij * 2] -= zonali[i];
    }
    /* poloidal BC condition */
    int col_start = igrid[i] - 1;
    int col_end = igrid[i] + mtheta[i] - 1;
      densityi[1 + col_start * 2] =
          densityi[1 + col_end * 2];
  }

  /* enforce charge conservation for zonal flow mode */
  rdum = 0.0;
  tdum = 0.0;
  for (int i = 1; i < mpsi; i++) {
    real r = a0 + deltar * (real)i;
    rdum += r;
    tdum += r * zonali[i];
  }

  tdum = tdum / rdum;

  for (int i = 1; i < mpsi; i++) {
    zonali[i] -= tdum;
  }

  return 0;
}

int chargei_init(gtc_bench_data_t* gtc_input) {
  gtc_global_params_t* params;
  gtc_field_data_t* grid;
  gtc_aux_particle_data_t* aux_zion;
  gtc_particle_data_t* zion;
  gtc_radial_decomp_t* radial_decomp;

  real* zion0;
  real* zion1;
  real* zion2;
  real* zion5;

  int* kzion;
  real* wzion;

  int* jtion0;
  int* jtion1;
  real* wtion0;
  real* wtion1;
  real* wpion;

  int* igrid;
  real* delt;
  const real* qtinv;
  int* mtheta;
  int mi;
  real smu_inv;
  real a0;
  real a1;
  real delr;
  real delz;
  int mpsi;
  real rho_max;
  real pi2_inv;
  real *pgyro, *tgyro;

  /* temporary variables */
  real psitmp, thetatmp, zetatmp, rhoi, r, wzt, rhotmp;
  int iptmp, ip, jttmp, jt, ipjt, kk, ii, im, im2, m, larmor, idx, idx1;
  real rdum, wp1, tflr;
  int j01, j00, jtion0tmp, jtion1tmp, mpsi_max;
  real tdumtmp, tdum, tdum2, tdumtmp2, wtion0tmp, wtion1tmp;
  real r_diff, a_diff;

  params = &(gtc_input->global_params);
  grid = &(gtc_input->field_data);
  aux_zion = &(gtc_input->aux_particle_data);
  zion = &(gtc_input->particle_data);
  radial_decomp = &(gtc_input->radial_decomp);

  mpsi = params->mpsi;
  a0 = params->a0;
  a1 = params->a1;
  delr = params->delr;
  delz = params->delz;
  smu_inv = params->smu_inv;
  pi2_inv = params->pi2_inv;
  mi = params->mi;
  kzion = aux_zion->kzion;
  wzion = aux_zion->wzion;
  wpion = aux_zion->wpion;
  jtion0 = aux_zion->jtion0;
  jtion1 = aux_zion->jtion1;
  wtion0 = aux_zion->wtion0;
  wtion1 = aux_zion->wtion1;
  wpion = aux_zion->wpion;

  igrid = grid->igrid;
  qtinv = grid->qtinv;
  mtheta = grid->mtheta;
  delt = grid->delt;
  pgyro = grid->pgyro;
  tgyro = grid->tgyro;
  zion0 = zion->z0;
  zion1 = zion->z1;
  zion2 = zion->z2;
  zion5 = zion->z5;

  rho_max = radial_decomp->rho_max;

  a_diff = a1 - a0;
  mpsi_max = mpsi - 1;

  for (m = 0; m < mi; m++) {
    psitmp = zion0[m];
    thetatmp = zion1[m];
    zetatmp = zion2[m];
    rhoi = zion5[m] * smu_inv;

    r = sqrt(2.0 * psitmp);

    iptmp = (int)((r - a0) * delr + 0.5);
    ip = abs_min_int(mpsi, iptmp);
    assert(ip >= 0);
    assert(ip <= mpsi);

    jttmp = (int)(thetatmp * pi2_inv * delt[ip] + 0.5);
    jt = abs_min_int(mtheta[ip], jttmp);

    ipjt = igrid[ip] + jt;
    wzt = (zetatmp) * delz;
    kk = abs_min_int(0, (int)wzt);

    kzion[m] = kk;
    wzion[m] = wzt - (real)kk;

    r_diff = r - a0;

    for (larmor = 0; larmor < 4; larmor++) {
      idx = larmor + 4 * m;
      idx1 = larmor + 4 * (ipjt - 1);
      rhotmp = rhoi * pgyro[idx1];
      if (fabs(rhotmp) > rho_max) {
        printf("warning: reducing rhoi to %e from %e\n",
               (rhotmp / fabs(rhotmp)) * rho_max / pgyro[idx1], rhotmp);
        rhotmp = (rhotmp / fabs(rhotmp)) * rho_max;
        rhoi = rhotmp / pgyro[idx1];
      }
      rdum = delr * abs_min_real(a_diff, r_diff + rhotmp);

      ii = abs_min_int(mpsi_max, (int)rdum);
      assert(ii >= 0);
      assert(ii <= mpsi - 1);

      wp1 = rdum - (real)ii;

      /* Particle position in theta */
      tflr = thetatmp + rhoi * tgyro[idx1];

      /* Inner flux surface */
      /* Outer flux surface */
      im = ii;
      im2 = ii + 1;

      tdumtmp = pi2_inv * (tflr - zetatmp * qtinv[im]) + 10.0;
      tdumtmp2 = pi2_inv * (tflr - zetatmp * qtinv[im2]) + 10.0;

      tdum = (tdumtmp - (int)tdumtmp) * delt[im];
      tdum2 = (tdumtmp2 - (int)tdumtmp2) * delt[im2];

      j00 = abs_min_int(mtheta[im] - 1, (int)tdum);
      j01 = abs_min_int(mtheta[im2] - 1, (int)tdum2);

      jtion0tmp = igrid[im] + j00;
      jtion1tmp = igrid[im2] + j01;

      wtion0tmp = tdum - (real)j00;
      wtion1tmp = tdum2 - (real)j01;

      wpion[idx] = wp1;
      jtion0[idx] = jtion0tmp;
      jtion1[idx] = jtion1tmp;
      wtion0[idx] = wtion0tmp;
      wtion1[idx] = wtion1tmp;
    }
  }

  return 0;
}
