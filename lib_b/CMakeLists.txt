cmake_minimum_required(VERSION 3.18)

project(lib_b CXX)

add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE main.cpp)
