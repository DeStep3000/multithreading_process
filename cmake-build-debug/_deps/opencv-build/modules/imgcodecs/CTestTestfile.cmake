# CMake generated Testfile for 
# Source directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs
# Build directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-build/modules/imgcodecs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgcodecs "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_test_imgcodecsd.exe" "--gtest_output=xml:opencv_test_imgcodecs.xml")
set_tests_properties(opencv_test_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Accuracy" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;175;ocv_add_accuracy_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;0;")
add_test(opencv_perf_imgcodecs "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_perf_imgcodecsd.exe" "--gtest_output=xml:opencv_perf_imgcodecs.xml")
set_tests_properties(opencv_perf_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Performance" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/performance" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1251;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;0;")
add_test(opencv_sanity_imgcodecs "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_perf_imgcodecsd.exe" "--gtest_output=xml:opencv_perf_imgcodecs.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_imgcodecs PROPERTIES  LABELS "Main;opencv_imgcodecs;Sanity" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/sanity" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1252;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;186;ocv_add_perf_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/imgcodecs/CMakeLists.txt;0;")
