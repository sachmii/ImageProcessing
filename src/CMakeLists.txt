cmake_minimum_required(VERSION 3.14)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )
project(imagefilters)

set(SOURCES main.cpp processing.cpp)
set(HEADERS processing.h)

add_executable(main.out ${SOURCES} ${HEADERS})

target_link_libraries(main.out ${OpenCV_LIBS})