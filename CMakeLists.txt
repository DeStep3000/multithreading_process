cmake_minimum_required(VERSION 3.17)
project(multithreading)

set(CMAKE_CXX_STANDARD 20)

add_executable(multithreading main.cpp)

set(wxWidgets_ROOT_DIR "C:/wxwidgets") # absolute location wxwidgets
set(wxWidgets_LIB_DIR "C:/wxwidgets/lib/gcc810_x64_dll")
find_package(wxWidgets REQUIRED COMPONENTS net core base)
include(${wxWidgets_USE_FILE})
target_link_libraries(multithreading PRIVATE ${wxWidgets_LIBRARIES})
target_include_directories(multithreading PRIVATE ${wxWidgets_INCLUDE_DIRS})