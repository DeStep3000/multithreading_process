# CMake generated Testfile for 
# Source directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/flann
# Build directory: C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-build/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/bin/opencv_test_flannd.exe" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVUtils.cmake;1739;add_test;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/flann/CMakeLists.txt;2;ocv_define_module;C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src/modules/flann/CMakeLists.txt;0;")
