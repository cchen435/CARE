#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "bench_gtc.h"

int field(gtc_bench_data_t* gtc_input) {
  gtc_global_params_t* params;
  gtc_field_data_t* field_data;

  int mpsi, mthetamax;

  const int* __restrict__ igrid;
  const int* __restrict__ mtheta;
  const int* __restrict__ itran;
  const real* __restrict__ phi;
  const real* __restrict__ phip00;
  const real* __restrict__ wtp1;
  const int* __restrict__ jtp1;
  const real* __restrict__ qtinv;
  const real* __restrict__ deltat;

  real a, a0, q0, q1, q2, deltar, deltaz;
  real* __restrict__ evector;

  int igrid_nover_in1, igrid_nover_out1,
      igrid_nover_start1, igrid_nover_end1;

  real* difft;
  real *recvr, *recvl, *recvls;
  real diffr, diffz;

  real *drdpa, *diffta;
  int *idx1a, *idx2a;
  int *recvl_index, *recvr_index;

  /*******/

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);

  mthetamax = params->mthetamax;
  mpsi = params->mpsi;
  a0 = params->a0;
  deltar = params->deltar;
  a = params->a;
  q0 = params->q0;
  q1 = params->q1;
  q2 = params->q2;
  deltat = field_data->deltat;
  deltaz = params->deltaz;

  evector = field_data->evector;
  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
  phi = field_data->phi;
  itran = field_data->itran;
  qtinv = field_data->qtinv;
  phip00 = field_data->phip00;
  jtp1 = field_data->jtp1;
  wtp1 = field_data->wtp1;

  difft = field_data->difft;
  recvr = field_data->recvrf;
  recvl = field_data->recvlf;
  recvls = field_data->recvlsf;

  drdpa = field_data->drdpa;
  diffta = field_data->diffta;
  idx1a = field_data->idx1a;
  idx2a = field_data->idx2a;
  recvl_index = field_data->recvl_index;
  recvr_index = field_data->recvr_index;

  igrid_nover_in1 = igrid[1];
  igrid_nover_out1 = igrid[mpsi-1] + mtheta[mpsi-1];
  igrid_nover_start1 = igrid_nover_in1 - 1;
  igrid_nover_end1 = igrid_nover_out1 - 1;

  /********/

  /* finite difference for e-field in equilibrium unit */
  diffr = 0.5 / deltar;
  diffz = 0.5 / deltaz;

  for (int i = 0; i < 6 * mgrid; i++) {
    evector[i] = 0.0;
  }

  /* d_phi/d_psi */
  for (int i = igrid_nover_in1 - 1; i < igrid_nover_out1; i++) {

    real wtp11_val = wtp1[2 * i];
    real wtp12_val = wtp1[2 * i + 1];
    int jtp11_idx = jtp1[2 * i];
    int jtp12_idx = jtp1[2 * i + 1];
    int idx1 = 2 * idx1a[i] + 1;
    int idx2 = 2 * idx2a[i] + 1;
    evector[6 * i + 3] = drdpa[i] * diffr * ((1.0 - wtp11_val) * phi[(jtp11_idx - 1) * 2 + 1] +
                             wtp11_val * phi[(jtp11_idx)*2 + 1] -
                             ((1.0 - wtp12_val) * phi[(jtp12_idx - 1) * 2 + 1] +
                              +wtp12_val * phi[(jtp12_idx)*2 + 1]));
    evector[6 * i + 4] = diffta[i] * (phi[idx1] - phi[idx2]);
  }

  for (int i = 1; i < mpsi; i++) {
    evector[6 * (igrid[i] - 1) + 3] =
        evector[6 * (igrid[i] + mtheta[i] - 1) + 3];
  }

  //    for (int i=0; i<nloc_over; i++) {
  for (int i = igrid_nover_start1; i < igrid_nover_end1 + 1; i++) {
    recvl[i] = phi[i * 2 + 1];
    recvr[i] = phi[i * 2 + 1];
  }

  for (int i = igrid_nover_start1; i < igrid_nover_end1 + 1; ij++) {
    evector[6 * i + 5] = (recvr[recvr_index[i]] - recvl[recvl_index[i]]) * diffz;
  }

  /* Adjust the difference between safety factor q and qtinv for
   * field-line coordinate */
  for (int i = 1; i < mpsi; i++) {
    real r = a0 + deltar * ((real)i);
    real q = q0 + q1 * r / a + q2 * r * r / (a * a);
    real delq = (1.0 / q - qtinv[i]);

    for (int j = 0; j < mtheta[i]; j++) {
      int ij = igrid[i] + j;
      evector[6 * ij + 2] += delq * evector[6 * ij + 1];
      evector[6 * ij + 5] += delq * evector[6 * ij + 4];
    }
  }

  /* Add (0,0) mode, d phi/d psi */
  if (params->mode00 == 1) {
    for (int i = 1; i < mpsi; i++) {
      real r = a0 + deltar * ((real)i);
      for (int j = igrid[i]; j < igrid[i] + mthera[i]; j++) {
        evector[6 * j + 3] += phip00[i] / r;
      }
    }
  }

  for (int i = 0; i < mgrid; i++) {
    recvls[3 * i + 0] = evector[6 * i + 3];
    recvls[3 * i + 1] = evector[6 * i + 4];
    recvls[3 * i + 2] = evector[6 * i + 5];
  }

  /* Unpack end point data for k=0 */
  for (int i = 1; i < mpsi; i++) {
    int ii = igrid[i];
    int jt = mtheta[i];
    int iti = itran[i];
    for (int j = ii; j < ii + iti; j++) {
      evector[6 * j + 0] = recvls[3 * (j + jt - iti) + 0];
      evector[6 * j + 1] = recvls[3 * (j + jt - iti) + 1];
      evector[6 * j + 2] = recvls[3 * (j + jt - iti) + 2];
    }
    for (int j = ii + iti; j < ii + jt; j++) {
      evector[6 * j + 0] = recvls[3 * (j - iti) + 0];
      evector[6 * j + 1] = recvls[3 * (j - iti) + 1];
      evector[6 * j + 2] = recvls[3 * (j - iti) + 2];
    }
  }

  /* Poloidal end point */
  for (int i = 0; i < mpsi + 1; i++) {
    int ii = igrid[i];
    int jt = mtheta[i];
    for (int j = 0; j < 2; j++) {
      evector[6 * (ii - 1) + 3 * j + 0] = evector[6 * (ii + jt - 1) + 3 * j + 0];
      evector[6 * (ii - 1) + 3 * j + 1] = evector[6 * (ii + jt - 1) + 3 * j + 1];
      evector[6 * (ii - 1) + 3 * j + 2] = evector[6 * (ii + jt - 1) + 3 * j + 2];
    }
  }
  return 0;
}
