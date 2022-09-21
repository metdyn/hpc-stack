#!/bin/bash

# Compiler/MPI combination
export HPC_COMPILER="intel/2022.2.0"
export HPC_MPI="mpich/4.0.2"
export HPC_PYTHON="python/dummy"

# Build options
export USE_SUDO=N
export PKGDIR=pkg
export LOGDIR=log
export OVERWRITE=N
export NTHREADS=12
export   MAKE_CHECK=N
export MAKE_VERBOSE=N
export   MAKE_CLEAN=N
export DOWNLOAD_ONLY=N
export STACK_EXIT_ON_FAIL=Y
export WGET="wget -nv"


# Build FMS with AVX2 flags
export STACK_fms_CFLAGS="-march=core-avx2"
export STACK_fms_FFLAGS="-march=core-avx2"
# on mac gcc 11
#export STACK_pio_FFLAGS="-fallow-argument-mismatch -fallow-invalid-boz"



#module purge
#module load intel/2022.2.0 
#module load mpich/4.0.2
#module load cmake/3.17.3


# module reset
# module unload netcdf
# module add  cmake/3.17.3     intel/2022.2.0   mpich/4.0.2 

#exit
#
#
#
#module unuse /nfs/coe-sw/lmod/lmod/modulefiles/compilers
#
##exit
#
#
##module use   /glade/p/ral/jntp/GMTB/tools/compiler_mpi_modules/compilers
##export MODULEPATH_ROOT=/glade/p/ral/jntp/GMTB/tools/compiler_mpi_modules
#
#
#module use   /users/yonggangyu/tools/hpc-stack/compiler_mpi_modules/compilers
#export MODULEPATH_ROOT=/users/yonggangyu/tools/hpc-stack/compiler_mpi_modules
#
#
#
#module load ncarcompilers/0.5.0
#module load ncarenv/1.3
#
## Load these basic modules for Cheyenne
#
