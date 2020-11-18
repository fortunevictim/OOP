cmake_minimum_required(VERSION 3.5)
project(lab1_project)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=gnu++0x")

add_subdirectory("${PROJECT_SOURCE_DIR}/lab1_src/lab1_src")
add_subdirectory("${PROJECT_SOURCE_DIR}/gtestset/gtestset")