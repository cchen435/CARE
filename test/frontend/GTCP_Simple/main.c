#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include "RngStream.h"
#include "bench_gtc.h"

int main(int argc, char** argv) {
  double starttime = wfgettimeofday();
  FILE* timelog;
  char* tlogname = "time.log";
  timelog = fopen(tlogname, "a");

  fprintf(timelog, "gtcp start time: %f\n", starttime);

  FILE* fp;
  gtc_bench_data_t* gtc_input;
  int micell;
  int mstep, ndiag, irun;

  if (argc != 4) {
    usage(argv[0]);
    exit(1);
  }

  fp = fopen(argv[1], "r");
  if (fp == NULL) {
    fprintf(stderr, "*** Cannot open input file. ***\n");
    usage(argv[0]);
    exit(1);
  }
  fclose(fp);

  micell = atoi(argv[2]);

  if (micell <= 0) {
    fprintf(stderr,
            "*** Number of particles per cell should be a positive"
            " integer. ***\n");
    usage(argv[0]);
    exit(1);
  }

  gtc_input = (gtc_bench_data_t*)malloc(sizeof(gtc_bench_data_t));

  (gtc_input->parallel_decomp).ntoroidal = ntoroidal;

  read_input_file(argv[1], &(gtc_input->global_params),
                  &(gtc_input->parallel_decomp), &(gtc_input->radial_decomp));

  (gtc_input->global_params).micell = micell;

  setup(gtc_input);

  /* get particle data from input files */
  irun = (gtc_input->global_params).irun;

  chargei_init(gtc_input);

  if (irun == 0) calc_moments(gtc_input);

  mstep = (gtc_input->global_params).mstep;
  ndiag = (gtc_input->global_params).ndiag;

  for (istep = 1; istep <= mstep; istep++) {
    printf("** istep=%d\n", istep);

    for (irk = 1; irk <= 2; irk++) {
      /* idiag=0, do time history diagnosis */
      idiag = ((irk + 1) % 2) + istep % ndiag;
      smooth(3, gtc_input);

      /* field */
      field(gtc_input);

      /* push ion */
      pushi(gtc_input);

      if (idiag == 0) diagnosis(gtc_input);

      radial_bin_particles(gtc_input);

      // Fokker Planck collision operator
      if (irk == 2 && (gtc_input->global_params).tauii > 0)
        collision(gtc_input);

      /* ion perturbed density */
      chargei(gtc_input);

      /* smooth ion density */
      smooth(0, gtc_input);

      /* solve GK Poission equation using adiabatic electron */
      poisson(0, gtc_input);
    }

    fprintf(stderr, "momentsoutput=%d\n",
            gtc_input->global_params.mmomentsoutput);

    /* output moments for diagnosis */
    if ((gtc_input->global_params.mstepall + istep) %
            gtc_input->global_params.mmomentsoutput == 0)
      calc_moments(gtc_input);

    if (istep >= (mstep - 1000) && istep % 10 == 0) output(gtc_input);
  }

  gtc_mem_free(gtc_input);
  free(gtc_input);

  fprintf(stderr, "%d time steps\n", mstep);

  return 0;
}
