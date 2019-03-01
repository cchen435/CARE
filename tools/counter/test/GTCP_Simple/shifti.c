#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bench_gtc.h"

int radial_bin_particles(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_aux_particle_data_t *aux_particle_data;
  gtc_particle_decomp_t *parallel_decomp;
  gtc_radial_decomp_t *radial_decomp;

  real *z0, *z1, *z2, *z3, *z4, *z5;
  real *z00, *z01, *z02, *z03, *z04, *z05;

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  parallel_decomp = &(gtc_input->parallel_decomp);
  radial_decomp = &(gtc_input->radial_decomp);

  if (((istep % params->radial_bin_freq) != 0) || (irk == 1)) {
    return 0;
  }

  z0 = particle_data->z0;
  z1 = particle_data->z1;
  z2 = particle_data->z2;
  z3 = particle_data->z3;
  z4 = particle_data->z4;
  z5 = particle_data->z5;
  z00 = particle_data->z00;
  z01 = particle_data->z01;
  z02 = particle_data->z02;
  z03 = particle_data->z03;
  z04 = particle_data->z04;
  z05 = particle_data->z05;
  int *psi_count = particle_data->psi_count;
  int *psi_offsets = particle_data->psi_offsets;

  int *ipval = aux_particle_data->kzi;
  real *ztmp = particle_data->ztmp;
  real *ztmp2 = particle_data->ztmp2;
  int mpsi = params->mpsi;
  real a0 = params->a0;
  real delr = params->delr;

  int mstep = params->mstep;
  int mi = params->mi;
  int mi_new = mi;
  int mpsi_loc = params->mpsi_loc;
  assert(mpsi_loc == mpsi + 1);

  int *psi_count_l, *psi_offsets_l;
  int i, j, m;

  psi_count_l = psi_count;
  psi_offsets_l = psi_offsets;

  //    for (i=0; i<mpsi+1; i++) {
  for (i = 0; i < mpsi_loc; i++) {
    psi_count_l[i] = 0;
    psi_offsets_l[i] = 0;
  }

  for (m = 0; m < mi; m++) {
    real zetatmp = z2[m];
    if (zetatmp != HOLEVAL) {
      real psitmp = z0[m];
      assert(psitmp > 0.0);
      real r = sqrt(2.0 * psitmp);
      int iptmp = (int)((r - a0) * delr + 0.5);
      int ip = abs_min_int(mpsi, iptmp);

      ip = ip;
      // assert(ip>=0);
      // assert(ip<mpsi_loc);
      psi_count_l[ip]++;
      ipval[m] = ip;

    } else {
      ipval[m] = -1;
    }
  }

  // for (i=0; i<mpsi; i++) {
  for (i = 0; i < mpsi_loc - 1; i++) {
    int full_bin_count = 0;
    full_bin_count += psi_count[i];
    psi_offsets[i + 1] = psi_offsets[i] + full_bin_count;
  }

  if (psi_offsets[mpsi_loc - 1] + psi_count[mpsi_loc - 1] !=
      (mi - (params->holecount))) {
    fprintf(stderr, "psi offset sum %d, mi %d\n",
            psi_offsets[mpsi_loc - 1] + psi_count[mpsi_loc - 1], mi);
    exit(1);
  }
  mi_new = mi - params->holecount;
  params->mi = mi_new;
  params->holecount = 0;

  // for (i=0; i<mpsi+1; i++) {
  for (i = 0; i < mpsi_loc; i++) {
    psi_count_l[i] = 0;
  }

  for (m = 0; m < mi; m++) {
    int ip = ipval[m];

    if (ip != -1) {
      // assert(ip>=0);
      // assert(ip<mpsi_loc);
      int new_pos = psi_offsets_l[ip] + psi_count_l[ip]++;
      z00[new_pos] = z0[m];
      z01[new_pos] = z1[m];
      z02[new_pos] = z2[m];
      z03[new_pos] = z3[m];
      z04[new_pos] = z4[m];
      ztmp[new_pos] = z5[m];
      ztmp2[new_pos] = z05[m];
    }
  }

  for (m = 0; m < mi_new; m++) {
    z0[m] = z00[m];
    z1[m] = z01[m];
    z2[m] = z02[m];
    z3[m] = z03[m];
    z4[m] = z04[m];
  }

  real *tmp_ptr, *tmp_ptr2;
  /* swap ztmp and z5 */
  tmp_ptr = particle_data->z5;
  particle_data->z5 = particle_data->ztmp;
  particle_data->ztmp = tmp_ptr;

  /* swap ztmp2 and z05 */
  tmp_ptr2 = particle_data->z05;
  particle_data->z05 = particle_data->ztmp2;
  particle_data->ztmp2 = tmp_ptr2;

  return 0;
}