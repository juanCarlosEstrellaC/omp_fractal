cmake_minimum_required(VERSION 3.29)
project(omp_fractal)

set(CMAKE_CXX_STANDARD 17)

# Habilitar OMP
set(CMAKE_CXX_FLAGS "${CXX_CMAKE_FLAGS} -fopenmp")

find_package(fmt)
find_package(SFML)
find_package(glfw3)

add_executable(omp_fractal main.cpp
        fps_counter.cpp
        fps_counter.h
)

target_link_libraries(omp_fractal fmt::fmt
        sfml::sfml
        glfw
)
