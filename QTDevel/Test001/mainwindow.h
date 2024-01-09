#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtSerialPort/QtSerialPort>
#include <stdint.h>
#include <QGraphicsScene>
#include <QtCore/QCoreApplication>
#include <QDebug>
#include <iostream>
#include <QVector>
#include <qcustomplot.h>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    QString motor_Send;
    QString Start_Data;
    QString Stop_Data;
    QTimer *timer;
    QTimer *timer_refresh;
    QGraphicsScene *scene;
    int step = 0, max_step = 4, Redraw_X=0;
    int Divider = 1;
    int Zero=0;



private slots:
    void on_M_up_clicked();

    void on_M_up_pressed();

    void on_M_stop_pressed();

    void on_M_down_pressed();

    void on_F_up_pressed();

    void on_F_stop_pressed();

    void on_F_down_pressed();

    void on_Cycle_pressed();

    void on_Manual_pressed();

    void on_All_Stop_pressed();

    void on_ReadSerial();

    void on_Graph_pressed();

    void on_Graph_Start_pressed();

    void on_Graph_Stop_pressed();

    void Draw_Timestamp();

    void on_Graph_Clear_pressed();

    void GraphDraw();

private:
    Ui::MainWindow *ui;
    QSerialPort *serial;
    void OpenSerial();
    void CloseSerial();
    QVector <double> ADC1_val, ADC1_count;
//    QCustomPlot *force_plot;


};

enum motors {
    M_UP = 11,
    M_DOWN = 12,
    M_STOP = 19,
    F_UP = 21,
    F_DOWN = 22,
    F_STOP=29
};

#endif // MAINWINDOW_H
