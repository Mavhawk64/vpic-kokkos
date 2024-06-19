# CMake generated Testfile for 
# Source directory: /home1/mberkland2023/repos/vpic-kokkos
# Build directory: /home1/mberkland2023/repos/vpic-kokkos/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rng "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./rng")
set_tests_properties(rng PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/CMakeLists.txt;508;add_test;/home1/mberkland2023/repos/vpic-kokkos/CMakeLists.txt;0;")
subdirs("kokkos")
subdirs("test/integrated")
subdirs("test/unit")
