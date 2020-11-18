cmake_minimum_required(VERSION 3.5)
project(lab1_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++0x")

set(lab1_src_files Trit.cpp Trit.h TritSet.cpp TritSet.h)

add_library(lab1_src ${lab1_src_files})

