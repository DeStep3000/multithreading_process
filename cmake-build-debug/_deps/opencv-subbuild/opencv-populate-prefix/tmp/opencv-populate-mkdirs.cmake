# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-src"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-build"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/tmp"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src"
  "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/DeStep/HSE/C++/multithreading/cmake-build-debug/_deps/opencv-subbuild/opencv-populate-prefix/src/opencv-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
