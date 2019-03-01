#include <stdint.h>
#include "bench_gtc.h"

int restart_read(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  diagnosis_data = &(gtc_input->diagnosis_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);

  size_t ii;
  int mstepall, mi, ntracer;
  real *rdtemi, *pfluxpsi, *phi, *phip00, *zonali;
  real etracer, ptracer[4];
  real *zion0, *zion1, *zion2, *zion3, *zion4, *zion5, *zion05;
  int mflux = params->mflux;
  int mzeta = params->mzeta;
  int mpsi = params->mpsi;
  int nloc_over = radial_decomp->nloc_over;

  rdtemi = diagnosis_data->rdtemi;
  pfluxpsi = field_data->pfluxpsi;
  phi = field_data->phi;
  phip00 = field_data->phip00;
  zonali = field_data->zonali;

  zion0 = particle_data->z0;
  zion1 = particle_data->z1;
  zion2 = particle_data->z2;
  zion3 = particle_data->z3;
  zion4 = particle_data->z4;
  zion5 = particle_data->z5;
  zion05 = particle_data->z05;

  int verbose = 0;
  char cdum[29];
  sprintf(cdum, "./RESTART/DATA_RESTART");

  FILE *file = fopen(cdum, "r");
  if (!file) {
    printf("no input file for restart");
    MPI_Abort(MPI_COMM_WORLD, 1);
  }
  ii = fread(&mstepall, sizeof(int), 1, file);
  if (verbose) printf("mstepall=%d ii=%zd\n", mstepall, ii);
  ii = fread(&mi, sizeof(int), 1, file);
  if (verbose) printf("mi=%d ii=%zd\n", mi, ii);
  ii = fread(&ntracer, sizeof(int), 1, file);
  if (verbose) printf("ntracer=%d ii=%zd\n", ntracer, ii);
  ii = fread(rdtemi, sizeof(real), mflux, file);
  if (verbose) printf("rdtemi size ii=%zd\n", ii);
  ii = fread(pfluxpsi, sizeof(real), mflux, file);
  if (verbose) printf("pfluxpsi size ii=%zd\n", ii);
  ii = fread(phi, sizeof(real), (mzeta + 1) * nloc_over, file);
  if (verbose) printf("phi size ii=%zd\n", ii);
  ii = fread(zonali, sizeof(real), mpsi + 1, file);
  if (verbose) printf("zonali size ii=%zd\n", ii);

  ii = fread(&etracer, sizeof(real), 1, file);
  if (verbose) printf("etracer size ii=%zd\n", ii);
  ii = fread(ptracer, sizeof(real), 4, file);
  if (verbose) printf("ptracer size ii=%zd\n", ii);
  ii = fread(zion0, sizeof(real), mi, file);
  ii = fread(zion1, sizeof(real), mi, file);
  ii = fread(zion2, sizeof(real), mi, file);
  ii = fread(zion3, sizeof(real), mi, file);
  ii = fread(zion4, sizeof(real), mi, file);
  ii = fread(zion5, sizeof(real), mi, file);
  ii = fread(zion05, sizeof(real), mi, file);

  params->mstepall = mstepall;
  params->mi = mi;
  params->ntracer = ntracer;
  diagnosis_data->ptracer[0] = ptracer[0];
  diagnosis_data->ptracer[1] = ptracer[1];
  diagnosis_data->ptracer[2] = ptracer[2];
  diagnosis_data->ptracer[3] = ptracer[3];
  diagnosis_data->scalar_data[14] = etracer;

  fclose(file);

  // free (zonale);
  return 0;
}

int restart_write(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  diagnosis_data = &(gtc_input->diagnosis_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);

  size_t ii;
  int mstep, mstepall, mi, ntracer;
  real *rdtemi, *pfluxpsi, *phi, *phip00, *zonali;
  real etracer, ptracer[4];
  real *zion0, *zion1, *zion2, *zion3, *zion4, *zion5, *zion05;
  int mflux = params->mflux;
  int mzeta = params->mzeta;
  int mpsi = params->mpsi;
  int nloc_over = radial_decomp->nloc_over;

  mstep = params->mstep;
  mstepall = params->mstepall;
  mstepall += istep;

  mi = params->mi;
  ntracer = params->ntracer;

  rdtemi = diagnosis_data->rdtemi;
  pfluxpsi = field_data->pfluxpsi;
  phi = field_data->phi;
  phip00 = field_data->phip00;
  zonali = field_data->zonali;

  ptracer[0] = diagnosis_data->ptracer[0];
  ptracer[1] = diagnosis_data->ptracer[1];
  ptracer[2] = diagnosis_data->ptracer[2];
  ptracer[3] = diagnosis_data->ptracer[3];
  etracer = diagnosis_data->scalar_data[14];

  zion0 = particle_data->z0;
  zion1 = particle_data->z1;
  zion2 = particle_data->z2;
  zion3 = particle_data->z3;
  zion4 = particle_data->z4;
  zion5 = particle_data->z5;
  zion05 = particle_data->z05;

  int verbose = 0;
  char cdum[29];

  sprintf(cdum, "./RESTART/DATA_RESTART");

  FILE *file = fopen(cdum, "w");
  if (!file) {
    printf("no input file for restart");
    exit(1);
  }
  if (verbose) printf("read %s\n", cdum);

  ii = fwrite(&mstepall, sizeof(int), 1, file);
  if (verbose) printf("mstepall=%d ii=%zd\n", mstepall, ii);
  ii = fwrite(&mi, sizeof(int), 1, file);
  if (verbose) printf("mi=%d ii=%zd\n", mi, ii);
  ii = fwrite(&ntracer, sizeof(int), 1, file);
  if (verbose) printf("ntracer=%d ii=%zd\n", ntracer, ii);
  ii = fwrite(rdtemi, sizeof(real), mflux, file);
  if (verbose) printf("rdtemi size ii=%zd\n", ii);
  ii = fwrite(pfluxpsi, sizeof(real), mflux, file);
  if (verbose) printf("pfluxpsi size ii=%zd\n", ii);
  ii = fwrite(phi, sizeof(real), (mzeta + 1) * nloc_over, file);
  if (verbose) printf("phi size ii=%zd\n", ii);
  ii = fwrite(zonali, sizeof(real), mpsi + 1, file);
  if (verbose) printf("zonali size ii=%zd\n", ii);

  ii = fwrite(&etracer, sizeof(real), 1, file);
  if (verbose) printf("etracer size ii=%zd\n", ii);
  ii = fwrite(ptracer, sizeof(real), 4, file);
  if (verbose) printf("ptracer size ii=%zd\n", ii);

  ii = fwrite(zion0, sizeof(real), mi, file);
  ii = fwrite(zion1, sizeof(real), mi, file);
  ii = fwrite(zion2, sizeof(real), mi, file);
  ii = fwrite(zion3, sizeof(real), mi, file);
  ii = fwrite(zion4, sizeof(real), mi, file);
  ii = fwrite(zion5, sizeof(real), mi, file);
  ii = fwrite(zion05, sizeof(real), mi, file);

  fclose(file);

  // free (zonale);
  return 0;
}
