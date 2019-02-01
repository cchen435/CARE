add_library(rtable STATIC
    pb.cpp
    tb.cpp
)

# target_link_libraries(rtable LLVMCore LLVMSupport protobuf )
target_link_libraries(rtable protobuf )

set(CMAKE_CXX_STANDARD 11) # enable C++11 standard
set(CMAKE_CXX_FLAGS "-std=c++11 -fPIC")
