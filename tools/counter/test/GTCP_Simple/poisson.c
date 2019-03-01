#include "bench_gtc.h"
#include <assert.h>
#include <math.h>

int poisson_initial(gtc_bench_data_t *gtc_input, int mring, int mindex,
                    int *nindex, int *indexp, real *ring) {

  gtc_global_params_t *params;
  gtc_field_data_t *field_data;

  int mpsi, mgrid;
  int *igrid, *mtheta;
  real *delt;
  real *pgyro, *tgyro;

  real pi, pi2_inv, a0, a1, *qtinv, delr, deltar, *deltat, deltaz;
  double vring[3], fring[3];

  int i, j, k;
  real tdum1, zdum;
  int max_nindex, min_nindex, sum_nindex;

  /*******/

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);

  mpsi = params->mpsi;
  mgrid = params->mgrid;
  a0 = params->a0;
  deltar = params->deltar;
  a1 = params->a1;
  deltat = field_data->deltat;
  deltaz = params->deltaz;
  pi = params->pi;
  delt = field_data->delt;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
  qtinv = field_data->qtinv;
  pgyro = field_data->pgyro;
  tgyro = field_data->tgyro;

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

  pi2_inv = 0.5 / pi;
  delr = 1.0 / deltar;

  for (i = 0; i < mgrid; i++) {
    nindex[i] = 0;
  }

  for (i = 0; i < mindex * mgrid; i++) {
    ring[i] = 0.0;
    indexp[i] = 0;
  }

  for (k = 1; k < 2; k++) {
    zdum = deltaz;
    int jttmp, jt, kr, kp, np, nt, ij0, ipjt, ii, j1, j0, ij;
    real rgrid, tgrid, b, ddelr, ddelt, wght, r, t, rdum, wr, tdum, wt1, wt0,
        rr;
    wght = 0.0;

    for (i = 0; i < (mpsi + 1); i++) {
      fprintf(stderr, "%d ** i=%d  ipsi_in=%d  ipsi_out=%d\n", 0, i, 0, mpsi);
      for (j = 1; j < mtheta[i] + 1; j++) {
        ij0 = igrid[i] + j - 1;

        assert(ij0 >= 0);
        assert(ij0 < mgrid);
        /* 1st point is the original grid point */
        nindex[ij0] = 1;
        indexp[ij0 * mindex] = ij0;
        ring[ij0 * mindex] = 0.25;

        /* position of grid points */
        rgrid = a0 + deltar * ((real)i);
        tgrid = deltat[i] * ((real)j) + zdum * qtinv[i];
        tgrid *= pi2_inv;
        tgrid = 2.0 * pi * (tgrid - ((int)tgrid));

        jttmp = (int)(pi2_inv * delt[i] * tgrid + 0.5);
        jt = abs_min_int(mtheta[i], jttmp);

        /* B-field */
        b = 1.0 / (1.0 + rgrid * cos(tgrid));
        ipjt = igrid[i] + jt - 1;

        assert(ipjt >= 0);
        assert(ipjt < mgrid);

        /* FLR from grid point and weight of 8-point for each ring */
        for (kr = 1; kr < mring + 1; kr++) {
          for (kp = 1; kp < 9; kp++) {

            if (kp < 5) {
              ddelr = pgyro[4 * ipjt + kp - 1];
              ddelt = tgyro[4 * ipjt + kp - 1];
              wght = 0.0625 * fring[kr - 1];
            } else if (kp == 5) {
              ddelr = 0.5 * (pgyro[4 * ipjt + 0] + pgyro[4 * ipjt + 2]);
              ddelt = 0.5 * (tgyro[4 * ipjt + 0] + tgyro[4 * ipjt + 2]);
              wght = 0.125 * fring[kr - 1];
            } else if (kp == 6) {
              ddelr = 0.5 * (pgyro[4 * ipjt + 1] + pgyro[4 * ipjt + 2]);
              ddelt = 0.5 * (tgyro[4 * ipjt + 1] + tgyro[4 * ipjt + 2]);
            } else if (kp == 7) {
              ddelr = 0.5 * (pgyro[4 * ipjt + 1] + pgyro[4 * ipjt + 3]);
              ddelt = 0.5 * (tgyro[4 * ipjt + 1] + tgyro[4 * ipjt + 3]);
            } else if (kp == 8) {
              ddelr = 0.5 * (pgyro[4 * ipjt + 0] + pgyro[4 * ipjt + 3]);
              ddelt = 0.5 * (tgyro[4 * ipjt + 0] + tgyro[4 * ipjt + 3]);
            }

            /* position for each point with rho_i=2.0*vring */
            r = rgrid + ddelr * 2.0 * vring[kr - 1] * sqrt(0.5 / b);
            t = tgrid + ddelt * 2.0 * vring[kr - 1] * sqrt(0.5 / b);

            /* linear interpolation */
            rdum = delr * abs_min_real(a1 - a0, r - a0);
            ii = max(0, min(mpsi - 1, (int)rdum));
            // ii = max(0, min(mpsi-1, (int) rdum));
            wr = rdum - ((real)ii);
            if (wr > 0.95)
              wr = 1.0;
            if (wr < 0.05)
              wr = 0.0;

            /* outer flux surface */
            tdum = t - zdum * qtinv[ii + 1];
            tdum = tdum * pi2_inv + 10.0;
            tdum = delt[ii + 1] * (tdum - ((int)tdum));
            j1 = abs_min_int(mtheta[ii + 1] - 1, ((int)tdum));
            wt1 = tdum - ((real)j1);
            if (wt1 > 0.95)
              wt1 = 1.0;
            if (wt1 < 0.05)
              wt1 = 0.0;

            /* inner flux surface */
            tdum = t - zdum * qtinv[ii];
            tdum = tdum * pi2_inv + 10.0;
            tdum = delt[ii] * (tdum - ((int)tdum));
            j0 = abs_min_int(mtheta[ii] - 1, ((int)tdum));
            wt0 = tdum - ((real)j0);
            if (wt0 > 0.95)
              wt0 = 1.0;
            if (wt0 < 0.05)
              wt0 = 0.0;

            /* index and weight of each point */
            for (np = 1; np < 5; np++) {

              if (np == 1) {
                ij = igrid[ii + 1] + j1 + 1 - 1;
                rr = wght * wr * wt1;
              } else if (np == 2) {
                if (j1 == 0)
                  j1 = mtheta[ii + 1];
                ij = igrid[ii + 1] + j1 - 1;
                rr = wght * wr * (1.0 - wt1);
              } else if (np == 3) {
                ij = igrid[ii] + j0;
                rr = wght * (1.0 - wr) * wt0;
              } else {
                if (j0 == 0)
                  j0 = mtheta[ii];
                ij = igrid[ii] + j0 - 1;
                rr = wght * (1.0 - wr) * (1.0 - wt0);
              }

              assert(ij >= 0);
              assert(ij < mgrid);

              /* insignificant point replaced by the
                  original grid point */
              if (rr < 0.001) {
                ring[(k - 1) * mindex * mgrid + ij0 * mindex + 0] += rr;
                goto contloop;
              }

              /* redundant point */
              for (nt = 1; nt < nindex[(k - 1) * mgrid + ij0] + 1; nt++) {
                if (ij ==
                    indexp[(k - 1) * mindex * mgrid + ij0 * mindex + nt - 1]) {
                  ring[(k - 1) * mindex * mgrid + ij0 * mindex + nt - 1] += rr;
                  goto contloop;
                }
              }

              /* new point */
              nindex[(k - 1) * mgrid + ij0] += 1;
              nt = nindex[(k - 1) * mgrid + ij0];
              indexp[(k - 1) * mindex * mgrid + ij0 * mindex + nt - 1] = ij;
              ring[(k - 1) * mindex * mgrid + ij0 * mindex + nt - 1] = rr;

            /* continue */
            contloop:
              continue;
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

  for (i = 0; i < mgrid; i++) {
    real rdum = 0.0;
    for (j = 0; j < nindex[i]; j++) {
      rdum += ring[i * mindex + j];
    }
    if (rdum > tdum1)
      tdum1 = rdum;
    if (rdum < zdum)
      zdum = rdum;
  }

  for (i = 0; i < mgrid; i++) {
    sum_nindex += nindex[i];
    if (nindex[i] > max_nindex)
      max_nindex = nindex[i];
    if (nindex[i] < min_nindex)
      min_nindex = nindex[i];
  }
  fprintf(stderr, "poisson solver: %d %d %f %f %d %d\n", max_nindex, min_nindex,
          tdum1, zdum, mgrid, sum_nindex);

  /* _mm_free(delt); */
  return 0;
}

int poisson(int iflag, gtc_bench_data_t *gtc_input) {

  gtc_global_params_t *params;
  gtc_field_data_t *field_data;

  int mpsi, mgrid;
  const int *__restrict__ igrid;
  const int *__restrict__ mtheta;
  real qion;

  const real *__restrict__ densityi;
  const real *__restrict__ rtemi;
  real *__restrict__ phi;
  real aion;
  real gyroradius;
  const int *__restrict__ nindex;
  const int *__restrict__ indexp;
  const real *__restrict__ ring;
  real *__restrict__ phitmp;

  real qion_gyro_aioninv;

  int it, iteration, mring, mindex;
  real gamma, tite, tmp;

  int igrid_nover_in_radiald, igrid_nover_out_radiald, igrid_nover_start,
      igrid_nover_end;

  real *__restrict__ ptilde;
  real *__restrict__ dentmp;

  /*******/
  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);

  mpsi = params->mpsi;
  mgrid = params->mgrid;
  qion = params->qion;
  aion = params->aion;
  gyroradius = params->gyroradius;

  ptilde = field_data->ptilde;
  phitmp = field_data->phitmp;
  dentmp = field_data->dentmp;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
  densityi = field_data->densityi;
  phi = field_data->phi;
  rtemi = field_data->rtemi;

  igrid_nover_in_radiald = igrid[0];
  igrid_nover_out_radiald = igrid[mpsi] + mtheta[mpsi];
  igrid_nover_start = igrid_nover_in_radiald - 1;
  igrid_nover_end = igrid_nover_out_radiald - 1;

  /********/

  /* number of gyro-ring */
  mring = 2;

  /* number of summation: maximum is 32*mring+1 */
  mindex = 32 * mring + 1;

  /* gamma=0.75: max resolution for k=0.577 */
  gamma = 0.75;
  iteration = 5;

  /* initialize Poisson solver */
  if ((istep == 1) && (irk == 1) && (iflag == 0)) {
    poisson_initial(gtc_input, mring, mindex, field_data->nindex,
                    field_data->indexp, field_data->ring);
  }

  indexp = field_data->indexp;
  nindex = field_data->nindex;
  ring = field_data->ring;

  tite = 1.0;

  tmp = 1.0 / (tite + 1.0 - gamma);

  qion_gyro_aioninv = pow(qion * gyroradius, 2) / aion;

  for (int i = 0; i < mgrid; i++) {
    real denval = qion * densityi[i * 2 + 1];
    dentmp[i] = denval;
    phitmp[i] = denval * tmp;
  }

  for (it = 2; it < iteration + 1; it++) {
    //            for (int i=nloc_nover_in; i<nloc_nover_out+1; i++) {
    for (int i = igrid_nover_start; i < igrid_nover_end + 1; i++) {
      real ptilde_val = 0.0;
      int nindex_val = nindex[i] + 1;
      for (int j = 1; j < nindex_val; j++) {
        int indexp_idx = i * mindex + j - 1;
        int indexp_val = indexp[indexp_idx];
        ptilde_val += ring[indexp_idx] * phitmp[indexp_val];
      }
      ptilde[i] = ptilde_val;
    }

    //   for (int i=nloc_nover_in;i<nloc_nover_out+1; i++) {
    for (int i = igrid_nover_start; i < igrid_nover_end + 1; i++) {
      real perr_i = ptilde[i] - gamma * phitmp[i];
      phitmp[i] = (dentmp[i] + perr_i) * tmp;
    }

    /* radial boundary */
    for (int i = igrid[0]; i < igrid[0] + mtheta[0] + 1; i++) {
      phitmp[i - 1] = 0.0;
    }
    for (int i = igrid[mpsi]; i < igrid[mpsi] + mtheta[mpsi] + 1; i++) {
      phitmp[i - 1] = 0.0;
    }

    for (int i = 0; i < mpsi + 1; i++) {
      phitmp[igrid[i] - 1] = phitmp[igrid[i] + mtheta[i] - 1];
    }

    /* fix ghost cells */
    // real timer1=MPI_Wtime();
    fix_radial_ghosts(gtc_input, phitmp, 0, 1);
    // real timer2=MPI_Wtime()-timer1;
    // timer2);
  } // iteration end

  /* store final result */
  for (int i = 0; i < mgrid; i++) {
    phi[i * 2 + 1] = phitmp[i];
  }

  /* in equilibrium unit */
  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = igrid[i] + 1; j < igrid[i] + mtheta[i] + 1; j++) {
      phi[(j - 1) * 2 + 1] *= rtemi[i] * qion_gyro_aioninv;
    }

    /* poloidal BC */
    phi[(igrid[i] - 1) * 2 + 1] = phi[(igrid[i] + mtheta[i] - 1) * 2 + 1];
  }

  return 0;
}
