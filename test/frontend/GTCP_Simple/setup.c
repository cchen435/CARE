#include "RngStream.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "bench_gtc.h"

void usage(const char *progname) {
  fprintf(stderr, "usage: %s <filename> <micell> <ntoroidal>\n", progname);
  fprintf(stderr, "\n"
                  "GTC benchmark.\n"
                  "  <filename>\n"
                  "    Input file.\n"
                  "  <micell>\n"
                  "    Number of particles per cell.\n"
                  "  <ntoroidal>\n"
                  "    1D domain decomposition (< mzetamax).\n"
                  "\n");
}

int read_input_file(char *filename, gtc_global_params_t *global_params,
                    gtc_particle_decomp_t *parallel_decomp,
                    gtc_radial_decomp_t *radial_decomp) {
  FILE *fp;
  char real_scan_str[100], int_scan_str[100], buf[100];

#if SINGLE_PRECISION
  strcpy(real_scan_str, "%*s %f");
#else
  strcpy(real_scan_str, "%*s %lf");
#endif
  strcpy(int_scan_str, "%*s %d");

  fp = fopen(filename, "r");
  while (fgets(buf, 100, fp) != NULL) {
    /* comment symbols */
    if (buf[0] == '!' || buf[0] == '#' || buf[0] == '/')
      continue;
    if (strncmp(buf, "irun", 4) == 0)
      sscanf(buf, int_scan_str, &(global_params->irun));

    if (strncmp(buf, "mstep", 5) == 0)
      sscanf(buf, int_scan_str, &(global_params->mstep));

    if (strncmp(buf, "mpsi", 4) == 0)
      sscanf(buf, int_scan_str, &(global_params->mpsi));

    if (strncmp(buf, "mthetamax", 9) == 0)
      sscanf(buf, int_scan_str, &(global_params->mthetamax));

    if (strncmp(buf, "mzetamax", 8) == 0)
      sscanf(buf, int_scan_str, &(global_params->mzetamax));

    if (strncmp(buf, "npe_radiald", 11) == 0)
      sscanf(buf, int_scan_str, &(radial_decomp->npe_radiald));

    if (strncmp(buf, "r0", 2) == 0)
      sscanf(buf, real_scan_str, &(global_params->r0));

    if (strncmp(buf, "nbound", 6) == 0)
      sscanf(buf, int_scan_str, &(global_params->nbound));

    if (strncmp(buf, "tauii", 5) == 0)
      sscanf(buf, real_scan_str, &(global_params->tauii));
  }
  fclose(fp);
  fprintf(stderr, "Finished reading input file.\n");

  return 0;
}

int gtc_mem_free(gtc_bench_data_t *gtc_input) {
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_aux_particle_data_t *aux_particle_data;
  gtc_radial_decomp_t *radial_decomp;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_remap_t *particle_remap;
  gtc_particle_collision_t *particle_collision;

  field_data = &(gtc_input->field_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  particle_data = &(gtc_input->particle_data);
  radial_decomp = &(gtc_input->radial_decomp);
  diagnosis_data = &(gtc_input->diagnosis_data);
  particle_remap = &(gtc_input->particle_remap);
  particle_collision = &(gtc_input->particle_collision);

  _mm_free(field_data->igrid);
  _mm_free(field_data->qtinv);
  _mm_free(field_data->mtheta);
  _mm_free(field_data->pgyro);
  _mm_free(field_data->tgyro);
  _mm_free(field_data->densityi);
  _mm_free(field_data->densityi_local);
  _mm_free(field_data->delt);
  _mm_free(field_data->den00);
  _mm_free(field_data->difft);
  _mm_free(field_data->rtemi);
  _mm_free(field_data->temp);
  _mm_free(field_data->dtemp);
  _mm_free(field_data->evector);
  _mm_free(field_data->heatflux);
  _mm_free(field_data->itran);
  _mm_free(field_data->rden);
  _mm_free(field_data->dnitmp);
  _mm_free(field_data->jtp1);
  _mm_free(field_data->jtp2);
  _mm_free(field_data->wtp1);
  _mm_free(field_data->wtp2);
  _mm_free(field_data->markeri);
  _mm_free(field_data->phitmps);

  _mm_free(field_data->hfluxpsi);
  _mm_free(field_data->pfluxpsi);
  _mm_free(field_data->vdrtmp);
  _mm_free(field_data->zonali);
  _mm_free(field_data->sendl);
  _mm_free(field_data->recvr);
  _mm_free(field_data->dtemper);
  _mm_free(field_data->phi);
  _mm_free(field_data->pmarki);
  _mm_free(field_data->phi00);
  _mm_free(field_data->phip00);
  _mm_free(field_data->gradt);
  _mm_free(field_data->deltat);

  _mm_free(field_data->indexp);
  _mm_free(field_data->nindex);
  _mm_free(field_data->ring);

  _mm_free(field_data->sendlf);
  _mm_free(field_data->sendrf);
  _mm_free(field_data->recvlf);
  _mm_free(field_data->recvrf);
  _mm_free(field_data->sendrsf);
  _mm_free(field_data->recvlsf);

  _mm_free(field_data->perr);
  _mm_free(field_data->ptilde);
  _mm_free(field_data->phitmp);
  _mm_free(field_data->dentmp);

  _mm_free(field_data->drdpa);
  _mm_free(field_data->diffta);
  _mm_free(field_data->idx1a);
  _mm_free(field_data->idx2a);
  _mm_free(field_data->recvl_index);

  _mm_free(particle_data->z0);
  _mm_free(particle_data->z1);
  _mm_free(particle_data->z2);
  _mm_free(particle_data->z3);
  _mm_free(particle_data->z4);
  _mm_free(particle_data->z5);

  _mm_free(particle_data->z00);
  _mm_free(particle_data->z01);
  _mm_free(particle_data->z02);
  _mm_free(particle_data->z03);
  _mm_free(particle_data->z04);
  _mm_free(particle_data->z05);
  _mm_free(particle_data->ztmp);
  _mm_free(particle_data->ztmp2);
  _mm_free(particle_data->psi_count);
  _mm_free(particle_data->psi_offsets);
  _mm_free(aux_particle_data->kzion);
  _mm_free(aux_particle_data->jtion0);
  _mm_free(aux_particle_data->jtion1);
  _mm_free(aux_particle_data->wzion);
  _mm_free(aux_particle_data->wpion);
  _mm_free(aux_particle_data->wtion0);
  _mm_free(aux_particle_data->wtion1);
  _mm_free(aux_particle_data->kzi);

  _mm_free(diagnosis_data->scalar_data);
  _mm_free(diagnosis_data->eflux);
  _mm_free(diagnosis_data->rmarker);
  _mm_free(diagnosis_data->dmark);
  _mm_free(diagnosis_data->dden);
  _mm_free(diagnosis_data->rdtemi);
  _mm_free(diagnosis_data->rdteme);
  _mm_free(diagnosis_data->flux_data);
  _mm_free(diagnosis_data->amp_mode);
  _mm_free(diagnosis_data->eigenmode);
  _mm_free(diagnosis_data->nmode);
  _mm_free(diagnosis_data->mmode);
#if CALC_MOMENTS
  _mm_free(diagnosis_data->moments);
  _mm_free(diagnosis_data->momentstmp);
  _mm_free(diagnosis_data->sendl_moments);
  _mm_free(diagnosis_data->recvr_moments);

#endif

#if OUTPUT
  _mm_free(diagnosis_data->eachdata_pe);
  _mm_free(diagnosis_data->eachdata_rad);
  _mm_free(diagnosis_data->alldata);
  _mm_free(diagnosis_data->psizeta);
#endif

  _mm_free(particle_collision->maxwell);
  _mm_free(particle_collision->tmp);
  _mm_free(particle_collision->tmp_loc);

  return 0;
}

int setup(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *global_params;
  gtc_field_data_t *field_data;
  gtc_aux_particle_data_t *aux_particle_data;
  gtc_particle_data_t *particle_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;
  gtc_diagnosis_data_t *diagnosis_data;
  gtc_particle_remap_t *particle_remap;
  gtc_particle_collision_t *particle_collision;

  /* parameters that were read from the command-line/input file */
  int irun, mstep, micell, mpsi, mthetamax;
  real r0;

  /* parameters that are initialized in this routine */
  /* temporary variables */
  int mtdiag;
  int msnap;
  real nonlinear;
  int mode00;
  int mi, mgrid;
  real zetamax, smu_inv;
  real delr, delz, pi2_inv;
  real a, a0, a1, q0, q1, q2, rc, rw, aion, qion, b0, temperature, edensity0,
      umax;
  int ndiag;

  int *kzion, *jtion0, *jtion1;
  real *wzion, *wpion, *wtion0, *wtion1;
  int *kzi;

  int *igrid, *mtheta;
  real *delt, *qtinv, *pgyro, *tgyro;
  wreal *densityi;
  wreal *densityi_local;

  real *evector;
  real *rtemi;
  real *temp, *dtemp;

  real *den00;
  real *difft;
  real *rden, *pfluxpsi, *vdrtmp, *hfluxpsi, *zonali, *wtp1, *wtp2;
  real *phi, *dtemper, *heatflux;
  int *jtp1, *jtp2;

  real *drdpa, *diffta;
  int *idx1a, *idx2a;
  int *recvl_index;

  int *psi_count;
  int *psi_offsets;

  int *indexp, *nindex;
  real *ring;
  wreal *recvr;
  wreal *sendl;
  wreal *dnitmp;

  real *perr, *ptilde, *phitmp, *dentmp;

  real *pmarki, *phi00, *phip00, *gradt;
  real *markeri;
  real *phitmps;

  real *sendrf, *recvrf, *sendlf, *recvlf, *sendrsf, *recvlsf;

  real *z0, *z1, *z2, *z3, *z4, *z5;
  real *z00, *z01, *z02, *z03, *z04, *z05, *z06;
  real *ztmp, *ztmp2;

  // variables for diagnosis
  real *scalar_data;
  real *eflux, *rmarker, *dmark, *dden, *rdtemi, *rdteme;
  real *flux_data;
  real *amp_mode, *eigenmode;
  int *nmode, *mmode;

  // variables for radial decomposition
  int n_rad_buf;
  real rho_max;

  /* int ntracer; */
  int mflux;

  RngStream rs;
  double *rng_seed;

  real deltaz, deltar, pi, ulength, gyroradius, rad, zdum, tdum;
  int mthetatmp, mimax;
  int *itran;
  real *deltat;
  int i, j, k, ip, indp, indt, ij, jt, m, mt, mi_local;
  real b, q, dtheta_dx, w_initial, zt1, zt2, vthi, z3tmp, wt;
  real c0, c1, c2, d1, d2, d3, rmi;
  real kappati, tstep;
  real r, rmax, rmin;

  // variables for collision
  int neop, neot, neoz;
  real *maxwell;
  real *tmp, *tmp_loc;
  real *dele, *delm, *marker, *ddum;
  real *dele_loc, *delm_loc, *marker_loc;
  real tau_vth;

  /*
   * ************************************************************************
   */

  global_params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  particle_data = &(gtc_input->particle_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);
  diagnosis_data = &(gtc_input->diagnosis_data);
  particle_remap = &(gtc_input->particle_remap);
  particle_collision = &(gtc_input->particle_collision);

  /* load the values that were previously read from input file */
  irun = global_params->irun;
  micell = global_params->micell;
  mstep = global_params->mstep;
  mpsi = global_params->mpsi;
  mthetamax = global_params->mthetamax;

  /* initialize other global parameters */
  ndiag = global_params->ndiag = 4;
  assert(mstep % ndiag == 0);
  msnap = global_params->msnap = 1;
  nonlinear = global_params->nonlinear = 1.0;
  global_params->paranl = 1.0;
  mode00 = global_params->mode00 = 1;
  tstep = global_params->tstep = 0.15;
  global_params->ncycle = 0;
  a = global_params->a = 0.358;
  a0 = global_params->a0 = 0.1;
  a1 = global_params->a1 = 0.9;
  q0 = global_params->q0 = 0.854;
  q1 = global_params->q1 = 0.0;
  q2 = global_params->q2 = 2.184;
  rc = global_params->rc = 0.5;
  rw = global_params->rw = 0.35;
  aion = global_params->aion = 1.0;
  qion = global_params->qion = 1.0;
  kappati = global_params->kappati = 6.9;
  global_params->aelectron = 5.443658e-4;
  global_params->qelectron = -1.0;
  global_params->kappan = 2.2;
  global_params->tite = 1.0;
  global_params->flow0 = 0.0;
  global_params->flow1 = 0.0;
  global_params->flow2 = 0.0;
  r0 = global_params->r0;
  b0 = global_params->b0 = 19100.0;
  temperature = global_params->temperature = 2500.0;
  edensity0 = global_params->edensity0 = 0.46e14;
  umax = global_params->umax = 4.0;
  mflux = global_params->mflux = 5;
  global_params->mmomentsoutput = 5;
  if (irun == 0)
    global_params->mstepall = 0;
  global_params->restart_freq = 5;
#if RESTART
  assert(mstep % global_params->restart_freq == 0);
#endif

  // global_params->nbound = 4;
  // tauii = -1.0 no collision tauii = 1.0 collision
  // global_params->tauii = 1.0;
  neop = particle_collision->neop = 32;
  neot = particle_collision->neot = 1;
  neoz = particle_collision->neoz = 1;

  /* Change the units of a0 and a1 from
   * units of "a" to units of "R_0" */
  a0 = a0 * a;
  a1 = a1 * a;

  /* Numerical constant */
  pi = 4.0 * atan(1.0);

  if (mstep < 2)
    mstep = 2;

  if (mstep / ndiag < msnap)
    msnap = mstep / ndiag;

  if (nonlinear < 0.5) {
    global_params->paranl = 0.0;
    mode00 = 0;
  }

  rc = rc * (a0 + a1);
  rw = 1.0 / (rw * (a1 - a0));

  /* Particle decomposition */

  /* domain decomposition in toroidal direction */
  zetamax = 2.0 * pi;
  deltaz = zetamax;

  fprintf(stderr, "number of radial parition=1 number of particle copies=1\n");

  /* Equilibrium unit: length (unit=cm) and time (unit=second) unit */
  ulength = r0;
  gyroradius = 102.0 * sqrt(aion * temperature) / (fabs(qion) * b0) / ulength;
  tstep = tstep * aion / (fabs(qion) * gyroradius * kappati);

  qtinv = (real *)malloc((mpsi + 1) * sizeof(real));
  itran = (int *)malloc((mpsi + 1) * sizeof(int));
  mtheta = (int *)malloc((mpsi + 1) * sizeof(int));
  deltat = (real *)malloc((mpsi + 1) * sizeof(real));
  rtemi = (real *)malloc((mpsi + 1) * sizeof(real));
  rden = (real *)malloc((mpsi + 1) * sizeof(real));
  igrid = (int *)malloc((mpsi + 1) * sizeof(int));
  pmarki = (real *)malloc((mpsi + 1) * sizeof(real));
  phi00 = (real *)malloc((mpsi + 1) * sizeof(real));
  den00 = (real *)malloc((mpsi + 1) * sizeof(real));
  phip00 = (real *)malloc((mpsi + 1) * sizeof(real));
  hfluxpsi = (real *)malloc((mpsi + 1) * sizeof(real));
  zonali = (real *)malloc((mpsi + 1) * sizeof(real));
  gradt = (real *)malloc((mpsi + 1) * sizeof(real));
  delt = (real *)malloc((mpsi + 1) * sizeof(real));
  pfluxpsi = (real *)malloc(mflux * sizeof(real));
  vdrtmp = (real *)malloc(mflux * sizeof(real));

  temp = (real *)malloc((mpsi + 1) * sizeof(real));
  dtemp = (real *)malloc((mpsi + 1) * sizeof(real));
  difft = (real *)malloc((mpsi + 1) * sizeof(real));

  /* Define poloidal grid */

  /* grid spacing */
  deltar = (a1 - a0) / mpsi;

  /* grid shift associated with fieldline following coordinates */
  tdum = 2.0 * pi * a1 / mthetamax;
  for (i = 0; i < mpsi + 1; i++) {
    rad = a0 + deltar * i;
    mthetatmp = 2 * (int)(pi * rad / tdum + 0.5);
    mt = (mthetatmp < mthetamax) ? mthetatmp : mthetamax;
    mtheta[i] = (mt > 2) ? mt : 2;
    deltat[i] = 2.0 * pi / mtheta[i];
    difft[i] = 0.5 / deltat[i];
    q = q0 + q1 * rad / a + q2 * rad * rad / (a * a);
    itran[i] = (int)(mtheta[i] / q + 0.5);
    qtinv[i] = ((real)mtheta[i]) / itran[i];
    qtinv[i] = 1.0 / qtinv[i];
    itran[i] = itran[i] - mtheta[i] * (itran[i] / mtheta[i]);

    rtemi[i] = 1.0;
    zonali[i] = 0.0;
    rden[i] = 1.0;
    temp[i] = 0.0;
    dtemp[i] = 0.0;
    phip00[i] = 0.0;
    den00[i] = 0.0;
    pmarki[i] = 0.0;
  }
  vthi = gyroradius * fabs(qion) / aion;
  /* primary ion marker temperature and parallel flow velocity */
  for (i = 0; i < mpsi + 1; i++) {
    temp[i] = 1.0;
    dtemp[i] = 0.0;
    temp[i] = 1.0 / (temp[i] * rtemi[i] * aion * vthi * vthi);
    /*inverse local temperature */
  }

  mtdiag = mthetamax;

  for (i = 0; i < mflux; i++) {
    pfluxpsi[i] = 0.0;
    vdrtmp[i] = 0.0;
  }

  igrid[0] = 1;
  for (i = 1; i < mpsi + 1; i++) {
    igrid[i] = igrid[i - 1] + mtheta[i - 1] + 1;
  }

  /* Number of grid on a poloidal plane */
  mgrid = 0;
  for (i = 0; i < mpsi + 1; i++) {
    mgrid += mtheta[i] + 1;
  }

  mi_local = micell * (mgrid - mpsi);
  mi = mi_local;
  if (mi < mi_local)
    mi = mi + 1;

  mimax = 2 * mi;

  delr = deltar / gyroradius;
  fprintf(stderr, "mi: %d, mi_total: %ld, mgrid: %d, mzetamax: 1\n", mi,
          ((long)mi), mgrid);

  /* pick inner/outer radius for ghost cells */
  n_rad_buf = 8.0 * gyroradius / deltar + 0.5;
  if (n_rad_buf < 3)
    n_rad_buf = 3; // need buffer for (large) stencil in grad op
  rho_max = n_rad_buf * deltar;
  printf("Using n_rad_buf=%d buffer cells: gyroradius/deltar=%f\n", n_rad_buf,
         gyroradius / deltar);

  /* cache bounds of local grid array */

  // allocate and initialize data for grid
  pgyro = (real *)malloc(4 * mgrid * sizeof(real));
  tgyro = (real *)malloc(4 * mgrid * sizeof(real));
  markeri = (real *)malloc(mgrid * sizeof(real));

  densityi = (wreal *)malloc(2 * mgrid * sizeof(wreal));
  densityi_local = (wreal *)malloc(2 * mgrid * sizeof(wreal));

  dnitmp = (wreal *)malloc(2 * mgrid * sizeof(wreal));
  recvr = (wreal *)malloc(mgrid * sizeof(wreal));
  sendl = (wreal *)malloc(mgrid * sizeof(wreal));

  // IDEAL_ALIGNMENT);
  // IDEAL_ALIGNMENT);
  int mumax2 = 8;
  real delvperp = umax / (real)mumax2;
  int m2pi = 16;
  int mpsi_loc = mpsi + 1;
  assert(mpsi_loc > 0);
  psi_count = (int *)malloc(mpsi_loc * sizeof(int));
  psi_offsets = (int *)malloc(mpsi_loc * sizeof(int));

  phi = (real *)malloc(2 * mgrid * sizeof(real));
  evector = (real *)malloc(2 * mgrid * sizeof(real));

  jtp1 = (int *)malloc(2 * mgrid * sizeof(int));
  jtp2 = (int *)malloc(2 * mgrid * sizeof(int));
  wtp1 = (real *)malloc(2 * mgrid * sizeof(real));
  wtp2 = (real *)malloc(2 * mgrid * sizeof(real));
  dtemper = (real *)malloc(mgrid * sizeof(real));
  heatflux = (real *)malloc(mgrid * sizeof(real));

  drdpa = (real *)malloc(mgrid * sizeof(real));
  diffta = (real *)malloc(mgrid * sizeof(real));
  idx1a = (int *)malloc(mgrid * sizeof(int));
  idx2a = (int *)malloc(mgrid * sizeof(int));
  recvl_index = (int *)malloc(mgrid * sizeof(int));

  sendrf = (real *)malloc(mgrid * sizeof(real));
  sendlf = (real *)malloc(mgrid * sizeof(real));
  recvrf = (real *)malloc(mgrid * sizeof(real));
  recvlf = (real *)malloc(mgrid * sizeof(real));
  sendrsf = (real *)malloc(3 * mgrid * sizeof(real));
  recvlsf = (real *)malloc(3 * mgrid * sizeof(real));

  perr = (real *)malloc(mgrid * sizeof(real));
  ptilde = (real *)malloc(mgrid * sizeof(real));
  dentmp = (real *)malloc(mgrid * sizeof(real));
  phitmp = (real *)malloc(mgrid * sizeof(real));
  phitmps = (real *)malloc(mgrid * 2 * sizeof(real));

  z0 = (real *)malloc(mimax * sizeof(real));
  z1 = (real *)malloc(mimax * sizeof(real));
  z2 = (real *)malloc(mimax * sizeof(real));
  z3 = (real *)malloc(mimax * sizeof(real));
  z4 = (real *)malloc(mimax * sizeof(real));
  z5 = (real *)malloc(mimax * sizeof(real));
  z00 = (real *)malloc(mimax * sizeof(real));
  z01 = (real *)malloc(mimax * sizeof(real));
  z02 = (real *)malloc(mimax * sizeof(real));
  z03 = (real *)malloc(mimax * sizeof(real));
  z04 = (real *)malloc(mimax * sizeof(real));
  z05 = (real *)malloc(mimax * sizeof(real));
#if TWO_WEIGHTS
  z06 = (real *)malloc(mimax * sizeof(real),
                       IDEAL_ALIGNMENT); // modified by bwang May 2013
#endif
  ztmp = (real *)malloc(mimax * sizeof(real));
  ztmp2 = (real *)malloc(mimax * sizeof(real));
  wzion = (real *)malloc(mimax * sizeof(real));
  wpion = (real *)malloc(4 * mimax * sizeof(real));
  wtion0 = (real *)malloc(4 * mimax * sizeof(real));
  wtion1 = (real *)malloc(4 * mimax * sizeof(real));
  kzion = (int *)malloc(mimax * sizeof(int));
  jtion0 = (int *)malloc(4 * mimax * sizeof(int));
  jtion1 = (int *)malloc(4 * mimax * sizeof(int));
  kzi = (int *)malloc(mimax * sizeof(int));

  maxwell = (real *)malloc(100001 * sizeof(real));
  tmp = (real *)malloc(4 * neop * neot * neoz * sizeof(real), IDEAL_ALIGNMENT);
  tmp_loc =
      (real *)malloc(3 * neop * neot * neoz * sizeof(real), IDEAL_ALIGNMENT);

  assert(pgyro != NULL);
  assert(tgyro != NULL);
  assert(markeri != NULL);
  assert(densityi != NULL);
  assert(densityi_local != NULL);

  assert(phi != NULL);
  assert(evector != NULL);
  assert(jtp1 != NULL);
  assert(jtp2 != NULL);
  assert(wtp1 != NULL);
  assert(wtp2 != NULL);
  assert(dtemper != NULL);
  assert(heatflux != NULL);

  assert(z0 != NULL);
  assert(z1 != NULL);
  assert(z2 != NULL);
  assert(z3 != NULL);
  assert(z4 != NULL);
  assert(z5 != NULL);
  assert(z00 != NULL);
  assert(z01 != NULL);
  assert(z02 != NULL);
  assert(z03 != NULL);
  assert(z04 != NULL);
  assert(z05 != NULL);
#if TWO_WEIGHTS
  assert(z06 != NULL); // modified by bwang May 2013
#endif
  assert(ztmp != NULL);
  assert(ztmp2 != NULL);
  assert(kzi != NULL);

  assert(wzion != NULL);
  assert(wpion != NULL);
  assert(wtion0 != NULL);
  assert(wtion1 != NULL);
  assert(kzion != NULL);
  assert(jtion0 != NULL);
  assert(jtion1 != NULL);

  assert(drdpa != NULL);
  assert(diffta != NULL);
  assert(idx1a != NULL);
  assert(idx2a != NULL);
  assert(recvl_index != NULL);

  assert(sendrsf != NULL);
  assert(recvlsf != NULL);
  assert(sendrf != NULL);
  assert(sendlf != NULL);
  assert(recvrf != NULL);
  assert(recvlf != NULL);
  assert(perr != NULL);
  assert(ptilde != NULL);
  assert(phitmp != NULL);
  assert(dentmp != NULL);
  assert(phitmps != NULL);

  assert(maxwell != NULL);
  assert(tmp != NULL);
  assert(tmp_loc != NULL);

  for (i = 0; i < mi; i++) {
    z0[i] = 0.0;
    z1[i] = 0.0;
    z2[i] = 0.0;
    z3[i] = 0.0;
    z4[i] = 0.0;
    z5[i] = 0.0;
    z00[i] = 0.0;
    z01[i] = 0.0;
    z02[i] = 0.0;
    z03[i] = 0.0;
    z04[i] = 0.0;
    z05[i] = 0.0;
    ztmp[i] = 0.0;
    ztmp2[i] = 0.0;
    wpion[4 * i] = 0.0;
    wpion[4 * i + 1] = 0.0;
    wpion[4 * i + 2] = 0.0;
    wpion[4 * i + 3] = 0.0;
    wtion0[4 * i] = 0.0;
    wtion0[4 * i + 1] = 0.0;
    wtion0[4 * i + 2] = 0.0;
    wtion0[4 * i + 3] = 0.0;
    wtion1[4 * i] = 0.0;
    wtion1[4 * i + 1] = 0.0;
    wtion1[4 * i + 2] = 0.0;
    wtion1[4 * i + 3] = 0.0;
    kzion[i] = 0;
    wzion[i] = 0.0;
    jtion0[4 * i] = 0;
    jtion0[4 * i + 1] = 0;
    jtion0[4 * i + 2] = 0;
    jtion0[4 * i + 3] = 0;
    jtion1[4 * i] = 0;
    jtion1[4 * i + 1] = 0;
    jtion1[4 * i + 2] = 0;
    jtion1[4 * i + 3] = 0;
  }

  for (i = 0; i < mimax; i++) {
    kzi[i] = 0;
  }

  for (i = 0; i < 2 * mgrid; i++) {
    phi[i] = 0.0;
    densityi[i] = 0.0;
    dnitmp[i] = 0.0;
  }

  for (i = 0; i < 2 * mgrid; i++) {
    densityi_local[i] = 0.0;
  }

  //#pragma omp parallel for private(i)
  for (i = 0; i < mpsi_loc; i++) {
    psi_count[i] = 0;
    psi_offsets[i] = 0;
  }

  for (i = 0; i < 2 * mgrid; i++) {
    jtp1[i] = 0;
    jtp2[i] = 0;
    wtp1[i] = 0.0;
    wtp2[i] = 0.0;
  }

  for (i = 0; i < mgrid; i++) {
    dtemper[i] = 0.0;
    heatflux[i] = 0.0;
    markeri[i] = 0.0;
  }

  for (i = 0; i < mgrid; i++) {
    pgyro[4 * i] = 0.0;
    pgyro[4 * i + 1] = 0.0;
    pgyro[4 * i + 2] = 0.0;
    pgyro[4 * i + 3] = 0.0;
    tgyro[4 * i] = 0.0;
    tgyro[4 * i + 1] = 0.0;
    tgyro[4 * i + 2] = 0.0;
    tgyro[4 * i + 3] = 0.0;
    sendrf[i] = 0.0;
    sendlf[i] = 0.0;
    recvrf[i] = 0.0;
    recvlf[i] = 0.0;
    perr[i] = 0.0;
    ptilde[i] = 0.0;
    phitmp[i] = 0.0;
    dentmp[i] = 0.0;

    drdpa[i] = 0.0;
    diffta[i] = 0.0;
    idx1a[i] = 0;
    idx2a[i] = 0;
  }

  for (i = 0; i < 6 * mgrid; i++) {
    evector[i] = 0.0;
  }

  for (i = 0; i < 2 * mgrid; i++) {
    phitmps[i] = 0.0;
  }

  for (i = 0; i < 3 * mgrid; i++) {
    sendrsf[i] = 0.0;
    recvlsf[i] = 0.0;
  }

  /* # of marker per grid, Jacobian */
  for (i = 0; i < mpsi + 1; i++) {
    r = a0 + deltar * i;
    for (j = 1; j < mtheta[i] + 1; j++) {
      ij = igrid[i] + j;
      zdum = deltaz;
      tdum = j * deltat[i] + zdum * qtinv[i];
      markeri[ij - 1] = pow((1.0 + r * cos(tdum)), 2);
      pmarki[i] = pmarki[i] + markeri[ij - 1];
    }
  }

  for (i = 0; i < mpsi + 1; i++) {
    r = a0 + deltar * i;
    rmax = min(a1, r + 0.5 * deltar);
    rmin = max(a0, r - 0.5 * deltar);
    tdum = mi * 1 * (rmax * rmax - rmin * rmin) / (a1 * a1 - a0 * a0);

    for (j = 1; j < mtheta[i] + 1; j++) {
      ij = igrid[i] + j;
      markeri[(ij - 1)] = tdum * markeri[(ij - 1)] / pmarki[i];
      markeri[(ij - 1)] = 1.0 / markeri[(ij - 1)]; // avoid divide operation
    }
    markeri[(igrid[i] - 1)] = markeri[(igrid[i] + mtheta[i] - 1)];
  }

  for (i = 0; i < mpsi + 1; i++) {
    r = a0 + deltar * i;
    rmax = min(a1, r + 0.5 * deltar);
    rmin = max(a0, r - 0.5 * deltar);
    tdum = mi * (rmax * rmax - rmin * rmin) / (a1 * a1 - a0 * a0);

    pmarki[i] = 1.0 / tdum;
  }

  for (i = 0; i < mpsi + 1; i++) {
    real rhoi;
    rad = a0 + deltar * i;
    for (j = 0; j < mtheta[i] + 1; j++) {
      ij = igrid[i] + j - 1;
      tdum = deltat[i] * j;
      q = q0 + q1 * rad / a + q2 * rad * rad / (a * a);
      b = 1.0 / (1.0 + rad * cos(tdum));
      dtheta_dx = 1.0 / rad;

      /* first two points perpendicular to field line on poloidal surface
       */
      rhoi = sqrt(2.0 / b) * gyroradius;
      pgyro[0 + 4 * ij] = -rhoi;
      pgyro[1 + 4 * ij] = rhoi;

      /* Non-orthogonality between psi and theta */
      tgyro[0 + 4 * ij] = 0;
      tgyro[1 + 4 * ij] = 0;

      /* the other two points tangential to field line */
      tgyro[2 + 4 * ij] = -rhoi * dtheta_dx;
      tgyro[3 + 4 * ij] = rhoi * dtheta_dx;

      pgyro[2 + 4 * ij] = rhoi * 0.5 * rhoi / rad;
      pgyro[3 + 4 * ij] = rhoi * 0.5 * rhoi / rad;
    }
  }

  for (i = 0; i < mpsi + 1; i++) {
    real r = a0 + deltar * ((real)i);
    real drdp = 1.0 / r;
    for (int j = 0; j < mtheta[i] + 1; j++) {
      int ij = igrid[i] + j - 1;
      int jt = j + 1 - mtheta[i] * (j / mtheta[i]);
      drdpa[ij] = drdp;
      diffta[ij] = difft[i];
      idx1a[ij] = igrid[i] + jt - 1;
      idx2a[ij] = igrid[i] + j - 2;
    }
  }

  for (int i = 0; i < mpsi + 1; i++) {
    int ii = igrid[i];
    int jt = mtheta[i];
    int iti = itran[i];

    for (int j = ii; j < ii + iti + 1; j++) {
      recvl_index[j - 1] = j + jt - iti - 1;
    }
    for (int j = ii + iti + 1; j < ii + jt + 1; j++) {
      recvl_index[j - 1] = j - iti - 1;
    }
  }

  /* initiate radial interpolation for grid */
  zdum = deltaz;
  for (i = 0; i < mpsi + 1; i++) {
    for (ip = 1; ip < 3; ip++) {
      indp = min(mpsi, i + ip);
      indt = max(0, i - ip);
      for (j = 0; j < mtheta[i] + 1; j++) {
        ij = igrid[i] + j;

        /* upward */
        tdum = (j * deltat[i] + zdum * (qtinv[i] - qtinv[indp])) / deltat[indp];
        jt = ((int)floor(tdum));
        wt = tdum - ((real)jt);
        jt = (jt + mtheta[indp]) % mtheta[indp];
        if (ip == 1) {
          wtp1[(ij - 1) * 2] = wt;
          jtp1[(ij - 1) * 2] = igrid[indp] + jt;
        } else {
          wtp2[(ij - 1) * 2] = wt;
          jtp2[(ij - 1) * 2] = igrid[indp] + jt;
        }

        /* downward */
        tdum = (j * deltat[i] + zdum * (qtinv[i] - qtinv[indt])) / deltat[indt];
        jt = ((int)floor(tdum));
        wt = tdum - ((real)jt);
        jt = (jt + mtheta[indt]) % mtheta[indt];
        if (ip == 1) {
          wtp1[(ij - 1) * 2 + 1] = wt;
          jtp1[(ij - 1) * 2 + 1] = igrid[indt] + jt;
        } else {
          wtp2[(ij - 1) * 2 + 1] = wt;
          jtp2[(ij - 1) * 2 + 1] = igrid[indt] + jt;
        }
      }
    }
  }

  /* initialize diagnostic data */
  diagnosis_data->ptracer[0] = diagnosis_data->ptracer[1] =
      diagnosis_data->ptracer[2] = diagnosis_data->ptracer[3] = 0.0;
  diagnosis_data->eflux_average = 0.0;
  int num_mode = 8;
  int m_poloidal = 9;

  scalar_data = (real *)malloc(19 * sizeof(real));
  eflux = (real *)malloc(mflux * sizeof(real));
  rmarker = (real *)malloc(mflux * sizeof(real));
  dmark = (real *)malloc(mflux * sizeof(real));
  dden = (real *)malloc(mflux * sizeof(real));
  rdtemi = (real *)malloc(mflux * sizeof(real));
  rdteme = (real *)malloc(mflux * sizeof(real));
  flux_data = (real *)malloc(6 * mflux * sizeof(real));
  amp_mode = (real *)malloc(4 * num_mode * sizeof(real));
  eigenmode = (real *)malloc(num_mode * m_poloidal * mpsi * sizeof(real),
                             IDEAL_ALIGNMENT);
  nmode = (int *)malloc(num_mode * sizeof(int));
  mmode = (int *)malloc(num_mode * sizeof(int));
#if CALC_MOMENTS
  real *moments = (real *)malloc(7 * 2 * mgrid * sizeof(real));
  real *momentstmp = (real *)malloc(7 * 2 * mgrid * sizeof(real));
  real *sendl_moments = (real *)malloc(7 * mgrid * sizeof(real));
  real *recvr_moments = (real *)malloc(7 * mgrid * sizeof(real));
#endif

#if OUTPUT
  real *eachdata_pe = (real *)malloc(mgrid * sizeof(real));
  real *eachdata_rad = (real *)malloc(mgrid * sizeof(real));
  real *alldata = (real *)malloc(mgrid * sizeof(real));
  real *psizeta =
      (real *)malloc(mtdiag * (mpsi / 2 - 8) * sizeof(real), IDEAL_ALIGNMENT);
#endif

  assert(scalar_data != NULL);
  assert(flux_data != NULL);
  assert(eflux != NULL);
  assert(rmarker != NULL);
  assert(dmark != NULL);
  assert(dden != NULL);
  assert(rdtemi != NULL);
  assert(rdteme != NULL);
  assert(amp_mode != NULL);
  assert(eigenmode != NULL);
  assert(nmode != NULL);
  assert(mmode != NULL);
#if CALC_MOMENTS
  assert(moments != NULL);
  assert(momentstmp != NULL);
  assert(sendl_moments != NULL);
  assert(recvr_moments != NULL);
#endif

#if OUTPUT
  assert(eachdata_pe != NULL);
  assert(eachdata_rad != NULL);
  assert(alldata != NULL);
  assert(psizeta != NULL);
#endif

  for (int i = 0; i < 19; i++) {
    scalar_data[i] = 0.0;
  }

  for (int i = 0; i < mflux; i++) {
    eflux[i] = 0.0;
    rmarker[i] = 0.0;
    dmark[i] = 0.0;
    dden[i] = 0.0;
    rdtemi[i] = 0.0;
    rdteme[i] = 0.0;
  }

  for (int i = 0; i < 6 * mflux; i++) {
    flux_data[i] = 0.0;
  }

  for (int i = 0; i < num_mode; i++) {
    for (int j = 0; j < 4; j++) {
      amp_mode[i * 4 + j] = 0.0;
    }

    for (int j = 0; j < m_poloidal * mpsi; j++) {
      eigenmode[i * m_poloidal * mpsi + j] = 0.0;
    }
  }

  nmode[0] = 5;
  nmode[1] = 7;
  nmode[2] = 9;
  nmode[3] = 11;
  nmode[4] = 13;
  nmode[5] = 15;
  nmode[6] = 18;
  nmode[7] = 20;
  mmode[0] = 7;
  mmode[1] = 10;
  mmode[2] = 13;
  mmode[3] = 15;
  mmode[4] = 18;
  mmode[5] = 21;
  mmode[6] = 25;
  mmode[7] = 28;

#if CALC_MOMENTS
  for (i = 0; i < 14 * mgrid; i++) {
    moments[i] = 0.0;
  }

  for (i = 0; i < 14 * mgrid; i++) {
    momentstmp[i] = 0.0;
  }

  for (i = 0; i < 7 * mgrid; i++) {
    sendl_moments[i] = 0.0;
    recvr_moments[i] = 0.0;
  }
#endif
  /* load function */
  c0 = 2.515517;
  c1 = 0.802853;
  c2 = 0.010328;
  d1 = 1.432788;
  d2 = 0.189269;
  d3 = 0.001308;
#if UNIFORM_PARTICLE_LOADING
  rmi = 1.0 / mi;
#else
  rmi = 1.0 / (mi);
#endif
  pi2_inv = 0.5 / pi;
  delr = 1.0 / deltar;
  w_initial = 1.0e-3;

  /* Initialize RNG */
  rng_seed = (double *)malloc(6 * sizeof(double));
  assert(rng_seed != NULL);
  rng_seed[0] = 12345;
  rng_seed[1] = 12345;
  rng_seed[2] = 12345;
  rng_seed[3] = 12345;
  rng_seed[4] = 12345;
  rng_seed[5] = 12345;
  // rng_seed[0] = 54321; rng_seed[1] = 54321; rng_seed[2] = 54321;
  // rng_seed[3] = 54321; rng_seed[4] = 54321; rng_seed[5] = 54321;
  // rng_seed[0] = 21354; rng_seed[1] = 21354; rng_seed[2] = 21354;
  // rng_seed[3] = 21354; rng_seed[4] = 21354; rng_seed[5] = 21354;

  RngStream_ParInit(0, 1, 0, 1, 1, rng_seed);
  rs = RngStream_CreateStream("", rng_seed);

  for (m = 0; m < mi; m++) {
    z0[m] = (real)RngStream_RandU01(rs);
    z1[m] = (real)RngStream_RandU01(rs);
    z2[m] = (real)RngStream_RandU01(rs);
    z3[m] = (real)RngStream_RandU01(rs);
    z4[m] = (real)RngStream_RandU01(rs);
    z5[m] = (real)RngStream_RandU01(rs);
  }

  real volumn_frac = (a1 * a1 - a0 * a0);
  real x2_l = a0 * a0 + 0 * volumn_frac;
  // randomly uniform distribute in r^2
  for (m = 0; m < mi; m++) {
    z0[m] = sqrt(x2_l + z0[m] * volumn_frac);
  }

  for (m = 0; m < mi; m++) {
    z1[m] = 2.0 * pi * (z1[m] - 0.5);
    z01[m] = z1[m];
  }

  for (i = 0; i < 10; i++) {
    for (m = 0; m < mi; m++) {
      z1[m] = z01[m] - 2.0 * z0[m] * sin(z1[m]);
    }
  }

  for (m = 0; m < mi; m++) {
    z1[m] = z1[m] * pi2_inv + 10.0;
    z1[m] = 2.0 * pi * (z1[m] - (int)z1[m]);
  }

  for (m = 0; m < mi; m++) {
    z3tmp = z3[m];
    z3[m] = z3[m] - 0.5;
#if NORMAL_DIST
    z03[m] = ((z3[m] > 0) ? 1.0 : -1.0);
    z3[m] = sqrt(max(1e-20, log(1.0 / max(1e-20, pow(z3[m], 2)))));
    z3[m] = z3[m] -
            (c0 + c1 * z3[m] + c2 * pow(z3[m], 2)) /
                (1.0 + d1 * z3[m] + d2 * pow(z3[m], 2) + d3 * pow(z3[m], 3));
    if (z3[m] > umax)
      z3[m] = z3tmp;
#else
    z3[m] = z3[m] * 2.0 * umax;
#endif
  }

  for (m = 0; m < mi; m++) {
    z2[m] = zetamax * z2[m];
#if NORMAL_DIST
    z3[m] = z03[m] * min(umax, z3[m]);
#endif
    z4[m] = 2.0 * w_initial * (z4[m] - 0.5) * (1.0 + cos(z1[m]));
#if NORMAL_DIST
    zt1 = max(1.0e-20, z5[m]);
    /* (z5[m] > 1.0e-20) ? z5[m] : 1.0e-20; */
    zt2 = min(2.0 * umax * umax, -2.0 * log(zt1));
    /* (umax*umax < -log(zt1)) ? umax*umax : -log(zt1); */
    z5[m] = max(2.0e-20, zt2);
#else
    z5[m] = z5[m] * 2.0 * umax * umax;
#endif
  }

  vthi = gyroradius * fabs(qion) / aion;
  for (m = 0; m < mi; m++) {
    z00[m] = 1.0 / (1.0 + z0[m] * cos(z1[m]));
#if !SQRT_PRECOMPUTED
    z0[m] = 0.5 * z0[m] * z0[m];
#endif
    z3[m] = vthi * z3[m] * aion / (qion * z00[m]);
    z5[m] = sqrt(0.5 * aion * vthi * vthi * z5[m] / z00[m]);
  }

#if NORMAL_DIST
  for (i = 0; i < mi; i++) {
    z05[i] = 1.0;
  }
#else
  // set z05[m] = f_0/g_0, z4[m] = f_0/g_0*weight;
  // real sum = 0.0;
  real cmratio = qion / aion;
  real velocity_vol = 4.0 * umax * umax * umax;

  for (m = 0; m < mi; m++) {
    real zion0m = z0[m];
    real zion1m = z1[m];
    real zion3m = z3[m];
    real zion5m = z5[m];
    real b = z00[m];
#if SQRT_PRECOMPUTED
    real r = zion0m;
#else
    real r = sqrt(2.0 * zion0m);
#endif
    int ii = abs_min_int(mpsi - 1, ((int)((r - a0) * delr)));

    real wp0 = ((real)(ii + 1)) - (r - a0) * delr;
    real wp1 = 1.0 - wp0;

    real tem = wp0 * temp[ii] + wp1 * temp[ii + 1];
    real upara = zion3m * b * cmratio;
    real energy = 0.5 * aion * upara * upara + zion5m * zion5m * b;
#if PROFILE_SHAPE == 0 // exp(x^6) use flat profile
#if FLAT_PROFILE
    z05[m] = velocity_vol * pow(pi, -1.5) * exp(-energy * tem);
#else
    printf("PROFILE_SHAPE==0 FLAT_PROFILE==0 not available\n");
    exit(1);
#endif

#elif PROFILE_SHAPE == 1 // sech2
#if FLAT_PROFILE
    z05[m] = velocity_vol * pow(pi, -1.5) * exp(-energy * tem);
#else
    real rfac1 = rw * (r - rc);
    real kappa = global_params->kappan - 1.5 * global_params->kappati;
    // real kappa = - 1.5*global_params->kappati;
    real kappa2 = exp(global_params->kappati * tanh(rfac1) / rw);
    z05[m] = velocity_vol * pow(pi, -1.5) * exp(-kappa * tanh(rfac1) / rw) *
             exp(-kappa2 * (energy * tem));
#endif
#endif
    z4[m] = z4[m] * z05[m];
    // sum += z05[m];
  }
// sum = sum/(real)mi;
// real sum_total = 0.0;
#endif

  delr = 1.0 / deltar;

  delz = 1.0 / deltaz;
  smu_inv = sqrt(aion) / (fabs(qion) * gyroradius);
  pi2_inv = 0.5 / pi;

  for (i = 0; i < mpsi + 1; i++) {
    delt[i] = 2.0 * pi / deltat[i];
  }

  for (i = 0; i < mgrid * 2; i++) {
    densityi[i] = 0.0;
  }

  indexp = (int *)malloc(65 * mgrid * sizeof(int));
  ring = (real *)malloc(65 * mgrid * sizeof(real), IDEAL_ALIGNMENT);
  nindex = (int *)malloc(mgrid * sizeof(int));
  assert(indexp != NULL);
  assert(ring != NULL);
  assert(nindex != NULL);

  for (i = 0; i < mgrid; i++) {
    nindex[i] = 0;
  }

  for (i = 0; i < mgrid * 65; i++) {
    ring[i] = 0.0;
    indexp[i] = 0;
  }

  // load maxwell table for collision
  FILE *file = fopen("maxwell.dat", "r");
  int i = 0;
  if (file == NULL)
    printf("File read error\n");
  while (fscanf(file, "%lf", &maxwell[i]) == 1) {
    i = i + 1;
  }
  assert(i == 100001);
  fclose(file);

  if (global_params->tauii > 0.0) {
    real r = 0.5 * (a0 + a1);
    real q = q0 + q1 * r / a + q2 * r * r / (a * a);
    real zeff = qion;
    real utime = 1.0 / (9580.0 * b0);
    tau_vth = 23.0 - log(sqrt(zeff * zeff * edensity0) / pow(temperature, 1.5));
    tau_vth = 2.09e7 * pow(temperature, 1.5) * sqrt(aion) /
              (edensity0 * tau_vth * utime * zeff);
    global_params->tauii = tau_vth * global_params->tauii;
    printf("collision time tauii=%e nu_star = %e q=%e\n", global_params->tauii,
           q / (global_params->tauii * gyroradius * pow(r, 1.5)), q);
  }
  dele = tmp;
  delm = tmp + neop * neot * neoz;
  marker = tmp + 2 * neop * neot * neoz;
  ddum = tmp + 3 * neop * neot * neoz;

  dele_loc = tmp_loc;
  delm_loc = tmp_loc + neop * neot * neoz;
  marker_loc = tmp_loc + 2 * neop * neot * neoz;

#if CALC_MOMENTS
  FILE *file = fopen("RUN_PARAMETERS.dat", "w");
  if (!file) {
    printf("no input file for RUN_PARAMETERS");
    MPI_Abort(MPI_COMM_WORLD, 1);
  }

  int nbyte = 5 * sizeof(int);
  int nbyte1 = 3 * (mpsi + 1) * sizeof(int);
  int nbyte2 = 2 * (mpsi + 1) * sizeof(real);
  int ii;
  int verbose = 0;

  ii = fwrite(&nbyte, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte=%d ii=%d\n", nbyte, ii);

  ii = fwrite(&mpsi, sizeof(int), 1, file);
  if (verbose)
    printf("mpsi=%d  ii=%d\n", mpsi, ii);

  ii = fwrite(&mgrid, sizeof(int), 1, file);
  if (verbose)
    printf("mgrid=%d ii=%d\n", mgrid, ii);

  ii = fwrite(&nbyte, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte=%d ii=%d\n", nbyte, ii);

  ii = fwrite(&nbyte1, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte1=%d ii=%d\n", nbyte1, ii);

  ii = fwrite(mtheta, (mpsi + 1) * sizeof(int), 1, file);
  ii = fwrite(igrid, (mpsi + 1) * sizeof(int), 1, file);
  ii = fwrite(itran, (mpsi + 1) * sizeof(int), 1, file);

  ii = fwrite(&nbyte1, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte1=%d ii=%d\n", nbyte1, ii);

  ii = fwrite(&nbyte2, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte2=%d ii=%d\n", nbyte2, ii);

  ii = fwrite(qtinv, (mpsi + 1) * sizeof(real), 1, file);
  ii = fwrite(deltat, (mpsi + 1) * sizeof(real), 1, file);

  ii = fwrite(&nbyte2, sizeof(int), 1, file);
  if (verbose)
    printf("nbyte2=%d ii=%d\n", nbyte2, ii);

  fclose(file);
#endif

  /*
   *****************************************************************
   */

  global_params->micell = micell;
  global_params->mi = mi;
  global_params->mimax = mimax;
  global_params->mpsi = mpsi;
  global_params->mgrid = mgrid;
  global_params->zetamax = zetamax;
  global_params->mthetamax = mthetamax;
  global_params->smu_inv = smu_inv;
  global_params->mpsi_loc = mpsi_loc;
  global_params->m2pi = m2pi;
  global_params->mumax2 = mumax2;
  global_params->delvperp = delvperp;
  global_params->a = a;
  global_params->a0 = a0;
  global_params->a1 = a1;
  global_params->aion = aion;
  global_params->delr = delr;
  global_params->delz = delz;
  global_params->q0 = q0;
  global_params->q1 = q1;
  global_params->q2 = q2;
  global_params->qion = qion;
  global_params->rc = rc;
  global_params->r0 = r0;
  global_params->rw = rw;
  global_params->b0 = b0;

  global_params->temperature = temperature;
  global_params->umax = umax;
  global_params->pi2_inv = pi2_inv;
  global_params->mtdiag = mtdiag;
  global_params->deltar = deltar;
  global_params->mode00 = mode00;
  global_params->gyroradius = gyroradius;
  global_params->deltaz = deltaz;
  global_params->holecount = 0;
  global_params->miinit = mi;
  global_params->tstep = tstep;
  global_params->pi = pi;

  /* currently unused */
  global_params->hole_remove_freq = 1;

  /* The binning frequency can be modified */
  /* Binning every time step works best on most systems */
  global_params->radial_bin_freq = 1;

  fprintf(stderr, "Binning and removing holes every %d steps\n",
          global_params->radial_bin_freq);

  aux_particle_data->kzion = kzion;
  aux_particle_data->wzion = wzion;
  aux_particle_data->wpion = wpion;
  aux_particle_data->jtion0 = jtion0;
  aux_particle_data->jtion1 = jtion1;
  aux_particle_data->wtion0 = wtion0;
  aux_particle_data->wtion1 = wtion1;
  aux_particle_data->kzi = kzi;

  diagnosis_data->scalar_data = scalar_data;
  diagnosis_data->eflux = eflux;
  diagnosis_data->rmarker = rmarker;
  diagnosis_data->dmark = dmark;
  diagnosis_data->dden = dden;
  diagnosis_data->rdtemi = rdtemi;
  diagnosis_data->rdteme = rdteme;
  diagnosis_data->flux_data = flux_data;
  diagnosis_data->amp_mode = amp_mode;
  diagnosis_data->eigenmode = eigenmode;
  diagnosis_data->nmode = nmode;
  diagnosis_data->mmode = mmode;
#if CALC_MOMENTS
  diagnosis_data->mgrid = mgrid;
  diagnosis_data->moments = moments;
  diagnosis_data->momentstmp = momentstmp;
  diagnosis_data->sendl_moments = sendl_moments;
  diagnosis_data->recvr_moments = recvr_moments;
#endif

#if OUTPUT
  diagnosis_data->eachdata_pe = eachdata_pe;
  diagnosis_data->eachdata_rad = eachdata_rad;
  diagnosis_data->alldata = alldata;
  diagnosis_data->psizeta = psizeta;
#endif

  field_data->igrid = igrid;
  field_data->delt = delt;
  field_data->qtinv = qtinv;
  field_data->mtheta = mtheta;
  field_data->pgyro = pgyro;
  field_data->tgyro = tgyro;
  field_data->densityi = densityi;
  field_data->densityi_local = densityi_local;
  field_data->evector = evector;
  field_data->rtemi = rtemi;
  field_data->temp = temp;
  field_data->dtemp = dtemp;
  field_data->mmpsi = 22;
  field_data->itran = itran;
  field_data->jtp1 = jtp1;
  field_data->jtp2 = jtp2;
  field_data->rden = rden;
  field_data->zonali = zonali;
  field_data->dtemper = dtemper;
  field_data->wtp1 = wtp1;
  field_data->wtp2 = wtp2;
  field_data->indexp = indexp;
  field_data->nindex = nindex;
  field_data->ring = ring;
  field_data->recvr = recvr;
  field_data->sendl = sendl;
  field_data->dnitmp = dnitmp;
  field_data->heatflux = heatflux;
  field_data->hfluxpsi = hfluxpsi;
  field_data->pfluxpsi = pfluxpsi;
  field_data->vdrtmp = vdrtmp;
  field_data->difft = difft;
  field_data->phi = phi;
  field_data->pmarki = pmarki;
  field_data->den00 = den00;
  field_data->phi00 = phi00;
  field_data->phip00 = phip00;
  field_data->gradt = gradt;
  field_data->markeri = markeri;
  field_data->deltat = deltat;

  field_data->drdpa = drdpa;
  field_data->diffta = diffta;
  field_data->idx1a = idx1a;
  field_data->idx2a = idx2a;
  field_data->recvl_index = recvl_index;

  field_data->sendrf = sendrf;
  field_data->recvrf = recvrf;
  field_data->sendlf = sendlf;
  field_data->recvlf = recvlf;
  field_data->sendrsf = sendrsf;
  field_data->recvlsf = recvlsf;

  field_data->perr = perr;
  field_data->ptilde = ptilde;
  field_data->phitmp = phitmp;
  field_data->phitmps = phitmps;
  field_data->dentmp = dentmp;

  particle_data->z0 = z0;
  particle_data->z1 = z1;
  particle_data->z2 = z2;
  particle_data->z3 = z3;
  particle_data->z4 = z4;
  particle_data->z5 = z5;
  particle_data->z00 = z00;
  particle_data->z01 = z01;
  particle_data->z02 = z02;
  particle_data->z04 = z04;
  particle_data->z05 = z05;
#if TWO_WEIGHTS
  particle_data->z06 = z06; // modified by bwang May 2013
#endif
  particle_data->ztmp = ztmp;
  particle_data->ztmp2 = ztmp2;
  particle_data->psi_count = psi_count;
  particle_data->psi_offsets = psi_offsets;

  radial_decomp->rho_max = rho_max;
  particle_collision->maxwell = maxwell;
  particle_collision->tmp = tmp;
  particle_collision->dele = dele;
  particle_collision->delm = delm;
  particle_collision->marker = marker;
  particle_collision->ddum = ddum;
  particle_collision->tmp_loc = tmp_loc;
  particle_collision->dele_loc = dele_loc;
  particle_collision->delm_loc = delm_loc;
  particle_collision->marker_loc = marker_loc;
  /*
   *****************************************************************
   */

  RngStream_DeleteStream(rs);
  free(rng_seed);
  return 0;
}
