# -------------------------------------------------
# Project created by QtCreator 2010-08-14T20:45:54
# -------------------------------------------------
QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = ExifStatistics
TEMPLATE = app
INCLUDEPATH += include/
SOURCES += src/main.cpp \
    src/mainwindow.cpp \
    src/collector.cpp \
    src/entryreader.cpp \
    src/makefilter.cpp \
    src/modelfilter.cpp \
    src/tabexporter.cpp \
    src/htmlexporter.cpp \
    src/aboutdialog.cpp
HEADERS += include/mainwindow.h \
    include/collector.h \
    include/entryreader.h \
    include/ifilter.h \
    include/makefilter.h \
    include/modelfilter.h \
    include/htmlexporter.h \
    include/tabexporter.h \
    include/exporter.h \
    include/aboutdialog.h
FORMS += ui/mainwindow.ui \
    ui/aboutdialog.ui

RESOURCES += \
    ui/images.qrc

win32 {
    RC_FILE = Exifstats.rc
}

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.28.0-2019msvc64/lib/ -lexiv2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.28.0-2019msvc64/lib/ -lexiv2
else:unix: LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.28.0-2019msvc64/lib/ -lexiv2

INCLUDEPATH += $$PWD/../../../../ProgramCache/exiv2-0.28.0-2019msvc64/include
DEPENDPATH += $$PWD/../../../../ProgramCache/exiv2-0.28.0-2019msvc64/include

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/lib/ -lexiv2
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/lib/ -lexiv2d
#else:unix: LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/lib/ -lexiv2

#INCLUDEPATH += $$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/include
#DEPENDPATH += $$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/include

unix|win32: LIBS += -L$$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/lib/ -lexiv2-xmp

INCLUDEPATH += $$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/include
DEPENDPATH += $$PWD/../../../../ProgramCache/exiv2-0.27.3-2019msvc64/include
