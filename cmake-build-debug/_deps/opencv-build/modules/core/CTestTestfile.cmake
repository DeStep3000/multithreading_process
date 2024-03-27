# CMake generated Testfile for 
# Source directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core
# Build directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-build/modules/core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_core "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_test_cored.exe" "--gtest_output=xml:opencv_test_core.xml")
set_tests_properties(opencv_test_core PROPERTIES  LABELS "Main;opencv_core;Accuracy" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;170;ocv_add_accuracy_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;0;")
add_test(opencv_perf_core "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_perf_cored.exe" "--gtest_output=xml:opencv_perf_core.xml")
set_tests_properties(opencv_perf_core PROPERTIES  LABELS "Main;opencv_core;Performance" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/performance" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1251;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;171;ocv_add_perf_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;0;")
add_test(opencv_sanity_core "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_perf_cored.exe" "--gtest_output=xml:opencv_perf_core.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_core PROPERTIES  LABELS "Main;opencv_core;Sanity" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/sanity" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1252;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;171;ocv_add_perf_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/core/CMakeLists.txt;0;")
