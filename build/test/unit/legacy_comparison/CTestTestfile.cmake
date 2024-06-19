# CMake generated Testfile for 
# Source directory: /home1/mberkland2023/repos/vpic-kokkos/test/unit/legacy_comparison
# Build directory: /home1/mberkland2023/repos/vpic-kokkos/build/test/unit/legacy_comparison
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rho_p "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./rho_p")
set_tests_properties(rho_p PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/unit/legacy_comparison/CMakeLists.txt;3;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/unit/legacy_comparison/CMakeLists.txt;0;")
add_test(hydro_p "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./hydro_p")
set_tests_properties(hydro_p PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/unit/legacy_comparison/CMakeLists.txt;6;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/unit/legacy_comparison/CMakeLists.txt;0;")
