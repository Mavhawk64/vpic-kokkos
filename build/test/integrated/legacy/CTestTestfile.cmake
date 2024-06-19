# CMake generated Testfile for 
# Source directory: /home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy
# Build directory: /home1/mberkland2023/repos/vpic-kokkos/build/test/integrated/legacy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(accel "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "accel" "1 1")
set_tests_properties(accel PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;13;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;0;")
add_test(cyclo "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "cyclo" "1 1")
set_tests_properties(cyclo PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;13;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;0;")
add_test(inbndj "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "inbndj" "1 1")
set_tests_properties(inbndj PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;13;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;0;")
add_test(interpe "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "interpe" "1 1")
set_tests_properties(interpe PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;13;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/legacy/CMakeLists.txt;0;")
