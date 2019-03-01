#include "bench_gtc.h"

int restart_read(gtc_bench_data_t * gtc_input){
  gtc_global_params_t     *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t   *radial_decomp;
  
  params =  &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  diagnosis_data = &(gtc_input->diagnosis_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp   = &(gtc_input->radial_decomp);

  size_t ii;
  int nbytes, m;
  int mi, me, ntracer;
  real *rdtemi, *rdteme, *pfluxpsi, *phi, *phip00, *zonali, *zonale;
  real etracer, ptracer[4];
  real *zion0, *zion1, *zion2, *zion3, *zion4, *zion5, *zion05;
  int mflux = params->mflux;
  int mzeta = params->mzeta;
  int mpsi = params->mpsi;
  int nloc_over = radial_decomp->nloc_over;

  rdtemi = diagnosis_data->rdtemi;
  rdteme = diagnosis_data->rdteme;
  pfluxpsi = field_data->pfluxpsi;
  phi = field_data->phi;			
  phip00 = field_data->phip00;
  zonali = field_data->zonali;
  //zonale = field_data->zonele;
  zonale = (real *) malloc((mpsi+1)*sizeof(real));
  zion0 = particle_data->z0;
  zion1 = particle_data->z1;
  zion2 = particle_data->z2;
  zion3 = particle_data->z3;
  zion4 = particle_data->z4;
  zion5 = particle_data->z5;
  zion05 = particle_data->z05;

  int verbose = 1;
  char cdum[19];
  int mype = parallel_decomp->mype;
  if (mype < 10)
    sprintf(cdum, "DATA_RESTART.0000%d", mype);
  else if (mype < 100)
    sprintf(cdum, "DATA_RESTART.000%d", mype);
  else if (mype < 1000)
    sprintf(cdum, "DATA_RESTART.00%d", mype);
  else if (mype < 10000) 
    sprintf(cdum, "DATA_RESTART.0%d", mype);
  else 
    sprintf(cdum, "DATA_RESTART.%d", mype);
    
  FILE *file = fopen(cdum, "r");
  if (!file) {
    printf("no input file for restart");
    MPI_Abort(MPI_COMM_WORLD,1);
  }

  if (verbose&&mype==0) printf("read %s\n", cdum);
  // read starting records of fortran unformatted file
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("Start record length =%d ii=%zd\n", nbytes, ii);
  ii = fread(&mi, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("mi=%d ii=%zd\n", mi, ii);
  //  ii = fread(&me, sizeof(me), 1, file);
  ii = fread(&ntracer, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("ntracer=%d ii=%zd\n", ntracer,ii);
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("End record length =%d ii=%zd \n", nbytes, ii);

  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("Start record length =%d ii=%zd \n", nbytes, ii);
  ii = fread(rdtemi, sizeof(real), mflux, file);
  if (verbose&&mype==0) printf("ii=%zd\n", ii);
  //ii = fread(rdteme, sizeof(real), mflux, file);
  ii = fread(pfluxpsi, sizeof(real), mflux, file);
  if (verbose&&mype==0) printf("ii=%zd\n", ii);
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("End record length =%d ii=%zd \n", nbytes, ii);

  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("Start record length =%d ii=%zd \n", nbytes, ii);
  ii = fread(phi, sizeof(real), (mzeta+1)*nloc_over, file);
  if (verbose&&mype==0) printf("ii=%zd\n", ii);
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("End record length =%d ii=%zd \n", nbytes, ii);

  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("Start record length =%d ii=%zd \n", nbytes, ii);
  //ii = fread(phip00, sizeof(real), mpsi+1, file);
  ii = fread(zonali, sizeof(real), mpsi+1, file);
  if (verbose&&mype==0) printf("ii=%zd\n", ii);
  //ii = fread(zonale, sizeof(real), mpsi+1, file);
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("End record length =%d ii=%zd \n", nbytes, ii);

  if (mype==0){
    ii = fread(&nbytes, sizeof(int), 1, file);
    if (verbose) printf("Start record length =%d ii=%zd \n", nbytes, ii);
    ii = fread(&etracer, sizeof(real), 1, file);
    if (verbose&&mype==0) printf("ii=%zd\n", ii);
    ii= fread(ptracer, sizeof(real), 4, file);
    if (verbose&&mype==0) printf("ii=%zd\n", ii);
    ii = fread(&nbytes, sizeof(int), 1, file);
    if (verbose) printf("End record length =%d ii=%zd \n", nbytes, ii);
  }

  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&&mype==0) printf("Start record length =%d ii=%zd \n", nbytes, ii);
  for (int m=0; m<mi; m++){
    ii = fread(zion0+m, sizeof(real), 1, file);
    ii = fread(zion1+m, sizeof(real), 1, file);
    ii = fread(zion2+m, sizeof(real), 1, file);
    ii = fread(zion3+m, sizeof(real), 1, file);
    ii = fread(zion4+m, sizeof(real), 1, file);
    ii = fread(zion5+m, sizeof(real), 1, file);
    //    if (mype==0&&m==99)
    //      printf("%e %e %e %e %e %e\n", zion0[m], zion1[m], zion2[m], zion3[m], zion4[m], zion5[m]);
  }
  ii = fread(zion05, sizeof(real), mi, file);
  ii = fread(&nbytes, sizeof(int), 1, file);
  if (verbose&mype==0) printf("End record length =%d ii=%zd \n", nbytes, ii);

  fclose(file);
  params->mi = mi;
  // params->ntracer = ntracer;
  diagnosis_data->ptracer[0] = ptracer[0];
  diagnosis_data->ptracer[1] = ptracer[1];
  diagnosis_data->ptracer[2] = ptracer[2];
  diagnosis_data->ptracer[3] = ptracer[3];

  free (zonale);
  return 0;
}
