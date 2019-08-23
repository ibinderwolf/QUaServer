cmake_minimum_required(VERSION 3.11)
project(QUaServer VERSION 0.1 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core REQUIRED)
find_package(open62541 REQUIRED)

set(SOURCE_FILES
    quabasedatavariable.cpp
    quabaseevent.cpp
    quabaseobject.cpp
    quabasevariable.cpp
    quacustomdatatypes.cpp
    quafolderobject.cpp
    quageneralmodelchangeevent.cpp
    quanode.cpp
    quaproperty.cpp
    quaserver.cpp
    quatypesconverter.cpp
    )

set(HEADER_FILES
    QUaBaseDataVariable
    QUaBaseEvent
    QUaBaseVariable
    QUaCustomDataTypes
    QUaFolderObject
    QUaGeneralModelChangeEvent
    QUaNode
    QUaProperty
    QUaServer
    QUaTypesConverter

    quabasedatavariable.h
    quabaseevent.h
    quabaseobject.h
    quabasevariable.h
    quacustomdatatypes.h
    quafolderobject.h
    quageneralmodelchangeevent.h
    quanode.h
    quaproperty.h
    quaserver.h
    quatypesconverter.h
    )

add_library(${PROJECT_NAME}
    ${SOURCE_FILES}
    ${HEADER_FILES}
    )

target_link_libraries(${PROJECT_NAME}
    Qt5::Core
    open62541::open62541
    )
target_include_directories(${PROJECT_NAME}
    PRIVATE ${PROJECT_SOURCE_DIR}
    PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
           $<INSTALL_INTERFACE:include>
    )

install(TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Runtime
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR} COMPONENT Development
    )
