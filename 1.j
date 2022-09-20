exit -1

# s1.

./setup_modules.sh  -p /users/yonggangyu/tools/hpc-stack -c config/config_orcus_intel.sh

./build_stack.sh  -p /users/yonggangyu/tools/hpc-stack -c config/config_orcus_intel.sh -y stack/stack_orcus_intel.yaml


# s2  Mac
./setup_modules.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh

./build_stack.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh -y stack/stack_mac_test.yaml

./newbuild.sh  -p /Users/yonggangyu/tools/hpc-stack -c config/config_mac.sh -y stack/stack_mac_test.yaml



sh setup_modules.sh  -h

Usage: setup_modules.sh -p <prefix> | -c <config> | -h

  -p  installation prefix <prefix>    DEFAULT: /users/yonggangyu/opt
  -c  use configuration file <config> DEFAULT: config/config_custom.sh
  -h  display this message and quit
