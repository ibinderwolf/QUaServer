include($$PWD/../amalgamation/open62541.pri)

QT     += core
CONFIG += c++11
CONFIG -= flat

INCLUDEPATH += $$PWD/

CONFIG += precompile_header_c
PRECOMPILED_HEADER = $$PWD/pch_open62541.h

SOURCES += \
    $$PWD/quaserver.cpp \
    $$PWD/quanode.cpp \
    $$PWD/quabasevariable.cpp \
    $$PWD/quaproperty.cpp \
    $$PWD/quabasedatavariable.cpp \
    $$PWD/quabaseobject.cpp \
    $$PWD/quafolderobject.cpp \
    $$PWD/quacustomdatatypes.cpp

ua_events {
    SOURCES += \
    $$PWD/quabaseevent.cpp \
    $$PWD/quageneralmodelchangeevent.cpp
}

SOURCES += \   
    $$PWD/quatypesconverter.cpp

HEADERS += \
    $$PWD/quaserver.h \
    $$PWD/quanode.h \
    $$PWD/quabasevariable.h \
    $$PWD/quaproperty.h \
    $$PWD/quabasedatavariable.h \
    $$PWD/quabaseobject.h \
    $$PWD/quafolderobject.h \
    $$PWD/quacustomdatatypes.h

ua_events {
    HEADERS += \
    $$PWD/quabaseevent.h \
    $$PWD/quageneralmodelchangeevent.h
}
    
HEADERS += \    
    $$PWD/quatypesconverter.h

DISTFILES += \
    $$PWD/QUaServer \
    $$PWD/QUaNode \
    $$PWD/QUaBaseVariable \
    $$PWD/QUaProperty \
    $$PWD/QUaBaseDataVariable \
    $$PWD/QUaBaseObject \
    $$PWD/QUaFolderObject \
    $$PWD/QUaCustomDataTypes


ua_events {
    DISTFILES += \
    $$PWD/QUaBaseEvent \
    $$PWD/QUaGeneralModelChangeEvent
}

DISTFILES += \    
    $$PWD/QUaTypesConverter