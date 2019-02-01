#include "bench_gtc.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int pushi(gtc_bench_data_t *gtc_input) {
  gtc_global_params_t *params;
  gtc_field_data_t *field_data;
  gtc_particle_data_t *particle_data;
  gtc_aux_particle_data_t *aux_particle_data;
  gtc_radial_decomp_t *radial_decomp;
  gtc_diagnosis_data_t *diagnosis_data;

  int mpsi, mflux;
  int mi;
  int nbound;
  real delr, q0, q1, q2, rc, rw;
  real pi, pi2_inv, pi_inv;
  real a, a1, a0, qion, aion, gyroradius, nonlinear;
  real kappati, kappan, paranl;
  real delz;

  real *__restrict__ z0;
  real *__restrict__ z1;
  real *__restrict__ z2;
  real *__restrict__ z3;
  real *__restrict__ z4;
  real *__restrict__ z5;
  real *__restrict__ z00;
  real *__restrict__ z01;
  real *__restrict__ z02;
  real *__restrict__ z03;
  real *__restrict__ z04;
  real *__restrict__ z05;
  real *__restrict__ z06;
  const real *__restrict__ wzion;
  const int *__restrict__ jtion0;
  const int *__restrict__ jtion1;
  const real *__restrict__ wtion0;
  const real *__restrict__ wtion1;
  const real *__restrict__ wpion;

  const real *__restrict__ evector;

  real *temp, *dtemp, *rtemi, *pfluxpsi, *rdtemi;
  real flow0, flow1, flow2;

  real sbound, rho_max;
  real psimax, psimin, cmratio, cinv, vthi, d_inv, ainv, tem_inv;
  real *vdrtmp;
  real dtime;
  int i;
  int ndiag;

  /*******/

  params = &(gtc_input->global_params);
  field_data = &(gtc_input->field_data);
  particle_data = &(gtc_input->particle_data);
  aux_particle_data = &(gtc_input->aux_particle_data);
  radial_decomp = &(gtc_input->radial_decomp);
  diagnosis_data = &(gtc_input->diagnosis_data);

  mpsi = params->mpsi;
  mi = params->mi;
  pi = params->pi;
  nbound = params->nbound;
  a1 = params->a1;
  a0 = params->a0;
  a = params->a;
  qion = params->qion;
  aion = params->aion;
  gyroradius = params->gyroradius;
  mflux = params->mflux;
  nonlinear = params->nonlinear;
  delr = params->delr;
  q0 = params->q0;
  q1 = params->q1;
  q2 = params->q2;
  rc = params->rc;
  rw = params->rw;
  paranl = params->paranl;
  kappati = params->kappati;
  kappan = params->kappan;
  flow0 = params->flow0;
  flow1 = params->flow1;
  flow2 = params->flow2;
  delz = params->delz;
  ndiag = params->ndiag;

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

  jtion0 = aux_particle_data->jtion0;
  jtion1 = aux_particle_data->jtion1;
  wtion0 = aux_particle_data->wtion0;
  wtion1 = aux_particle_data->wtion1;
  wpion = aux_particle_data->wpion;
  wzion = aux_particle_data->wzion;

  evector = field_data->evector;
  temp = field_data->temp;
  dtemp = field_data->dtemp;
  rtemi = field_data->rtemi;
  pfluxpsi = field_data->pfluxpsi;
  vdrtmp = field_data->vdrtmp;

  rho_max = radial_decomp->rho_max;

  pi_inv = 1.0 / pi;
  pi2_inv = 0.5 * pi_inv;

  real *rmarker, *eflux, *hfluxpsi, *pmarki;
  real *hfluxpsi_all = (real *)malloc(
      ((mpsi + 1) + 6 * mflux) * sizeof(real));
  real *dden = &hfluxpsi_all[mpsi + 1];
  real *dden_all = &hfluxpsi_all[mpsi + 1 + mflux];
  real *dmark = &hfluxpsi_all[mpsi + 1 + 2 * mflux];
  real *dmark_all = &hfluxpsi_all[mpsi + 1 + 3 * mflux];
  real *dtem = &hfluxpsi_all[mpsi + 1 + 4 * mflux];
  real *dtem_all = &hfluxpsi_all[mpsi + 1 + 5 * mflux];

  assert(hfluxpsi_all != NULL);

  rmarker = diagnosis_data->rmarker;
  eflux = diagnosis_data->eflux;
  rdtemi = diagnosis_data->rdtemi;
  hfluxpsi = field_data->hfluxpsi;
  pmarki = field_data->pmarki;

  for (i = 0; i < mflux; i++) {
    rmarker[i] = 0.0;
    eflux[i] = 0.0;
    dden[i] = 0.0;
    dmark[i] = 0.0;
    dden_all[i] = 0.0;
    dmark_all[i] = 0.0;
    dtem[i] = 0.0;
    dtem_all[i] = 0.0;
  }

  for (i = 0; i < mpsi + 1; i++) {
    hfluxpsi[i] = 0.0;
    hfluxpsi_all[i] = 0.0;
  }
  real *scalar_data = diagnosis_data->scalar_data;

  /********/

  sbound = 1.0;
  if (nbound == 0)
    sbound = 0.0;

  psimax = 0.5 * a1 * a1;
  psimin = 0.5 * a0 * a0;

  /* paxis=0.5*(8.0*gyroradius)**2 */
  cmratio = qion / aion;
  cinv = 1.0 / qion;
  vthi = gyroradius * fabs(qion) / aion;
  d_inv = ((real)mflux) / (a1 - a0);
  tem_inv = 1.0 / (aion * vthi * vthi);

  /* primary ion marker temperature and parallel flow velocity */
  for (i = 0; i < mpsi + 1; i++) {
    temp[i] = 1.0;
    dtemp[i] = 0.0;
    temp[i] = 1.0 / (temp[i] * rtemi[i] * aion * vthi * vthi);
    /*inverse local temperature */
  }

  ainv = 1.0 / a;

  if (irk == 1) {
    /* 1st step of Runge-Kutta method */
    dtime = 0.5 * params->tstep;
    // vdrtmp[0] = 0.0; vdrtmp[1] = 0.0; vdrtmp[2] = 0.0;
    // vdrtmp[3] = 0.0; vdrtmp[4] = 0.0;
    for (i = 0; i < mflux; i++) {
      vdrtmp[i] = 0.0;
    }

    for (i = 0; i < mi; i++) {
      if (z2[i] == HOLEVAL)
        continue;
      z00[i] = z0[i];
      z01[i] = z1[i];
      z02[i] = z2[i];
      z03[i] = z3[i];
      z04[i] = z4[i];
    }
  } else {
    dtime = params->tstep;
    if (nonlinear < 0.5) {
      fprintf(stderr, "Error! decoupling modes for "
                      "nonlinear = 0.0 not implemented\n");
      exit(1);
    } else {
      for (i = 0; i < mflux; i++) {
        vdrtmp[i] = pfluxpsi[i];
      }
    }
  }

  /*  update GC position  */
  real r, rinv, tem, q, qinv, cost, sint, b, g, gp, ri, rip, dbdp, dbdt, dedb,
      deni, upara, energy, rfac, rfac1, rfac2, rfac3, kappa, dptdp, dptdt,
      dptdz, epara, vdr, wdrive, wdrive2, wdrive3, wpara, wdrift, wdot, pdot,
      tdot, zdot, rdot;
  int ii, ij1, ij3, idx1, idx2, idx3, idx4;
  int ip;
  real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m;
  real zion00m, zion01m, zion02m, zion03m, zion04m, zion06m;
  real z1t, z2t;
  real e1, e2, e3, wz0, wz1, wt00, wt01, wt10, wt11, wp0, wp1;
  real wpi0, wpi1, wpi2;
  int kk, larmor;
  int m;
  real cdot;

  real efluxi, pfluxi, dflowi, entropyi;
  real sum_of_weights, sum_of_f0, max_of_f0, min_of_f0;
  real particles_energy[2];
  real vdrenergy;
  real *rmarker_temp = (real *)malloc(
      (5 * mflux + (mpsi + 1)) * sizeof(real));
  real *eflux_temp = &rmarker_temp[mflux];
  real *dmark_temp = &rmarker_temp[2 * mflux];
  real *dden_temp = &rmarker_temp[3 * mflux];
  real *dtem_temp = &rmarker_temp[4 * mflux];
  real *hfluxpsi_temp = &rmarker_temp[5 * mflux];

  assert(rmarker_temp != NULL);

  efluxi = 0.0;
  pfluxi = 0.0;
  dflowi = 0.0;
  entropyi = 0.0;
  particles_energy[0] = particles_energy[1] = 0.0;
  vdrenergy = 0.0;
  sum_of_weights = 0.0;
  sum_of_f0 = 0.0;
  max_of_f0 = 0.0;
  min_of_f0 = 1.0;
  for (i = 0; i < mflux; i++) {
    rmarker_temp[i] = 0.0;
    eflux_temp[i] = 0.0;
    dmark_temp[i] = 0.0;
    dden_temp[i] = 0.0;
    dtem_temp[i] = 0.0;
  }
  for (i = 0; i < mpsi + 1; i++) {
    hfluxpsi_temp[i] = 0.0;
  }

  for (m = 0; m < mi; m++) {
    zion2m = z2[m];
    /* skip holes */
    if (zion2m == HOLEVAL) {
      continue;
    }

    zion0m = z0[m];
    zion1m = z1[m];
    zion3m = z3[m];
    zion4m = z4[m];
    zion5m = z5[m];

    kk = 0;
    wz1 = zion2m * delz;

    wz0 = 1.0 - wz1;
    e1 = 0.0;
    e2 = 0.0;
    e3 = 0.0;

    for (larmor = 0; larmor < 4; larmor++) {
      ij1 = jtion0[4 * m + larmor] - 1;
      ij3 = jtion1[4 * m + larmor] - 1;
      wp0 = 1.0 - wpion[4 * m + larmor];
      wt00 = 1.0 - wtion0[4 * m + larmor];
      wt01 = 1.0 - wtion1[4 * m + larmor];
      wp1 = 1.0 - wp0;
      wt10 = 1.0 - wt00;
      wt11 = 1.0 - wt01;

      real wpt000 = wp0 * wt00;
      real wpt010 = wp0 * wt10;
      real wpt101 = wp1 * wt01;
      real wpt111 = wp1 * wt11;

      idx1 = 6 * ij1;
      idx3 = 6 * ij3;

      real evector10 = evector[idx1 + 0];
      real evector11 = evector[idx1 + 1];
      real evector12 = evector[idx1 + 2];
      real evector13 = evector[idx1 + 3];
      real evector14 = evector[idx1 + 4];
      real evector15 = evector[idx1 + 5];
      real evector20 = evector[idx1 + 6];
      real evector21 = evector[idx1 + 7];
      real evector22 = evector[idx1 + 8];
      real evector23 = evector[idx1 + 9];
      real evector24 = evector[idx1 + 10];
      real evector25 = evector[idx1 + 11];

      real evector30 = evector[idx3 + 0];
      real evector31 = evector[idx3 + 1];
      real evector32 = evector[idx3 + 2];
      real evector33 = evector[idx3 + 3];
      real evector34 = evector[idx3 + 4];
      real evector35 = evector[idx3 + 5];
      real evector40 = evector[idx3 + 6];
      real evector41 = evector[idx3 + 7];
      real evector42 = evector[idx3 + 8];
      real evector43 = evector[idx3 + 9];
      real evector44 = evector[idx3 + 10];
      real evector45 = evector[idx3 + 11];

      e1 = e1 + wpt000 * (wz0 * evector10 + wz1 * evector13) +
           wpt010 * (wz0 * evector20 + wz1 * evector23) +
           wpt101 * (wz0 * evector30 + wz1 * evector33) +
           wpt111 * (wz0 * evector40 + wz1 * evector43);

      e2 = e2 + wpt000 * (wz0 * evector11 + wz1 * evector14) +
           wpt010 * (wz0 * evector21 + wz1 * evector24) +
           wpt101 * (wz0 * evector31 + wz1 * evector34) +
           wpt111 * (wz0 * evector41 + wz1 * evector44);

      e3 = e3 + wpt000 * (wz0 * evector12 + wz1 * evector15) +
           wpt010 * (wz0 * evector22 + wz1 * evector25) +
           wpt101 * (wz0 * evector32 + wz1 * evector35) +
           wpt111 * (wz0 * evector42 + wz1 * evector45);
    }

    wpi0 = 0.25 * e1;
    wpi1 = 0.25 * e2;
    wpi2 = 0.25 * e3;

    if (irk == 1) {
      zion00m = zion0m;
      zion01m = zion1m;
      zion02m = zion2m;
      zion03m = zion3m;
      zion04m = zion4m;
    } else {
      zion00m = z00[m];
      zion01m = z01[m];
      zion02m = z02[m];
      zion03m = z03[m];
      zion04m = z04[m];
    }

    r = sqrt(2.0 * zion0m);
    rinv = 1.0 / r;

    ii = abs_min_int(mpsi - 1, ((int)((r - a0) * delr)));
    ip = abs_min_int(mflux - 1, ((int)((r - a0) * d_inv)));

    wp0 = ((real)(ii + 1)) - (r - a0) * delr;
    wp1 = 1.0 - wp0;

    tem = wp0 * temp[ii] + wp1 * temp[ii + 1];
    q = q0 + q1 * r * ainv + q2 * r * r * ainv * ainv;
    qinv = 1.0 / q;

    cost = cos(zion1m);
    sint = sin(zion1m);

    /* cost0=cos(zion(2,m)+r*sint) */
    /* sint0=sin(zion(2,m)+r*sint) */
    b = 1.0 / (1.0 + r * cost);
    g = 1.0;
    gp = 0.0;

    /* ri=r*r*qinv */
    /* rip=(2.0*q0+q1*r*ainv)*qinv*qinv */
    ri = 0.0;
    rip = 0.0;
    dbdp = -1.0 * b * b * cost * rinv;
    dbdt = b * b * r * sint;
    dedb = cinv * (zion3m * zion3m * qion * b * cmratio + zion5m * zion5m);

    deni = 1.0 / (g * q + ri + zion3m * (g * rip - ri * gp));
    upara = zion3m * b * cmratio;
    energy = 0.5 * aion * upara * upara + zion5m * zion5m * b;

    rfac1 = rw * (r - rc);
    // exp(x^6)
    rfac2 = rfac1 * rfac1;
    rfac3 = rfac2 * rfac2 * rfac2;
    rfac = exp(-1.0 * rfac3);

    kappa = 1.0 - sbound + sbound * rfac;

    /* kappa=((min(umax*umax,energy*tem)-1.5)*kappati+kappan)*kappa*rinv */
    kappa = ((energy * tem - 1.5) * kappati + kappan) * kappa * rinv;

    /* perturbed quantities */
    dptdp = wpi0;
    dptdt = wpi1;
    dptdz = wpi2 - wpi1 * qinv;
    epara = -1.0 * wpi2 * b * q * deni;

    /* subtract net particle flow */
    dptdt = dptdt + vdrtmp[ip];

    /* ExB drift in radial direction for w-dot and flux diagnostics */
    vdr = q * (ri * dptdz - g * dptdt) * deni;
    wdrive = vdr * kappa;
    wpara = epara * (upara - dtemp[ii]) * qion * tem;
    wdrift = q * (g * dbdt * dptdp - g * dbdp * dptdt + ri * dbdp * dptdz) *
             deni * dedb * qion * tem;

    wdot = (z05[m] - paranl * zion4m) * (wdrive + wpara + wdrift);

    /* self-consistent and external electric field for marker orbits */
    dptdp =
        dptdp * nonlinear +
        gyroradius * (flow0 + flow1 * r * ainv + flow2 * r * r * ainv * ainv);
    dptdt = dptdt * nonlinear;
    dptdz = dptdz * nonlinear;

    /* particle velocity */
    pdot = q * (-g * dedb * dbdt - g * dptdt + ri * dptdz) * deni;
    tdot =
        (upara * b * (1.0 - q * gp * zion3m) + q * g * (dedb * dbdp + dptdp)) *
        deni;
    zdot = (upara * b * q * (1.0 + rip * zion3m) -
            q * ri * (dedb * dbdp + dptdp)) *
           deni;
    rdot = ((gp * zion3m - 1.0) * (dedb * dbdt + paranl * dptdt) -
            paranl * q * (1.0 + rip * zion3m) * dptdz) *
           deni;

/* update particle position */
    z0[m] = max(1.0e-8 * psimax, zion00m + dtime * pdot);
    zion1m = zion01m + dtime * tdot;
    zion2m = zion02m + dtime * zdot;
    z3[m] = zion03m + dtime * rdot;
    z4[m] = zion04m + dtime * wdot;

    z1t = zion1m * pi2_inv + 10.0;
    z1[m] = 2.0 * pi * (z1t - ((int)z1t));

    z2t = zion2m * pi2_inv + 10.0;
    z2[m] = 2.0 * pi * (z2t - ((int)z2t));

    /*  UPDATE: 02/10/2006  The modulo function now streams on the X1E
        02/20/2004  The modulo function seems to prevent streaming on the X1
        02/20/2004 mod() does the same thing as modulo but it streams.
        02/23/2004 need to do mod((pi2+zion),pi2) instead of mod(zion,pi2) in
       order
        to catch the negative values of zion.
        zion(2,m)=mod((pi2+zion(2,m)),pi2)
        zion(3,m)=mod((pi2+zion(3,m)),pi2) */

    if (irk == 2) {
      if (z0[m] > psimax) {
        z0[m] = zion00m;
        z1[m] = 2.0 * pi - zion01m;
        z2[m] = zion02m;
        z3[m] = zion03m;
        z4[m] = zion04m;
      } else if (z0[m] < psimin) {
        z0[m] = zion00m;
        z1[m] = 2.0 * pi - zion01m;
        z2[m] = zion02m;
        z3[m] = zion03m;
        z4[m] = zion04m;
      }
    }

    /*************** for diagnosis ***********/
    if (idiag == 0) {
      // irk==1 diagnosis
      ip = abs_min_int(mflux - 1, (int)((r - a0) * d_inv));
      ii = abs_min_int(mpsi, (int)((r - a0) * delr + 0.5));
      vdrenergy = vdr * rinv * (energy - 1.5 * aion * vthi * vthi * rtemi[ii]) *
                  zion04m;
      // radial profile of heat flux
      hfluxpsi_temp[ii] = hfluxpsi_temp[ii] + vdrenergy;

      // marker, energy, particle, momentum fluxes, parallel flow, entropy and
      // kinetic energy
      rmarker_temp[ip] = rmarker_temp[ip] + 1.0;
      eflux_temp[ip] = eflux_temp[ip] + vdrenergy;

      efluxi = efluxi + vdrenergy;
      pfluxi = pfluxi + vdr * rinv * zion04m;
      dflowi = dflowi + b * zion03m * zion04m;
      entropyi = entropyi + zion04m * zion04m;

      particles_energy[0] += energy * zion04m;
      particles_energy[1] += energy;

      dmark_temp[ip] = dmark_temp[ip] + vdr * rinv * r;
      dden_temp[ip] = dden_temp[ip] + 1.0;
      sum_of_weights = sum_of_weights + z04[m];
      sum_of_f0 = sum_of_f0 + z05[m];
      max_of_f0 = max(max_of_f0, z04[m]);
      min_of_f0 = min(min_of_f0, z04[m]);
    }

    if (nonlinear > 0.5 && paranl < 0.5) {
      // if (nonlinear>0.5) {
      if (istep % ndiag == 0) {
        if (irk == 2) {
          zion0m = z0[m];
          zion1m = z1[m];
          zion3m = z3[m];
          zion4m = z4[m];
          zion5m = z5[m];
          r = sqrt(2.0 * zion0m);
          ip = abs_min_int(mflux - 1, (int)((r - a0) * d_inv));
          cost = cos(zion1m);
          b = 1.0 / (1.0 + r * cost);
          upara = zion3m * b * cmratio;
          energy = 0.5 * aion * upara * upara + zion5m * zion5m * b;

          dden_temp[ip] = dden_temp[ip] + 1.0;
          dtem_temp[ip] = dtem_temp[ip] + energy * zion4m;
        }
      }
    }
  } // end m

  if (idiag == 0) {
    for (i = 0; i < mflux; i++) {
      rmarker[i] = rmarker[i] + rmarker_temp[i];
      eflux[i] = eflux[i] + eflux_temp[i];
      dmark[i] = dmark[i] + dmark_temp[i];
      dden[i] = dden[i] + dden_temp[i];
    }
    for (i = 0; i < mpsi + 1; i++) {
      hfluxpsi[i] = hfluxpsi[i] + hfluxpsi_temp[i];
    }
    scalar_data[0] += efluxi;
    scalar_data[2] += pfluxi;
    scalar_data[6] += dflowi;
    scalar_data[8] += entropyi;
    scalar_data[12] += particles_energy[0];
    scalar_data[13] += particles_energy[1];

    scalar_data[15] += sum_of_weights;
    scalar_data[16] += sum_of_f0;
    scalar_data[17] = max(scalar_data[17], max_of_f0);
    scalar_data[18] = min(scalar_data[18], min_of_f0);
  }

  if (nonlinear > 0.5 && paranl < 0.5) {
    // if (nonlinear>0.5){
    if (istep % ndiag == 0) {
      if (irk == 2) {
        for (i = 0; i < mflux; i++) {
          dden[i] = dden[i] + dden_temp[i];
          dtem[i] = dtem[i] + dtem_temp[i];
        }
      }
    }
  }
  _mm_free(rmarker_temp);
}

real tdum = 0.01 * ndiag;
if (idiag == 0) {
  for (int i = 0; i < mpsi + 1; i++) {
    hfluxpsi[i] = hfluxpsi[i] * pmarki[i];
  }

  for (int i = 0; i < mflux; i++) {
    dmark[i] = dmark[i] / max(1.0, dden[i]);
    pfluxpsi[i] = (1.0 - tdum) * pfluxpsi[i] + tdum * dmark[i];
  }
}

if (irk == 2) {
  if (nonlinear > 0.5 && paranl < 0.5) {
    // if (nonlinear>0.5) {
    if (istep % ndiag == 0) {
      for (int i = 0; i < mflux; i++) {
        dtem[i] = dtem[i] * tem_inv / max(1.0, dden[i]);
        rdtemi[i] = (1.0 - tdum) * rdtemi[i] + tdum * dtem[i];
      }
    }
  }
}

// restore temprature profile when running a nonlinear calculation
// (nonlinear=1.0)
// without the velocity space nonlinearity (paranl=0.0)
if (nonlinear > 0.5 && paranl < 0.5) {
  // if (nonlinear>0.5){
  if (istep % ndiag == 0) {
    if (irk == 2) {
      int m, ip;
      real zion0m, zion1m, zion2m, zion3m, zion4m, zion5m;
      real r, cost, b, upara, energy;
      for (m = 0; m < mi; m++) {
        zion2m = z2[m];
        /* skip holes */
        if (zion2m == HOLEVAL) {
          continue;
        }
        zion0m = z0[m];
        zion1m = z1[m];
        zion3m = z3[m];
        zion4m = z4[m];
        zion5m = z5[m];

        r = sqrt(2.0 * zion0m);
        ip = abs_min_int(mflux - 1, (int)((r - a0) * d_inv));

        cost = cos(zion1m);
        b = 1.0 / (1.0 + r * cost);
        upara = zion3m * b * cmratio;
        energy = 0.5 * aion * upara * upara + zion5m * zion5m * b;
      
        zion4m -= (1.0 - paranl * zion4m) * (energy * tem_inv - 1.5) * rdtemi[ip];
        z4[m] = zion4m;
        z04[m] = zion4m;
      }
    }
  }

  _mm_free(hfluxpsi_all);

  return 0;
}
