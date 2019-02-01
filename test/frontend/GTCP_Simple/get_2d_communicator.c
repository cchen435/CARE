#include <stdio.h>
#include <mpi.h>
#ifdef __bgq__
#include <firmware/include/personality.h>
#include <spi/include/kernel/process.h>
#include <spi/include/kernel/location.h>
#endif

#ifndef __bgq__
// If not on BG/Q, just return MPI_COMM_WORLD
void get_2d_communicator(MPI_Comm * comm2d)
{
  *comm2d = MPI_COMM_WORLD;
}
#else

static int Xcoord, Ycoord;
static int Xsize,  Ysize;
static int Bx, By;

void get_2d_communicator(MPI_Comm * comm2d)
{

  int nA, nB, nC, nD, nE;
  int iA, iB, iC, iD, iE;
  int match, displ;
  int ip, pc, iq, qc;
  int Pdim, Ploc, Qdim, Qloc;
  int world_rank, ranks_per_node, rank_in_node;
  int node, rank2d, color, key, core;
  int Lx, Ly;
  int px, py;
  int nranks;
  MPI_Comm node_comm;

  Personality_t personality;

  Kernel_GetPersonality(&personality, sizeof(personality));

  core = Kernel_PhysicalProcessorID();
 
  nA = personality.Network_Config.Anodes;
  nB = personality.Network_Config.Bnodes;
  nC = personality.Network_Config.Cnodes;
  nD = personality.Network_Config.Dnodes;
  nE = personality.Network_Config.Enodes;

  iA = personality.Network_Config.Acoord;
  iB = personality.Network_Config.Bcoord;
  iC = personality.Network_Config.Ccoord;
  iD = personality.Network_Config.Dcoord;
  iE = personality.Network_Config.Ecoord;

  MPI_Comm_size( MPI_COMM_WORLD, &nranks );

  if ( nranks < ( 16384 * 16 ) ) // Less than 16 racks on bgq
  {
    Xsize = nC*nD*nE;
    Ysize = nA*nB;

    // first do Y => AB
    // sweep along diagonals until the coordinates match
    if (nA >= nB) {
      Pdim = nA; Ploc = iA;
      Qdim = nB; Qloc = iB;
    }
    else {
      Pdim = nB; Ploc = iB;
      Qdim = nA; Qloc = iA;
    }
  }
  else
  {
    Xsize = nB*nC*nD; // 16 racks or more on bgq
    Ysize = nA*nE;

    // first do Y 
    // sweep along diagonals until the coordinates match
    if (nA >= nE) {
      Pdim = nA; Ploc = iA;
      Qdim = nE; Qloc = iE;
    }
    else {
      Pdim = nE; Ploc = iE;
      Qdim = nA; Qloc = iA;
    }
  }

  match = 0;
  displ = 0;

  for (ip=0; ip<Pdim; ip+=2) {
     for (iq=0; iq<Qdim; iq++) {
        pc = ip + iq;
        if (pc >= Pdim)  pc = pc - Pdim;
        qc = iq;
        if ((pc == Ploc) && (qc == Qloc)) {
           match = 1;
           break;
        }
        else displ++;
     }

     if (match == 1) break;

     for (iq=(Qdim - 1); iq>=0; iq--) {
        pc =  1 + ip + iq;
        if (pc >= Pdim)  pc = pc - Pdim;
        qc = iq;
        if ((pc == Ploc) && (qc == Qloc)) {
           match = 1;
           break;
        }
        else displ++;
     }

     if (match == 1) break;

  }

  Ycoord = displ;

  if ( nranks < 16384 )
  {
    // next do X => CDE
    // sweep along diagonals until the coordinates match
    if (nD >= nE) {
      Pdim = nD; Ploc = iD;
      Qdim = nE; Qloc = iE;
    }
    else {
      Pdim = nE; Ploc = iE;
      Qdim = nD; Qloc = iD;
    }
  }
  else
  {
    // next do X => BCD
    // sweep along diagonals until the coordinates match
    if (nC >= nD) {
      Pdim = nC; Ploc = iC;
      Qdim = nD; Qloc = iD;
    }
    else {
      Pdim = nD; Ploc = iD;
      Qdim = nC; Qloc = iC;
    }
  }

  match = 0;
  displ = 0;
  
  for (ip=0; ip<Pdim; ip+=2) {
     for (iq=0; iq<Qdim; iq++) {
        pc = ip + iq;
        if (pc >= Pdim)  pc = pc - Pdim;
        qc = iq;
        if ((pc == Ploc) && (qc == Qloc)) {
           match = 1;
           break;
        }
        else displ++;
     }

     if (match == 1) break;

     for (iq=(Qdim - 1); iq>=0; iq--) {
        pc =  1 + ip + iq;
        if (pc >= Pdim)  pc = pc - Pdim;
        qc = iq;
        if ((pc == Ploc) && (qc == Qloc)) {
           match = 1;
           break;
        }
        else displ++;
     }

     if (match == 1) break;

  }

  if ( nranks < 16384 )
  {
    Xcoord = displ + iC*Pdim*Qdim;
  }
  else
  {
    Xcoord = displ + iB*Pdim*Qdim;
  }


  node = iE + iD*nE + iC*nD*nE + iB*nC*nD*nE + iA*nB*nC*nD*nE;

  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

  MPI_Comm_split(MPI_COMM_WORLD, node, world_rank, &node_comm);

  MPI_Comm_size(node_comm, &ranks_per_node);

  MPI_Comm_rank(node_comm, &rank_in_node);

  if      (ranks_per_node == 64) {
     Bx = 8; By = 8;
  }
  else if (ranks_per_node == 32) {
     Bx = 8; By = 4;
  }
  else if (ranks_per_node == 16) {
     Bx = 4; By = 4;
  }
  else if (ranks_per_node == 8) {
     Bx = 2; By = 4;
  }
  else if (ranks_per_node == 4) {
     Bx = 2; By = 2;
  }
  else if (ranks_per_node == 2) {
     Bx = 2; By = 1;
  }
  else if (ranks_per_node == 1) {
     Bx = 1; By = 1;
  }

  // use XY order for local and global cartesian ranks
//Ly = rank_in_node / Bx;
//Lx = rank_in_node - (Ly * Bx);
  Lx = rank_in_node / By;
  Ly = rank_in_node - (Lx * By);

//px = Lx + Bx*Xcoord;
//py = Ly + By*Ycoord;
  px = Xcoord + Lx*Xsize;
  py = Ycoord + Ly*Ysize;

  key = px + py*(Bx*Xsize);
//key = py + px*(By*Ysize);

  color = 1;

  MPI_Comm_split(MPI_COMM_WORLD, color, key, comm2d);

  if (world_rank == 0) {
     printf("5d shape = <%d,%d,%d,%d,%d>\n", nA, nB, nC, nD, nE);
     printf("2d shape = <%d,%d>\n", Xsize, Ysize);
     printf("local box = <%d,%d>\n",Bx, By);
  }

//printf("rank with key %d has px = %d, py = %d\n", key, px, py);

  if (world_rank == 0) printf("constructed a 2d communicator with logical dimensions <%d,%d>\n", 
                               Bx*Xsize, By*Ysize);
}


void get_2d_dimensions(int * dims)
{
   dims[0] = Xsize * Bx;
   dims[1] = Ysize * By;
}


void split_2d_communicator(MPI_Comm old_comm, MPI_Comm * new_comm)
{
   char split_dimension;
   int color, key, rank;

   // stop splitting when there is just one node in the communicator
   if (Xsize*Ysize == 1) {
      *new_comm = MPI_COMM_NULL;
       return;
   }

   MPI_Comm_rank(old_comm, &rank);

   key = rank;

   split_dimension = 'X';
   if (Xsize < Ysize) split_dimension = 'Y';

   if (split_dimension == 'X') {
      color = (2*Xcoord)/Xsize;
      Xsize /= 2;
   }
   if (split_dimension == 'Y') {
      color = (2*Ycoord)/Ysize;
      Ysize /= 2;
   }

   MPI_Comm_split(old_comm, color, key, new_comm);

}
#endif
