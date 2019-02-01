#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "bench_gtc.h"

int smooth(int iflag, gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
#if 0
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_radial_decomp_t *radial_decomp;
#endif

  int mpsi;
#if 0
  int mthetamax;
  int mgrid;
#endif
  int *igrid, *mtheta, *itran;
#if 0
  real qion;
  real *densityi;
  real *zonali;
  real *phi;
  real *phi00;
  real *phip00;
  real a0, deltar;
  real gyroradius;
  real nonlinear;
#endif

  real *phitmp;

#if 0
  real *wtp1, *wtp2;
  int *jtp1, *jtp2;

  real *recvl, *recvr;
  real *den00;

  int *recvl_index, *recvr_index;

  int igrid_nover_in1, igrid_nover_out1, igrid_nover_start1, igrid_nover_end1,
      igrid_over_in1, igrid_over_out1, igrid_over_start1, igrid_over_end1;

  int ismooth;
#endif

  /*******/
  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
#if 0
  diagnosis_data = &(gtc_input->diagnosis_data);
  radial_decomp = &(gtc_input->radial_decomp);
#endif

  mpsi = params->mpsi;
#if 0
  mgrid = params->mgrid;
  mthetamax = params->mthetamax;
  qion = params->qion;
  a0 = params->a0;
  deltar = params->deltar;
  gyroradius = params->gyroradius;
  nonlinear = params->nonlinear;
#endif

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
#if 0
  densityi = field_data->densityi;
  phi = field_data->phi;
  itran = field_data->itran;
  phip00 = field_data->phip00;
#endif
  phitmp = field_data->phitmps;
#if 0
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
#endif

#if 0
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
#endif

  /* Poloidal BC */
  for (int i = 1; i < mpsi; i++) {
    phitmp[igrid[i] * 2 - 1] = phitmp[(igrid[i] + mtheta[i]) * 2 - 1];
  }

#if 0
  /* diagnostic */
  if (iflag == 3 && idiag == 0) {
    real efield = 0.0;
    for (int i = 0; i < mpsi + 1; i++) {
      for (int j = 0; j < mtheta[i]; j++) {
        efield += phi[(igrid[i] + j) * 2 + 1] * phi[(igrid[i] + j) * 2 + 1];
      }
    }
  }
#endif

  return 0;
}
