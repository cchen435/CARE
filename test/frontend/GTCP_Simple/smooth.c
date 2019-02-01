#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "bench_gtc.h"

int smooth(int iflag, gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_radial_decomp_t *radial_decomp;

  int mpsi, mthetamax;
  int mgrid;
  int *igrid, *mtheta, *itran;
  real qion;
  real *densityi;
  real *zonali;
  real *phi;
  real *phi00;
  real *phip00;
  real a0, deltar;
  real gyroradius;
  real nonlinear;

  real *phitmp;

  real *wtp1, *wtp2;
  int *jtp1, *jtp2;

  real *recvl, *recvr;
  real *den00;

  int *recvl_index, *recvr_index;

  int igrid_nover_in1, igrid_nover_out1, igrid_nover_start1, igrid_nover_end1,
      igrid_over_in1, igrid_over_out1, igrid_over_start1, igrid_over_end1;

  int ismooth;

  /*******/
  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  diagnosis_data = &(gtc_input->diagnosis_data);
  radial_decomp = &(gtc_input->radial_decomp);

  mpsi = params->mpsi;
  mgrid = params->mgrid;
  mthetamax = params->mthetamax;
  qion = params->qion;
  a0 = params->a0;
  deltar = params->deltar;
  gyroradius = params->gyroradius;
  nonlinear = params->nonlinear;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
  densityi = field_data->densityi;
  phi = field_data->phi;
  itran = field_data->itran;
  phip00 = field_data->phip00;
  phitmp = field_data->phitmps;
  zonali = field_data->zonali;
  phi00 = field_data->phi00;
  den00 = field_data->den00;
  recvl = field_data->recvlf;
  recvr = field_data->recvrf;
  wtp1 = field_data->wtp1;
  wtp2 = field_data->wtp2;
  jtp1 = field_data->jtp1;
  jtp2 = field_data->jtp2;

  recvl_index = field_data->recvl_index;
  recvr_index = field_data->recvr_index;

  igrid_over_in1 = igrid[1];
  igrid_over_out1 = igrid[mpsi - 1] + mtheta[mpsi - 1];

  igrid_over_start1 = igrid_over_in1 - 1;
  igrid_over_end1 = igrid_over_out1 - 1;

  igrid_nover_in1 = igrid[1];
  igrid_nover_out1 = igrid[mpsi - 1] + mtheta[mpsi - 1];

  igrid_nover_start1 = igrid_nover_in1 - 1;
  igrid_nover_end1 = igrid_nover_out1 - 1;

  /********/

  real *phism = (real *)malloc(mgrid * sizeof(real));
  assert(phism != NULL);

  for (int i = 0; i < 2 * mgrid; i++) {
    phitmp[i] = 0.0;
  }

  if (iflag == 0) {
    for (int i = 0; i < mgrid; i++) {
      phitmp[i * 2 + 1] = densityi[i * 2 + 1];
    }
  } else if (iflag == 3) {
    for (int i = 0; i < mgrid; i++) {
      phitmp[i * 2 + 1] = phi[i * 2 + 1];
    }
  } else {
    fprintf(stderr, "Error! Bad iflag argument\n");
    exit(1);
  }

  ismooth = 1;
  if (nonlinear < 0.5) ismooth = 0;
  for (int ip = 1; ip < ismooth + 1; ip++) {
    // radial smoothing
    for (int i = 1; i < mpsi; i++) {
      for (int k = 0; k < 2; k++)
        phitmp[2 * (igrid[i] - 1) + k] =
            phitmp[2 * (igrid[i] + mtheta[i] - 1) + k];
    }

    for (int ij = igrid_nover_start1; ij < igrid_nover_end1 + 1; ij++) {
      phism[ij] =
          0.25 * ((1.0 - wtp1[ij * 2]) * phitmp[2 * jtp1[ij * 2] - 1] +
                  wtp1[ij * 2] * phitmp[2 * jtp1[ij * 2] + 1] +
                  (1.0 - wtp1[ij * 2 + 1]) * phitmp[2 * jtp1[ij * 2 + 1] - 1] +
                  wtp1[ij * 2 + 1] * phitmp[2 * jtp1[ij * 2 + 1] + 1]) -
          0.0625 *
              ((1.0 - wtp2[ij * 2]) * phitmp[2 * jtp2[ij * 2] - 1] +
               wtp2[ij * 2] * phitmp[2 * jtp2[ij * 2] + 1] +
               (1.0 - wtp2[ij * 2 + 1]) * phitmp[2 * jtp2[ij * 2 + 1] - 1] +
               wtp2[ij * 2 + 1] * phitmp[2 * jtp2[ij * 2 + 1] + 1]);
    }

    for (int i = 1; i < mpsi; i++) {
      phism[igrid[i] - 1] = phism[igrid[i] + mtheta[i] - 1];
    }

    for (int ij = igrid_nover_start1; ij < igrid_nover_end1 + 1; ij++) {
      phitmp[2 * ij + 1] = 0.625 * phitmp[2 * ij + 1] + phism[ij];
    }

    /* fix ghost cells */
    // fix_radial_ghosts(gtc_input, phitmp, 1, 1);
    // poloidal smoothing (-0.0625 0.25 0.625 0.25 -0.0625)
    for (int ij = igrid_nover_start1; ij < igrid_nover_end1 + 1; ij++) {
      phism[ij] = phitmp[2 * ij + 1];
    }

    for (int ij = igrid_nover_start1; ij < igrid_nover_end1 + 1; ij++) {
      phitmp[2 * ij + 1] = 0.625 * phism[ij] +
                           0.25 * (phism[ij - 1] + phism[ij + 1]) -
                           0.0625 * (phism[ij - 2] + phism[ij + 2]);
    }
    for (int i = 1; i < mpsi; i++) {
      int ij = igrid[i];
      phitmp[2 * ij + 1] =
          0.625 * phism[ij] +
          0.25 * (phism[igrid[i] + mtheta[i] - 1] + phism[ij + 1]) -
          0.0625 * (phism[igrid[i] + mtheta[i] - 1 - 1] + phism[ij + 2]);
      int ij1 = igrid[i] + 1;
      phitmp[2 * ij1 + 1] =
          0.625 * phism[ij1] + 0.25 * (phism[ij1 - 1] + phism[ij1 + 1]) -
          0.0625 * (phism[igrid[i] + mtheta[i] - 1] + phism[ij1 + 2]);
      int ij2 = igrid[i] + mtheta[i] - 1;
      phitmp[2 * ij2 + 1] = 0.625 * phism[ij2] +
                            0.25 * (phism[ij2 - 1] + phism[igrid[i] + 1 - 1]) -
                            0.0625 * (phism[ij2 - 2] + phism[igrid[i] + 2 - 1]);
      int ij3 = igrid[i] + mtheta[i] - 2;
      phitmp[2 * ij3 + 1] = 0.625 * phism[ij3] +
                            0.25 * (phism[ij3 - 1] + phism[ij3 + 1]) -
                            0.0625 * (phism[ij3 - 2] + phism[igrid[i] + 1 - 1]);
    }

    //      for (int i=0; i<nloc_over; i++) {
    for (int i = igrid_nover_start1; i < igrid_nover_end1 + 1; i++) {
      recvl[i] = phitmp[i * 2 + 1];
      recvr[i] = phitmp[i * 2 + 1];
    }

    for (int ij = igrid_nover_start1; ij < igrid_nover_end1 + 1; ij++) {
      phitmp[2 * ij + 1] =
          0.5 * phitmp[2 * ij + 1] +
          0.25 * (recvr[recvr_index[ij]] + recvl[recvl_index[ij]]);
    }
  }  // end ismooth

  // toroidal BC:send phi to right and receive from left
  for (int i = 0; i < mgrid; i++) {
    recvl[i] = phitmp[i * 2 + 1];
  }

  for (int ij = igrid_over_start1; ij < igrid_over_end1 + 1; ij++) {
    phitmp[2 * ij] = recvl[recvl_index[ij]];
  }

  /* Poloidal BC */
  for (int i = 1; i < mpsi; i++) {
    phitmp[igrid[i] * 2 - 1] = phitmp[(igrid[i] + mtheta[i]) * 2 - 1];
  }

  /* Radial boundary */
  for (int i = 0; i < mtheta[0] + 1; i++) {
    phitmp[i * 2] = 0.0;
    phitmp[i * 2 + 1] = 0.0;
  }

  for (int i = igrid[mpsi]; i < igrid[mpsi] + mtheta[mpsi] + 1; i++) {
    for (int j = 0; j < 2; j++) {
      phitmp[(i - 1) * 2 + j] = 0.0;
    }
  }

  if (iflag == 0) {
    for (int i = 0; i < mgrid * 2; i++) {
      densityi[i] = phitmp[i];
    }
  } else if (iflag == 3) {
    for (int i = 0; i < mgrid * 2; i++) {
      phi[i] = phitmp[i];
    }
  } else {
    fprintf(stderr, "Error! Bad iflag argument\n");
    exit(1);
  }

  /* Solve zonal flow: trapezoidal rule */
  if (iflag == 3) {
    /* assuming nhybrid = 0; adiabatic electron */
    for (int i = 0; i < mpsi + 1; i++) {
      phip00[i] = qion * zonali[i];
    }

    /* ismooth = 1,1 */
    den00[0] = phip00[0];
    den00[mpsi] = phip00[mpsi];
    den00[1] = phip00[3];
    den00[mpsi - 1] = phip00[mpsi - 3];

    for (int i = 2; i < mpsi - 1; i++) {
      den00[i] = phip00[i - 2] + phip00[i + 2];
    }

    for (int i = 1; i < mpsi; i++) {
      den00[i] = 0.625 * phip00[i] + 0.25 * (phip00[i - 1] + phip00[i + 1]) -
                 0.0625 * den00[i];
    }

    for (int i = 0; i < mpsi + 1; i++) {
      phip00[i] = 0.0;
    }

    for (int i = 1; i < mpsi + 1; i++) {
      real r = a0 + deltar * ((real)i);
      phip00[i] = phip00[i - 1] +
                  0.5 * deltar * ((r - deltar) * den00[i - 1] + r * den00[i]);
    }

    /* d phi/dr, in equilibrium unit */
    for (int i = 0; i < mpsi + 1; i++) {
      real r = a0 + deltar * ((real)i);
      phip00[i] = -phip00[i] / r;
    }

    /* Add FLR contribution using Pade approximation */
    for (int i = 0; i < mpsi + 1; i++) {
      phi00[i] = den00[i] * gyroradius * gyroradius;
    }

    for (int i = 1; i < mpsi; i++) {
      phip00[i] = phip00[i] + 0.5 * (phi00[i + 1] - phi00[i - 1]) / deltar;
    }

    /* (0, 0) mode potential store in phi00 */
    for (int i = 0; i < mpsi + 1; i++) {
      phi00[i] = 0.0;
    }

    for (int i = 1; i < mpsi + 1; i++) {
      phi00[i] = phi00[i - 1] + 0.5 * deltar * (phip00[i - 1] + phip00[i]);
    }

    if (params->mode00 == 0) {
      for (int i = 0; i < mpsi + 1; i++) {
        phip00[i] = 0.0;
      }
    }
  }

  /* diagnostic */
  if (iflag == 3 && idiag == 0) {
    for (int i = 0; i < 18; i++) {
      (diagnosis_data->scalar_data)[i] = 0.0;
    }
    diagnosis_data->scalar_data[18] = 1.0;

    real sum_phip00 = 0.0;
    for (int i = 1; i < mpsi + 1; i++) 
      sum_phip00 += phip00[i] * phip00[i];

    // shear flow amplitude
    real eradial = sqrt(sum_phip00 / ((real)mpsi)) / gyroradius;

    real efield = 0.0;
    for (int i = 0; i < mpsi + 1; i++) {
      for (int j = 0; j < mtheta[i]; j++) {
        efield += phi[(igrid[i] + j) * 2 + 1] * phi[(igrid[i] + j) * 2 + 1];
      }
    }

    int sum_mtheta = 0;
    for (int i = 0; i < mpsi + 1; i++) {
      sum_mtheta += mtheta[i];
    }

    real energy_unit = gyroradius * gyroradius;
    real energy_unit_sq = energy_unit * energy_unit;
    efield = efield / ((real)(sum_mtheta) * energy_unit_sq);

    (diagnosis_data->scalar_data)[10] = efield;
    (diagnosis_data->scalar_data)[11] = eradial;
  }

  _mm_free(phism);
  return 0;
}
