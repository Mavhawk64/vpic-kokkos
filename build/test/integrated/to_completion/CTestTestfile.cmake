# CMake generated Testfile for 
# Source directory: /home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion
# Build directory: /home1/mberkland2023/repos/vpic-kokkos/build/test/integrated/to_completion
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(simple "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./simple")
set_tests_properties(simple PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;29;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(dump "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./dump")
set_tests_properties(dump PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;29;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(reconnection_test "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./reconnection_test")
set_tests_properties(reconnection_test PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;29;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(generate_restore "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./generate_restore")
set_tests_properties(generate_restore PROPERTIES  _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;51;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(perform_restore "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./perform_restore" "--restore" "/home1/mberkland2023/repos/vpic-kokkos/build/test/integrated/to_completion/checkpt_test.1")
set_tests_properties(perform_restore PROPERTIES  DEPENDS "generate_restore" _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;59;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(perform_2stage_compile "/home1/mberkland2023/repos/vpic-kokkos/build/bin/vpic" "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/simple.deck")
set_tests_properties(perform_2stage_compile PROPERTIES  FIXTURES_SETUP "2stage_fixture" _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;71;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
add_test(run_2stage_compile "/usr/local/spack/opt/spack/linux-ubuntu20.04-zen2/gcc-9.4.0/openmpi-4.1.1-ltmwwysjjowof4zsojcmq54r5qqzgty6/bin/mpiexec" "-n" "1" "./simple.deck.Linux")
set_tests_properties(run_2stage_compile PROPERTIES  FIXTURES_REQUIRED "2stage_fixture" _BACKTRACE_TRIPLES "/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;77;add_test;/home1/mberkland2023/repos/vpic-kokkos/test/integrated/to_completion/CMakeLists.txt;0;")
