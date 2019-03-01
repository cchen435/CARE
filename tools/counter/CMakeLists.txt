
cmake_minimum_required(VERSION 3.4)

set(CARE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})

find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(
    ${LLVM_INCLUDE_DIRS}
    ${CARE_SOURCE_DIR}/include
)
link_directories( ${LLVM_LIBRARY_DIRS})

add_subdirectory(src)  # Use your pass name here.