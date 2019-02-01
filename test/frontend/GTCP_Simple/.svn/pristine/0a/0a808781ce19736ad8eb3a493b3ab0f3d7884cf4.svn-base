#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include "bench_gtc.h"
#if USE_MPI
#include <mpi.h>
#endif
#ifdef _OPENMP
#include <omp.h>
#endif

#if CALC_MOMENTS
int sum_plane_moments(gtc_bench_data_t *gtc_input){
  gtc_global_params_t     *params;
  gtc_field_data_t        *field_data;
  gtc_radial_decomp_t     *radial_decomp;
  gtc_particle_decomp_t   *parallel_decomp;
  gtc_diagnosis_data_t    *diagnosis;

  params            = &(gtc_input->global_params);
  radial_decomp     = &(gtc_input->radial_decomp);
  field_data        = &(gtc_input->field_data);
  parallel_decomp   = &(gtc_input->parallel_decomp);
  diagnosis         = &(gtc_input->diagnosis_data);

  int mpsi = params->mpsi;
  int mzeta = params->mzeta;

  const int*  __restrict__ igrid;
  const int*  __restrict__ mtheta;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;

  int *ghost_comm_list = diagnosis->ghost_moments_comm_list;
  int *ghost_start = diagnosis->ghost_moments_start;
  int *ghost_end = diagnosis->ghost_moments_end;
  real *ghost_sendrecvbuf = diagnosis->ghost_moments_sendrecvbuf;
  int ghost_comm_num = diagnosis->ghost_moments_comm_num;
  int ghost_bufsize = diagnosis->ghost_moments_bufsize;

  int *nghost_comm_list = diagnosis->nghost_moments_comm_list;
  int *nghost_start = diagnosis->nghost_moments_start;
  int *nghost_end = diagnosis->nghost_moments_end;
  real *nghost_sendrecvbuf = diagnosis->nghost_moments_sendrecvbuf;
  int nghost_comm_num = diagnosis->nghost_moments_comm_num;
  int nghost_bufsize = diagnosis->nghost_moments_bufsize;

  real *moments_data = diagnosis->moments;
  int igrid_moments_in = diagnosis->igrid_moments_in;

  int proc_num, count, ipsi_s,ipsi_e, offset, offset2;
  MPI_Request *recv_request = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *recv_request1 = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status1 = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request1 = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status1 = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  //MPI_Barrier(radial_decomp->radiald_comm);                                                                                                                                      
  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;
    MPI_Irecv(nghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request[i]);
    offset += count;
  }
  assert(offset == nghost_bufsize*(mzeta+1)*7);

  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset = (igrid[ipsi_s] - igrid_moments_in)*(1+mzeta)*7;

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;
    MPI_Isend(moments_data+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request[i]);
  }
  MPI_Waitall(nghost_comm_num, recv_request, recv_status);
  MPI_Waitall(ghost_comm_num, send_request, send_status);
  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_moments_in)*(1+mzeta)*7;
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;
#pragma omp parallel for
    for (int j=0; j<count; j++){
      moments_data[j+offset2] += nghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;
    MPI_Irecv(ghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request1[i]);
    offset += count;
  }

  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset = (igrid[ipsi_s] - igrid_moments_in)*(1+mzeta)*7;
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;

    MPI_Isend(moments_data+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request1[i]);
  }
  MPI_Waitall(ghost_comm_num, recv_request1, recv_status1);
  MPI_Waitall(nghost_comm_num, send_request1, send_status1);

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_moments_in)*(1+mzeta)*7;
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*7;
#pragma omp parallel for
    for (int j=0; j<count; j++){
      moments_data[j+offset2] = ghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1)*7);

  free(recv_request);
  free(recv_status);
  free(send_request);
  free(send_status);

  free(recv_request1);
  free(recv_status1);
  free(send_request1);
  free(send_status1);

  return 0;
}
#endif

#if REMAPPING
int sum_plane_remap(gtc_bench_data_t *gtc_input, int type){
  gtc_global_params_t     *params;
  gtc_particle_remap_t    *particle_remap;
  gtc_field_data_t        *field_data;
  gtc_radial_decomp_t     *radial_decomp;
  gtc_particle_decomp_t   *parallel_decomp;

  params            = &(gtc_input->global_params);
  particle_remap    = &(gtc_input->particle_remap);
  radial_decomp     = &(gtc_input->radial_decomp);
  field_data        = &(gtc_input->field_data);
  parallel_decomp   = &(gtc_input->parallel_decomp);

  int mpsi = params->mpsi;
  int mzeta = params->mzeta;

  const int*  __restrict__ igrid;
  const int*  __restrict__ mtheta;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;

  int *ghost_comm_list = particle_remap->ghost_remap_comm_list;
  int *ghost_start = particle_remap->ghost_remap_start;
  int *ghost_end = particle_remap->ghost_remap_end;
  int ghost_comm_num = particle_remap->ghost_remap_comm_num;
  real *ghost_sendrecvbuf = particle_remap->ghost_remap_sendrecvbuf;
  int ghost_bufsize = particle_remap->ghost_remap_bufsize;
  int *nghost_comm_list = particle_remap->nghost_remap_comm_list;
  int *nghost_start = particle_remap->nghost_remap_start;
  int *nghost_end = particle_remap->nghost_remap_end;
  real *nghost_sendrecvbuf = particle_remap->nghost_remap_sendrecvbuf;
  int nghost_comm_num = particle_remap->nghost_remap_comm_num;
  int nghost_bufsize = particle_remap->nghost_remap_bufsize;

  int mvpara = particle_remap->mvpara;
  int mvperp2 = particle_remap->mvperp2;
  int igrid_remap_in = particle_remap->igrid_remap_in;
  real *phase_space_data;
  if (type==0)
    phase_space_data = particle_remap->df_phase_space;
  else if (type==1)
    phase_space_data = particle_remap->f_phase_space;
  else if (type==2)
    phase_space_data = particle_remap->g_phase_space;
  else {
    printf("other type is not available in sum_plane_remap\n");
    exit (1);
  }

  int proc_num, count, ipsi_s,ipsi_e, offset, offset2;
  MPI_Request *recv_request = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *recv_request1 = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status1 = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request1 = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status1 = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  //MPI_Barrier(radial_decomp->radiald_comm);
  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    MPI_Irecv(nghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request[i]);
    offset += count;
    //printf("nghost_comm_num mype=%d proc_num=%d ipsi_s=%d ipsi_e=%d offset=%d count=%d\n", parallel_decomp->mype,
    //       proc_num, ipsi_s, ipsi_e, offset, count);
  }
  assert(offset == nghost_bufsize*(mzeta+1)*(mvpara+1)*(mvperp2+1));

  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset = (igrid[ipsi_s] - igrid_remap_in)*(1+mzeta)*(mvpara+1)*(mvperp2+1);

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    MPI_Isend(phase_space_data+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request[i]);
    //printf("ghost_comm_num mype=%d proc_num=%d ipsi_s=%d ipsi_e=%d offset=%d count=%d igrid_remap_in=%d\n", parallel_decomp->mype,
    //	   proc_num, ipsi_s, ipsi_e, offset, count, igrid_remap_in);
  }
  MPI_Waitall(nghost_comm_num, recv_request, recv_status);
  MPI_Waitall(ghost_comm_num, send_request, send_status);

  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_remap_in)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
#pragma omp parallel for 
    for (int j=0; j<count; j++){
      phase_space_data[j+offset2] += nghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }

  //MPI_Barrier(radial_decomp->radiald_comm);
  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    MPI_Irecv(ghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request1[i]);
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1)*(mvpara+1)*(mvperp2+1));

  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset = (igrid[ipsi_s] - igrid_remap_in)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);

    MPI_Isend(phase_space_data+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request1[i]);
  }
  MPI_Waitall(ghost_comm_num, recv_request1, recv_status1);
  MPI_Waitall(nghost_comm_num, send_request1, send_status1);

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_remap_in)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*(mvpara+1)*(mvperp2+1);
#pragma omp parallel for 
    for (int j=0; j<count; j++){
      phase_space_data[j+offset2] = ghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1)*(mvpara+1)*(mvperp2+1));
  //MPI_Barrier(radial_decomp->radiald_comm);

  free(recv_request);
  free(recv_status);
  free(send_request);
  free(send_status);

  free(recv_request1);
  free(recv_status1);
  free(send_request1);
  free(send_status1);

  return 0;
}
#endif

int sum_plane(gtc_bench_data_t *gtc_input){
  gtc_global_params_t     *params;
  gtc_field_data_t        *field_data;
  gtc_radial_decomp_t     *radial_decomp;

  params            = &(gtc_input->global_params);
  field_data        = &(gtc_input->field_data);
  radial_decomp     = &(gtc_input->radial_decomp);

  int mpsi = params->mpsi;
  int mzeta = params->mzeta;
  
  const int*  __restrict__ igrid;
  const int*  __restrict__ mtheta;

  igrid = field_data->igrid; 
  mtheta = field_data->mtheta;

  real *densityi = field_data->densityi;

  int igrid_in = radial_decomp->igrid_in;
  int *ghost_comm_list = radial_decomp->ghost_comm_list;
  int *ghost_start = radial_decomp->ghost_start;
  int *ghost_end = radial_decomp->ghost_end;
  int ghost_comm_num = radial_decomp->ghost_comm_num;
  real *ghost_sendrecvbuf = radial_decomp->ghost_sendrecvbuf;
  int ghost_bufsize = radial_decomp->ghost_bufsize;
  int *nghost_comm_list = radial_decomp->nghost_comm_list;
  int *nghost_start = radial_decomp->nghost_start;
  int *nghost_end = radial_decomp->nghost_end;
  real *nghost_sendrecvbuf = radial_decomp->nghost_sendrecvbuf;
  int nghost_comm_num = radial_decomp->nghost_comm_num;
  int nghost_bufsize = radial_decomp->nghost_bufsize;
  int nproc_radial_partd = radial_decomp->nproc_radial_partd;
  int ipsi_nover_in = radial_decomp->ipsi_nover_in;
  int ipsi_nover_out = radial_decomp->ipsi_nover_out;

  int proc_num, count, ipsi_s,ipsi_e, offset, offset2;
  MPI_Request *recv_request = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *recv_request1 = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status1 = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request1 = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status1 = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  MPI_Barrier(radial_decomp->radiald_comm);
  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);
    
    MPI_Irecv(nghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num, 
	      radial_decomp->radiald_comm, &recv_request[i]);
    offset += count;
  }
  assert(offset == nghost_bufsize*(mzeta+1));

  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset = (igrid[ipsi_s] - igrid_in)*(1+mzeta);

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);
    MPI_Isend(densityi+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald, 
	      radial_decomp->radiald_comm, &send_request[i]);
  }

  MPI_Waitall(nghost_comm_num, recv_request, recv_status);
  MPI_Waitall(ghost_comm_num, send_request, send_status);
  
  offset = 0;
  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_in)*(1+mzeta);

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);

    //#pragma omp parallel for num_threads(NUM_THREADS)
#pragma omp parallel for
    for (int j=0; j<count; j++){
      densityi[j+offset2] += nghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }

  MPI_Barrier(radial_decomp->radiald_comm);
  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);
    MPI_Irecv(ghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request1[i]);
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1));

  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset = (igrid[ipsi_s] - igrid_in)*(1+mzeta);
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);

    MPI_Isend(densityi+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request1[i]);
  }
  
  MPI_Waitall(ghost_comm_num, recv_request1, recv_status1);
  MPI_Waitall(nghost_comm_num, send_request1, send_status1);

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_in)*(1+mzeta);
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta);
    //#pragma omp parallel for num_threads(NUM_THREADS)
#pragma omp parallel for
    for (int j=0; j<count; j++){
      densityi[j+offset2] = ghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1));

  MPI_Barrier(radial_decomp->radiald_comm);

  free(recv_request);
  free(recv_status);
  free(send_request);
  free(send_status);

  free(recv_request1);
  free(recv_status1);
  free(send_request1);
  free(send_status1);

  return 0;
}


int fix_radial_ghosts(gtc_bench_data_t *gtc_input, real *data, int mzeta, int dim){
  gtc_global_params_t     *params;
  gtc_field_data_t        *field_data;
  gtc_radial_decomp_t     *radial_decomp;

  params            = &(gtc_input->global_params);
  field_data        = &(gtc_input->field_data);
  radial_decomp     = &(gtc_input->radial_decomp);

  int mpsi = params->mpsi;

  const int*  __restrict__ igrid;
  const int*  __restrict__ mtheta;

  igrid = field_data->igrid;
  mtheta = field_data->mtheta;

  int igrid_in = radial_decomp->igrid_in;
  int *ghost_comm_list = radial_decomp->ghost_comm_list;
  int *ghost_start = radial_decomp->ghost_start;
  int *ghost_end = radial_decomp->ghost_end;
  int ghost_comm_num = radial_decomp->ghost_comm_num;
  real *ghost_sendrecvbuf = radial_decomp->ghost_sendrecvbuf;
  int ghost_bufsize = radial_decomp->ghost_bufsize;
  int *nghost_comm_list = radial_decomp->nghost_comm_list;
  int *nghost_start = radial_decomp->nghost_start;
  int *nghost_end = radial_decomp->nghost_end;
  real *nghost_sendrecvbuf = radial_decomp->nghost_sendrecvbuf;
  int nghost_comm_num = radial_decomp->nghost_comm_num;
  int nghost_bufsize = radial_decomp->nghost_bufsize;
  int nproc_radial_partd = radial_decomp->nproc_radial_partd;
  int ipsi_nover_in = radial_decomp->ipsi_nover_in;
  int ipsi_nover_out = radial_decomp->ipsi_nover_out;

  int proc_num, count, ipsi_s,ipsi_e, offset, offset2;
  MPI_Request *recv_request = (MPI_Request *) malloc(ghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *recv_status = (MPI_Status *) malloc(ghost_comm_num*sizeof(MPI_Status));

  MPI_Request *send_request = (MPI_Request *) malloc(nghost_comm_num*sizeof(MPI_Request));
  MPI_Status  *send_status = (MPI_Status *) malloc(nghost_comm_num*sizeof(MPI_Status));

  //MPI_Barrier(radial_decomp->radiald_comm);

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];

    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*dim;

    MPI_Irecv(ghost_sendrecvbuf+offset, count, MPI_MYREAL, proc_num, proc_num,
              radial_decomp->radiald_comm, &recv_request[i]);
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1)*dim);

  for (int i=0; i<nghost_comm_num; i++){
    proc_num = nghost_comm_list[i];
    ipsi_s = nghost_start[i];
    ipsi_e = nghost_end[i];
    offset = (igrid[ipsi_s] - igrid_in)*(1+mzeta)*dim;
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*dim;

    MPI_Isend(data+offset, count, MPI_MYREAL, proc_num, radial_decomp->myrank_radiald,
              radial_decomp->radiald_comm, &send_request[i]);
  }

  MPI_Waitall(ghost_comm_num, recv_request, recv_status);
  MPI_Waitall(nghost_comm_num, send_request, send_status);

  offset = 0;
  for (int i=0; i<ghost_comm_num; i++){
    proc_num = ghost_comm_list[i];
    ipsi_s = ghost_start[i];
    ipsi_e = ghost_end[i];
    offset2 = (igrid[ipsi_s] - igrid_in)*(1+mzeta)*dim;
    count = (igrid[ipsi_e] + mtheta[ipsi_e] - igrid[ipsi_s] + 1)*(1+mzeta)*dim;
    //#pragma omp parallel for num_threads(NUM_THREADS)
#pragma omp parallel for
    for (int j=0; j<count; j++){
      data[j+offset2] = ghost_sendrecvbuf[j+offset];
    }
    offset += count;
  }
  assert(offset == ghost_bufsize*(mzeta+1)*dim);

  //MPI_Barrier(radial_decomp->radiald_comm);

  free(recv_request);
  free(recv_status);
  free(send_request);
  free(send_status);

  return 0;
}
