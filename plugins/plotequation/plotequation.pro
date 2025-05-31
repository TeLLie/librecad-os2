QT       += gui
TEMPLATE = lib
CONFIG += plugin
VERSION = 1.0.1
os2:TARGET_SHORT = plottion
TARGET = $$qtLibraryTarget(plotequation)

GENERATED_DIR = ../../generated/plugin/plotequation
# Use common project definitions.
include(../../common.pri)
include(../../librecad/src/muparser.pri)

# For plugins
INCLUDEPATH    += ../../librecad/src/plugins
INCLUDEPATH    += $$DEPENDPATH

SOURCES += \
    plot.cpp \
    plotdialog.cpp

HEADERS += \
    plotdialog.h \
    plot.h

# Installation Directory
os2 {
        DESTDIR = ../../os2/resources/plugins
}

win32 {
        DESTDIR = ../../windows/resources/plugins
}
unix {
    macx {
        DESTDIR = ../../LibreCAD.app/Contents/Resources/plugins
    }
    else {
        DESTDIR = ../../unix/resources/plugins
    }
}
