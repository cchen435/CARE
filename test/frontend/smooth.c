#include <stdio.h>
#include <stdlib.h>

#include "care.h"

typedef struct {
  int mpsi;
} gtc_global_params_t;

typedef struct {
  int *igrid;
  int *mtheta;
  double *phitmp;
} gtc_field_data_t;

typedef struct {
  gtc_global_params_t global_params;
  gtc_field_data_t field_data;
} gtc_bench_data_t;

int smooth(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params = &(gtc_input->global_params);
  gtc_field_data_t *field_data = &(gtc_input->field_data);
  int mpsi = params->mpsi;
  int *igrid = field_data->igrid;
  int *mtheta = field_data->mtheta;
  double *phitmp = field_data->phitmp;
#if 0
  // radial smoothing
  for (int i = 1; i < mpsi; i++) {
    for (int k = 0; k < 2; k++)
      phitmp[2 * (igrid[i] - 1) + k] =
          phitmp[2 * (igrid[i] + mtheta[i] - 1) + k];
  }

  for (int i = 1; i < mpsi; i++) {
    phism[igrid[i] - 1] = phism[igrid[i] + mtheta[i] - 1];
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
#endif

  /* Poloidal BC */
  for (int i = 1; i < mpsi; i++) {
    phitmp[igrid[i] * 2 - 1] = phitmp[(igrid[i] + mtheta[i]) * 2 - 1];
  }

#if 0

  /* diagnostic */
  double efield = 0.0;
  for (int i = 0; i < mpsi + 1; i++) {
    for (int j = 0; j < mtheta[i]; j++) {
      efield += phi[(igrid[i] + j) * 2 + 1] * phi[(igrid[i] + j) * 2 + 1];
    }
  }
#endif

  return 0;
}

int main(int argc, char *argv[]) {
  int mpsi = atoi(argv[1]);
  int *igrid, *mtheta, *itran;
  double *phism, *phitmp, *phi;
  gtc_bench_data_t gtc_input;

  care_user_init();

  igrid = (int *)malloc(sizeof(int) * mpsi);
  mtheta = (int *)malloc(sizeof(int) * mpsi);
  itran = (int *)malloc(sizeof(int) * mpsi);

  int i;
  for (i = 0; i < mpsi; i++) {
    int tmp = rand() % mpsi;
    igrid[i] = mtheta[i] = itran[i] = tmp;
  }

  phism = (double *)malloc(sizeof(double) * mpsi);
  phitmp = (double *)malloc(sizeof(double) * mpsi);
  phi = (double *)malloc(sizeof(double) * mpsi);

  for (i = 0; i < mpsi; i++) {
    phism[i] = (double)rand();
    phitmp[i] = (double)rand();
    phi[i] = (double)rand();
  }

  gtc_input.global_params.mpsi = mpsi;
  gtc_input.field_data.igrid = igrid;
  gtc_input.field_data.mtheta = mtheta;
  gtc_input.field_data.phitmp = phitmp;
  smooth(&gtc_input);
  return 0;
}
