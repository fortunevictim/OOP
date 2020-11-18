cmake_minimum_required(VERSION 3.5)
project(lab1_project)

#set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++11")

add_subdirectory(lib/googletest-master)
include_directories(lib/googletest-master/googletest/include)
include_directories(lib/googletest-master/googlemock/include)
include_directories(tests/include)
include_directories(../../lab1_src/lab1_src/include)
link_directories(../../lab1_src/lab1_src/include)

set(SOURCE_FILES main.cpp tests/TestForSet.cpp)
add_executable(gtestset ${SOURCE_FILES} tests/TestForSet.cpp)

target_link_libraries(gtestset gtest gtest_main lab1_src)