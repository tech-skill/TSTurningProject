QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

PROJECT_DIR = $$PWD/../TSTurning
INCLUDEPATH += $$PROJECT_DIR/../3rdparty/ThorsSerializer

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    basecycle.cpp \
    main.cpp \
    mainwindow.cpp \
    settings.cpp

HEADERS += \
    basecycle.h \
    mainwindow.h \
    settings.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resources.qrc

ICON = tech-skill-logo.png
