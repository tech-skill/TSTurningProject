TEMPLATE = app
QT += gui

CONFIG += c++14

TEMPLATE = app

include(../3rdparty/catch2/catch.pri)
include(../3rdparty/trompeloeil/trompeloeil.pri)

PROJECT_DIR = $$PWD/../TSTurning

INCLUDEPATH += $$PROJECT_DIR

isEmpty(CATCH_INCLUDE_DIR): CATCH_INCLUDE_DIR=$$(CATCH_INCLUDE_DIR)
# set by Qt Creator wizard
isEmpty(CATCH_INCLUDE_DIR): CATCH_INCLUDE_DIR = $$PWD/../3rdparty
!isEmpty(CATCH_INCLUDE_DIR): INCLUDEPATH *= $${CATCH_INCLUDE_DIR}

isEmpty(CATCH_INCLUDE_DIR): {
    message("CATCH_INCLUDE_DIR is not set, assuming Catch2 can be found automatically in your system")
}

PROJECT_SOURCES = \
    $$PROJECT_DIR/settings.cpp

PROJECT_HEADERS = \
    $$PROJECT_DIR/setting.h

SOURCES +=     main.cpp     tst_apptests.cpp \
    test_settings.cpp \
    $$PROJECT_SOURCES

HEADERS += \
    $$PROJECT_HEADERS
