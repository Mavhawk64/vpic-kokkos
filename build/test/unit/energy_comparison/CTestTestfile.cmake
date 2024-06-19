# CMake generated Testfile for 
# Source directory: /home1/mberkland2023/repos/vpic-kokkos/test/unit/energy_comparison
# Build directory: /home1/mberkland2023/repos/vpic-kokkos/build/test/unit/energy_comparison
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(weibel_driver "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./weibel_driver")
set_tests_properties(weibel_driver PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/unit/energy_comparison/CMakeLists.txt;9;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/unit/energy_comparison/CMakeLists.txt;0;")
