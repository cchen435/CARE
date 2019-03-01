#include "bench_gtc.h"
#include <assert.h>

int output(gtc_bench_data_t *gtc_input) {
#if OUTPUT
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;

  const int *__restrict__ igrid;
  const int *__restrict__ mtheta;
  const int *__restrict__ itran;
  const real *__restrict__ phi;
  const real *__restrict__ qtinv;
  const real *__restrict__ delt;

  real *__restrict__ eachdata_pe;
  real *__restrict__ eachdata_rad;
  real *__restrict__ alldata;
  real *__restrict__ psizeta;

  int mpsi, mzeta, mzetamax, mgrid, mtdiag;
  real gyroradius;
  int npartdom, myrank_partd;

  int nloc_nover, igrid_nover_in, igrid_nover_out, igrid_in;

  // temp variables
  int npoint, icount, psi_size;
  real delz;

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  diagnosis_data = &(gtc_input->diagnosis_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);

  mpsi = params->mpsi;
  mzeta = params->mzeta;
  mzetamax = params->mzetamax;
  mgrid = params->mgrid;
  mtdiag = params->mtdiag;
  gyroradius = params->gyroradius;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;
  itran = field_data->itran;
  phi = field_data->phi;
  qtinv = field_data->qtinv;
  delt = field_data->delt;
  myrank_partd = parallel_decomp->myrank_partd;

  nloc_nover = radial_decomp->nloc_nover;
  igrid_nover_in = radial_decomp->igrid_nover_in;
  igrid_nover_out = radial_decomp->igrid_nover_out;
  igrid_in = radial_decomp->igrid_in;

  eachdata_pe = diagnosis_data->eachdata_pe;
  eachdata_rad = diagnosis_data->eachdata_rad;
  alldata = diagnosis_data->alldata;
  psizeta = diagnosis_data->psizeta;

  npoint = mzetamax / 10;
  delz = 1.0 / (real)mtdiag;
  icount = mgrid * mzeta;
  psi_size = mpsi / 2 - 4 - 5 + 1;

  int *disp = (int *)malloc(sizeof(int));
  int *disp_tmp = (int *)malloc(sizeof(int));
  int *recvsize = (int *)malloc(sizeof(int));
  int *recvsize_tmp = (int *)malloc(sizeof(int));
  disp[0] = 0;
  disp_tmp[0] = 0;
  recvsize[0] = 0;
  recvsize_tmp[0] = 0;

  disp[0] = (igrid_nover_in - 1) * mzeta;
  recvsize[0] = nloc_nover * mzeta;

  if (nloc_nover != 0)
    assert(disp[myrank_partd] + recvsize[myrank_partd] == mgrid);

  for (int ij = igrid_nover_in; ij < igrid_nover_out + 1; ij++) {
    for (int k = 1; k < mzeta + 1; k++) {
      eachdata_pe[(ij - igrid_nover_in) * mzeta + k - 1] =
          phi[(ij - igrid_in) * (mzeta + 1) + k] / (gyroradius * gyroradius);
    }
  }

  // gather data to myrank_partd == 0
  MPI_Gatherv(eachdata_pe, nloc_nover * mzeta, MPI_MYREAL, eachdata_rad,
              recvsize_tmp, disp_tmp, MPI_MYREAL, 0,
              parallel_decomp->partd_comm);

  // gather data to myrank_partd ==0, myrank_toroidald == 0
  if (myrank_partd == 0) {
    MPI_Gather(eachdata_rad, icount, MPI_MYREAL, alldata, icount, MPI_MYREAL, 0,
               parallel_decomp->toroidal_comm);
  }

  real *alldata_ghost = (real *)malloc(mgrid * mzeta * sizeof(real));
  for (int j = 0; j < mgrid; j++) {
    for (int k = 1; k < mzeta + 1; k++) {
      alldata_ghost[j * mzeta + k - 1] = alldata[j * mzeta + k - 1];
    }
  }

  for (int i = 0; i < mzetamax - 1; i++) {
    for (int j = 0; j < mgrid; j++) {
      for (int k = 1; k < mzeta + 1; k++) {
        alldata[i * icount + j * mzeta + k - 1] =
            0.5 * (alldata[i * icount + j * mzeta + k - 1] +
                   alldata[(i + 1) * icount + j * mzeta + k - 1]);
      }
    }
  }

  for (int j = 0; j < mgrid; j++) {
    for (int k = 1; k < mzeta + 1; k++) {
      alldata[(mzetamax - 1) * icount + j * mzeta + k - 1] =
          0.5 * (alldata[(mzetamax - 1) * icount + j * mzeta + k - 1] +
                 alldata_ghost[j * mzeta + k - 1]);
    }
  }
  free(alldata_ghost);

  // 2D data with field-line averaged around theta==0
  int i, j, k, kz, ip, jt, kp, jtp, km, jtm;
  real zdum, tdum;

  for (j = 0; j < mtdiag; j++) {
    zdum = delz * (real)j;
    kz = abs_min_int(mzetamax - 1, (int)(zdum * (real)mzetamax));

    for (i = 5; i <= mpsi / 2 - 4; i++) {
      ip = 2 * i - 1;

      tdum = 10.0 - zdum * qtinv[ip];
      tdum = (tdum - (int)tdum) * delt[ip] + 0.5;
      jt = abs_min_int(mtheta[ip], (int)tdum);

      psizeta[j * psi_size + i - 5] = alldata[kz * mgrid + igrid[ip] + jt - 1];

      for (k = 1; k < npoint + 1; k++) {
        kp = kz + k;
        jtp = jt;
        if (kp > mzetamax - 1) {
          kp = kp - mzetamax;
          jtp = jtp + itran[ip];
          if (jtp > mtheta[ip])
            jtp = jtp - mtheta[ip];
        }
        km = kz - k;
        jtm = jt;
        if (km < 0) {
          km = km + mzetamax;
          jtm = jtm - itran[ip];
          if (jtm < 0)
            jtm = jtm + mtheta[ip];
        }

        psizeta[j * psi_size + i - 5] +=
            alldata[km * mgrid + igrid[ip] + jtm - 1] +
            alldata[kp * mgrid + igrid[ip] + jtp - 1];
      }
    }
  }

  real point_size = (real)(2 * npoint + 1);
  for (int i = 0; i < mtdiag * psi_size; i++) {
    psizeta[i] = psizeta[i] / point_size;
  }

  FILE *file = fopen("./OUTPUT/OUTPUT", "a");

  fwrite(psizeta, sizeof(real), mtdiag * psi_size, file);
  fclose(file);

  free(disp);
  free(disp_tmp);
  free(recvsize);
  free(recvsize_tmp);
#endif

  return 0;
