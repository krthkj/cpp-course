cmake_minimum_required(VERSION 3.7)

project(cpp-course)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(Boost COMPONENTS system filesystem REQUIRED)
find_package(Threads)
# find_package (libmongocxx REQUIRED)

include_directories(${Boost_INCLUDE_DIRS})

# add_library(search search.h search.cpp )
# add_library(md5 md5.cpp md5.h)
# add_library(checksum checksum.cpp checksum.h)

add_executable(cpp_test main.cpp )
# target_include_directories(cpp_test PRIVATE ${Boost_INLCUDE_DIRS} ${LIBMONGOCXX_INCLUDE_DIRS})
target_include_directories(cpp_test PRIVATE ${Boost_INLCUDE_DIRS})
# target_link_libraries(${PROJECT_NAME} search md5 checksum ${Boost_LIBRARIES} ${LIBMONGOCXX_LIBRARIES} stdc++fs Threads::Threads)
# target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} stdc++fs Threads::Threads)
target_link_libraries(cpp_test ${Boost_LIBRARIES} stdc++fs Threads::Threads)
