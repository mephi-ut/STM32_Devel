#-------------------------------------------------
#
# Project created by QtCreator 2016-02-13T14:32:27
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

TARGET = Test001
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    qcustomplot.cpp

HEADERS  += mainwindow.h \
    qcustomplot.h

FORMS    += mainwindow.ui
RESOURCES = buttons.qrc
QT += serialport
QMAKE_CXXFLAGS += -std=c++11
