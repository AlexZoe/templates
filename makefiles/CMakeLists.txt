project(Sample)
cmake_minimum_required(VERSION 3.16)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

find_package(Boost COMPONENTS
    program_options
)

find_package(GTest CONFIG REQUIRED)

file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/*.cpp)
include_directories(${CMAKE_SOURCE_DIR}/include)
# Filter out files
#list(REMOVE_ITEM SOURCES ${CMAKE_SOURCE_DIR}/src/main.cpp)

add_executable(prog
    ${SOURCES}
)

target_link_libraries(prog
    ${OpenCV_LIBS}
    ${Boost_LIBRARIES}
    gtest
    pthread
)

add_subdirectory(unit_tests)
