# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-src"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-build"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/tmp"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src"
  "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/clion/multithreading_process1/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
