exit -1
#s0. cheyenne intel from scratch

./setup_modules.sh  -p /glade/work/yonggangyu/tools/hpc-stack  -c config/config_cheyenne_intel_4scratch.sh

./build_stack.sh   -p /glade/work/yonggangyu/tools/hpc-stack  -c config/config_cheyenne_intel_4scratch.sh  -y stack/stack_cheyenne_intel_4scratch.yaml -m

## module
source /etc/profile.d/modules.sh
ml purge
module unuse /glade/u/apps/ch/modulefiles/default/idep
ml intel/2022.1
echo $MODULEPATH
ml
ml av

# s1. orcus
./setup_modules.sh  -p /users/yonggangyu/tools/hpc-stack -c config/config_orcus_intel.sh
./build_stack.sh  -p /users/yonggangyu/tools/hpc-stack -c config/config_orcus_intel.sh -y stack/stack_orcus_intel.yaml -m

# s2  Mac
./setup_modules.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh

./build_stack.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh -y stack/stack_mac_test.yaml
./newbuild.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh -y stack/stack_mac_test.yaml

#s3   module
source /nfs/coe-sw/loginfiles/bash
module purge
module unuse /nfs/coe-sw/lmod/lmod/modulefiles/idep
module unuse /nfs/coe-sw/lmod/lmod/modulefiles/commercial
module load intel/2022.2.0
module av

echo $MODULEPATH
PREFIX=/users/yonggangyu/tools/hpc-stack
module use $PREFIX/modulefiles/stack
module load hpc/1.2.0
