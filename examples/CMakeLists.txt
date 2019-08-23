cmake_minimum_required(VERSION 3.11)
project(QUaServer-Examples VERSION 0.1 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core REQUIRED)
find_package(open62541 REQUIRED)

add_subdirectory(01_basics)
add_subdirectory(02_methods)
add_subdirectory(03_references)
add_subdirectory(04_types)
add_subdirectory(05_server)
add_subdirectory(06_users)
add_subdirectory(07_encryption)
add_subdirectory(08_events)
