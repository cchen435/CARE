#ifndef _BENCH_GTC
#define _BENCH_GTC
#include <stdlib.h>
#include <stdio.h>
#include "bench_gtc_port.h"

/* Only double precision */
typedef double real;
typedef double wreal;
#define MPI_MYREAL MPI_DOUBLE
#define MPI_MYWREAL MPI_DOUBLE


#define HOLEVAL 100000000.00

#define min(X, Y)  ((X) < (Y) ? (X) : (Y))
#define max(X, Y)  ((X) > (Y) ? (X) : (Y))

int istep;
int irk;
int idiag;

//real shift_t_time;
//real shift_t_comm;
//real sort_t;

typedef struct {
    int  mi;
    int  mimax;
    int  mgrid;
    int  mpsi;
    int  mthetamax;
    int  mzeta;
    int  mzetamax;
    int  miinit;
    int  holecount;
  
    int mpsi_loc;
    int m2pi;
    int mumax2;
    real delvperp;

    int  istep;
    int  ndiag;
    int  ntracer;
    int  msnap;
    int  mstep;
    int  mstepall;
    int  mmomentsoutput;

    int  tstdout;

    int  mode00;
    int  nbound;
    int  irun;
    int  iload;
    int  irk;
    int  idiag;
    int  ncycle;
    int  mtdiag;
    int  idiag1;
    int  idiag2;
    int  mflux;
    int  restart_freq;

    int  ntracer1;
    int  nhybrid;
    int  ihybrid;

    int  nparam;
    int  rng_control;
    
    int  limit_vpara;
    int  fixed_Tprofile;

    int  mi_total;
    int  micell;

    int  hole_remove_freq;
    int  radial_bin_freq;

    real nonlinear;
    real paranl;
    real a0;
    real a1;
    real a;
    real q0; 
    real q1;
    real q2;

    real pi;
    real tstep;
    real kappati;
    real kappate;
    real kappan;

    real flow0;
    real flow1;
    real flow2;
    real ulength;
    real utime;
    real gyroradius;
    real deltar;
    real deltaz;

    real zetamax; 
    real umax;
    real tite;
    real rc;
    real rw;
    real tauii;
    real qion;
    real qelectron;
    real aion;
    real aelectron;

    real r0;
    real b0;
    real temperature;
    real edensity0;
    real smu_inv;
    real delr;
    real delz;
    real pi2_inv;

} gtc_global_params_t;


/* Splitting Fortran particle_array module to two structs */
typedef struct {
    real *z0;
    real *z1;
    real *z2;
    real *z3;
    real *z4;
    real *z5;
    
    real *z00;
    real *z01;
    real *z02;
    real *z03;
    real *z04;
    real *z05;
#if TWO_WEIGHTS
    real *z06; // modified by bwang May 2013
#endif
    real *ztmp;
    real *ztmp2;
    int  *psi_count;
    int  *psi_offsets;
} gtc_particle_data_t;

typedef struct {
    int  *kzion;
    int  *jtion0;
    int  *jtion1;
    real *wzion;
    real *wpion;
    real *wtion0;
    real *wtion1;
    int  *kzi;
} gtc_aux_particle_data_t;

typedef struct {
    int  mmpsi;
    int *itran;
    int *igrid;
    int *jtp1;
    int *jtp2;

    real *phi00;
    real *phip00;
    real *rtemi;
    real *rden;
    real *qtinv;
    real *pmarki;
    real *zonali;
    real *gradt;
    real *difft;

    real *phi;

    wreal *densityi;
    wreal *densityi_local;

    real *dtemp;
    real *temp;
    wreal *dnitmp;

    real *hfluxpsi;
    real *pfluxpsi;
    real *vdrtmp;
    real *markeri;
    real *pgyro;
    real *tgyro;
    real *dtemper;
    real *heatflux;
    real *phit;

    real *evector;
    real *wtp1;
    real *wtp2;
    real *phisave;
    wreal *recvr;
    wreal *sendl;

    real *sendrsf;
    real *recvlsf;
    real *sendlf;
    real *recvlf;
    real *sendrf;
    real *recvrf;

    real *perr;
    real *ptilde;
    real *phitmp;
    real *phitmps;
    real *dentmp;
    real *den00;

    real *delt;
    int  *mtheta;
    real *deltat;
    int  *indexp;
    int  *nindex;
    real *ring;

    real *drdpa;
    real *diffta;
    int *idx1a;
    int *idx2a;

    int *recvl_index;
    int *recvr_index;

} gtc_field_data_t;

typedef struct {             
  int *nmode;
  int *mmode;
  // wrap up all scaler above data to an array, scaler_data, below (more efficient for GPU)
  real *scalar_data;
  real *eflux;
  real *rmarker;
  real *dmark;
  real *dden;
  real *rdtemi;
  real *rdteme;
  // in GPU, wrap up all data above to an array, flux_data, below (more efficient for GPU)
  real *flux_data;
  real *amp_mode;
  real *eigenmode;
  real ptracer[4];
  real eflux_average;
  // records moments infomration for diagnosis
#if CALC_MOMENTS
  real *moments;
  real *momentstmp;
  real *sendl_moments;
  real *recvr_moments;
#endif

#if OUTPUT
  real *eachdata_pe, *eachdata_rad, *alldata, *psizeta;
#endif
} gtc_diagnosis_data_t;

typedef struct {
  int ipsi_remap_in, ipsi_remap_out, igrid_remap_in, igrid_remap_out, nloc_remap;
  int mvpara, mvperp2;
  real deltavpara, deltavperp2;
  int remap_order;
  real *df_phase_space, *f_phase_space, *g_phase_space;
  real *sendl_phase_space, *sendr_phase_space, *recvl_phase_space, *recvr_phase_space;
  int remapping_freq;

  int *ghost_remap_comm_list;
  int *ghost_remap_start;
  int *ghost_remap_end;
  int ghost_remap_comm_num;
  real *ghost_remap_sendrecvbuf;
  int ghost_remap_bufsize;

  int *nghost_remap_comm_list;
  int *nghost_remap_start;
  int *nghost_remap_end;
  int nghost_remap_comm_num;
  real *nghost_remap_sendrecvbuf;
  int nghost_remap_bufsize;

  int *igrid_count;
  int *igrid_offsets;
} gtc_particle_remap_t;

typedef struct grid{
  real rho_max;
} gtc_radial_decomp_t;

typedef struct {
  int neop, neot, neoz;
  real *maxwell;
  real *tmp, *tmp_loc;
  real *dele, *delm, *marker, *ddum;
  real *dele_loc, *delm_loc, *marker_loc;
} gtc_particle_collision_t;

typedef struct {
    gtc_global_params_t     global_params;
    gtc_field_data_t        field_data;
    gtc_particle_data_t     particle_data;
    gtc_aux_particle_data_t aux_particle_data;
    gtc_diagnosis_data_t    diagnosis_data;
    gtc_radial_decomp_t     radial_decomp;
    gtc_particle_remap_t    particle_remap;
    gtc_particle_collision_t particle_collision;
} gtc_bench_data_t;

int setup(gtc_bench_data_t*);
int chargei(gtc_bench_data_t*);
int chargei_init(gtc_bench_data_t*);

int pushi(gtc_bench_data_t*);
int smooth(int, gtc_bench_data_t*);
int field(gtc_bench_data_t*);
int poisson(int, gtc_bench_data_t*);
int poisson_initial(gtc_bench_data_t *, int mring, int mindex, int *nindex,
        int *indexp, real *ring);

int radial_bin_particles(gtc_bench_data_t*);
int shifti_toroidal(gtc_bench_data_t*);
int shifti_radial(gtc_bench_data_t*);
int diagnosis(gtc_bench_data_t*);
int restart_read(gtc_bench_data_t*);
int gtc_mem_free(gtc_bench_data_t* gtc_input);
int collision(gtc_bench_data_t* gtc_input);

int restart_write(gtc_bench_data_t* gtc_input);
int sum_plane(gtc_bench_data_t* gtc_input);
int fix_radial_ghosts(gtc_bench_data_t *gtc_input, real *data, int mzeta, int dim);
#if CALC_MOMENTS
int sum_plane_moments(gtc_bench_data_t * gtc_input);
#endif
int calc_moments(gtc_bench_data_t *);

int abs_min_int(int arg1, int arg2);
real abs_min_real(real arg1, real arg2);

void usage(const char *exec_name);
int read_input_file(char *filename, gtc_global_params_t *params);

int cd_comp_fun(const void *, const void *);

#endif
