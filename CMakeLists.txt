cmake_minimum_required(VERSION 3.17)
project(multithreading)

set(CMAKE_CXX_STANDARD 20)

add_executable(multithreading main.cpp)
target_link_libraries(multithreading ${OpenCV_LIBS})