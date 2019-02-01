#include <stdio.h>
#include <stdlib.h>

int smooth(int *igrid, int *mtheta, int *itran, double *phism, double *phitmp,
           double *phi, int mpsi) {
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
    igrid = (int *) malloc(sizeof(int) * mpsi);
    mtheta = (int *) malloc(sizeof(int) * mpsi);
    itran = (int *) malloc(sizeof(int) * mpsi);

    int i;
    for (i = 0; i < mpsi; i++) {
    	int tmp = rand() % mpsi;
	igrid[i] = mtheta[i] = itran[i] = tmp;
    }

    phism = (double *) malloc(sizeof(double) * mpsi);
    phitmp = (double *) malloc(sizeof(double) * mpsi);
    phi = (double *) malloc(sizeof(double) * mpsi);

    for (i = 0; i < mpsi; i++) {
	    phism[i] = (double)rand();
	    phitmp[i] = (double)rand();
	    phi[i] = (double)rand();
    }

    smooth(igrid, mtheta, itran, phism, phitmp, phi, mpsi);
    return 0;

}
