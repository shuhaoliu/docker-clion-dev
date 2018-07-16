cmake_minimum_required(VERSION 3.10)
project(docker_clion_dev)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-g")

add_executable(main main.cpp)