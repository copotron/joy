cmake_minimum_required(VERSION 3.5)

set(CAPN_PROTO_MODULE_PATH $ENV{CAPN_PROTO_MODULE_PATH})

set(CMAKE_MODULE_PATH "${CAPN_PROTO_MODULE_PATH};${CMAKE_MODULE_PATH}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CAPNPC_SRC_PREFIX "capnp")

set(CAPNPC_OUTPUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/gen/)

project(jstest)

find_package(CapnProto REQUIRED)

add_definitions(${CAPNP_DEFINITIONS})
file(MAKE_DIRECTORY ${CAPNPC_OUTPUT_DIR})
capnp_generate_cpp(CAPNP_SRCS CAPNP_HDRS ${CAPNPC_SRC_PREFIX}/joy.capnp)

include_directories(${CAPNP_INCLUDE_DIRS})
include_directories(${CAPNPC_OUTPUT_DIR})

add_executable(jstest jstest.cpp jstest.c axbtnmap.c ${CAPNP_SRCS})
target_link_libraries(jstest ${CAPNP_LIBRARIES})
target_include_directories(jstest PRIVATE ${CMAKE_CURRENT_BINARY_DIR})

#export CAPN_PROTO_MODULE_PATH=${WORKSPACE_DIR}/3p/capnproto-c++-x.x.x/cmake/