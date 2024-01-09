#ifndef MAINWINDOW_H
#define MAINWINDOW_H


#include <QMainWindow>
#include <QtSerialPort/QtSerialPort>
#include <stdint.h>
#include <QGraphicsScene>
#include <QtCore/QCoreApplication>
#include <QDebug>
#include <iostream>
#include <QTimer>
#include "get_uart.h"

struct GraphData;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QSerialPort *serial;
    void OpenSerial();
    void CloseSerial();
    QTimer *redraw_timer;
    uint8_t Speeds[11] = {64, 64, 48, 32, 24, 21, 15, 12, 9, 6, 3};
    GraphData *pGraphData;
    Get_Uart *my;

public slots:
    void recv_graph_pointer(GraphData *);
    void Show_Errors(QString);

private slots:
    void on_mode_manual_pressed();

    void on_mode_stop_clicked();

    void on_mode_auto_clicked();

    void on_force_up_clicked();

    void on_sensor_up_clicked();

    void on_sensor_down_clicked();

    void on_sensor_stop_clicked();

    void on_mode_manual_clicked();

    void on_force_down_clicked();

    void on_force_stop_clicked();

    void on_ConnSerial_clicked();

    void on_m_reset_clicked();

    void on_f_reset_clicked();

    void updateGraph();

    void on_GraphType_currentIndexChanged(int index);

    void on_P_Scale_currentIndexChanged(int index);

    void on_F_Scale_currentIndexChanged(int index);

signals:
    void send_command(QString);
    void OpenSerial(QString);
};

enum motors {
    M_UP = 12,
    M_DOWN = 11,
    M_STOP = 19,
    F_UP = 21,
    F_DOWN = 22,
    F_STOP=29
};

#endif // MAINWINDOW_H
