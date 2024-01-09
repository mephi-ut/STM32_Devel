#-------------------------------------------------
#
# Project created by QtCreator 2016-12-11T00:41:07
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = RM_CPanel
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    qcustomplot/qcustomplot.cpp \
    get_uart.cpp

HEADERS  += mainwindow.h \
    qcustomplot/qcustomplot.h \
    get_uart.h

FORMS    += mainwindow.ui
QT += printsupport
QT += serialport

OTHER_FILES += \
    images/Button_disable.png \
    images/Button_green_off.png \
    images/Button_green_on.png \
    images/Button_red_off.png \
    images/Button_red_on.png

RESOURCES += \
    buttons.qrc

QMAKE_CXXFLAGS += -std=c++11

 CONFIG += c++11

RC_FILE = rm_ico.rc