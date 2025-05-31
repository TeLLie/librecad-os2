#-------------------------------------------------
#
# Project created by QtCreator 2011-03-22T19:33:11
#
#-------------------------------------------------

QT       += gui
TEMPLATE = lib
CONFIG += plugin
VERSION = 1.0.0
os2:TARGET_SHORT = ascifile
TARGET = $$qtLibraryTarget(asciifile)

GENERATED_DIR = ../../generated/plugin/asciifile
# Use common project definitions.
include(../../common.pri)

# For plugins
INCLUDEPATH    += ../../librecad/src/plugins

SOURCES += asciifile.cpp
HEADERS += asciifile.h

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
