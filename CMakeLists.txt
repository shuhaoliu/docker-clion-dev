cmake_minimum_required(VERSION 3.12)
project(docker_clion_dev)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(docker_clion_dev
    main.cpp)
