cmake_minimum_required(VERSION 3.4)
project(HackerRank)

set(CMAKE_VERBOSE_MAKEFILE TRUE)

set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -std=c11")

set(BINARY_DIR ${PROJECT_SOURCE_DIR}/bin)

set(C_CODE_SOURCE_DIR ${PROJECT_SOURCE_DIR}/c_code)
add_custom_target(solve_me_first_c COMMAND make -C ${C_CODE_SOURCE_DIR} BIN_DIR=${BINARY_DIR})
add_custom_target(simeple_array_sum_c COMMAND make -C ${C_CODE_SOURCE_DIR} BIN_DIR=${BINARY_DIR})

set(CPP_CODE_SOURCE_DIR ${PROJECT_SOURCE_DIR}/cpp_code)
add_custom_target(solve_me_first_cpp COMMAND make -C ${CPP_CODE_SOURCE_DIR} BIN_DIR=${BINARY_DIR})

set(D_CODE_SOURCE_DIR ${PROJECT_SOURCE_DIR}/d_code)
add_custom_target(solve_me_first_d COMMAND make -C ${D_CODE_SOURCE_DIR} BIN_DIR=${BINARY_DIR})

set(GO_CODE_SOURCE_DIR ${PROJECT_SOURCE_DIR}/go_code)
add_custom_target(solve_me_first_go COMMAND make -C ${GO_CODE_SOURCE_DIR} BIN_DIR=${BINARY_DIR})

set(SOURCE_FILES main.cpp)
add_executable(HackerRank ${SOURCE_FILES})
