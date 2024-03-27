cmake_minimum_required(VERSION 3.17)
project(VisionC)

set(CMAKE_CXX_STANDARD 20)

# Fetch from git
include(FetchContent)

FetchContent_Declare(
        opencv
        GIT_REPOSITORY https://github.com/opencv/opencv.git
        GIT_TAG        4.4.0
)
FetchContent_GetProperties(opencv)
if (NOT opencv_POPULATED)
    FetchContent_Populate(opencv)
endif ()
FetchContent_MakeAvailable(opencv)

# Find on pc
set(OpenCV_DIR ${CMAKE_CURRENT_BINARY_DIR})
include_directories(${OpenCV_INCLUDE_DIRS})
find_package(OpenCV REQUIRED)

# Link
add_executable(VisionC main.cpp)
target_link_libraries(VisionC ${OpenCV_LIBS})