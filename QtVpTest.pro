QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtVpTest
TEMPLATE = app

INCLUDEPATH = include \
    ../QtVp/include

SOURCES += src/main.cpp\
    src/mainwindow.cpp

HEADERS  += include/mainwindow.h

FORMS    += src/mainwindow.ui

RESOURCES += QtVpTest.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-QtVp-Desktop_Qt_5_0_2_MSVC2010_32bit-Release/release/ -lQtVp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-QtVp-Desktop_Qt_5_0_2_MSVC2010_32bit-Debug/debug/ -lQtVp
else:unix: LIBS += -L$$PWD/../build-QtVp-Desktop_Qt_5_0_2_MSVC2010_32bit-Debug/ -lQtVp

INCLUDEPATH += $$PWD/../build-QtVp-Desktop_Qt_5_0_2_MSVC2010_32bit-Debug/debug
DEPENDPATH += $$PWD/../build-QtVp-Desktop_Qt_5_0_2_MSVC2010_32bit-Debug/debug
