cmake_minimum_required(VERSION 3.4)

set(CARE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})

find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})

include_directories(
    ${LLVM_INCLUDE_DIRS}
    ${CARE_SOURCE_DIR}/include
)

add_subdirectory(rtable)    # the recovery table implementation for CARE. It is shared among frontend and runtime.
add_subdirectory(frontend)  # the frontend part of CARE.
add_subdirectory(runtime)   # the runtime part for CARE.
add_subdirectory(tools)   # the runtime part for CARE.