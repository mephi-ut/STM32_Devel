#ifndef GET_UART_H
#define GET_UART_H
#include <QObject>
#include <QString>
#include <QThread>
#include <QtSerialPort/QtSerialPort>
#include <iostream>
#include <QVector>
#include <qcustomplot/qcustomplot.h>

const int N_P_GRAPH_DATA_SIZE = 1201, N_M_GRAPH_DATA_SIZE = 280;


struct GraphData
{
    QVector <double> ADC1_y_val;
    QVector <double> ADC2_y_val;
    QVector <double> ADC1_Count;
    QVector <double> ADC2_Count;
    int32_t f_delta_g = 0;
    int16_t m_position_g = 0;
    int32_t f_curr = 0;
    int32_t g_cur_pos = 0;
    int32_t g_offset = 0;

    GraphData(unsigned int nADC1Size, unsigned int nADC2Size) : ADC1_y_val(nADC1Size), ADC2_y_val(nADC2Size), ADC1_Count(nADC1Size), ADC2_Count(nADC2Size)
    {

    }

    private:

    GraphData() {};
};

class Get_Uart : public QObject
{
    Q_OBJECT
public:
    Get_Uart(QString name);
    ~Get_Uart();
    uint32_t i, graph_delay, graph_count;
    QString err, data;
    int ADC1_y, ADC2_y, ADC1_y_aprx, ADC2_y_aprx, f_delta, m_position, graph_offset, f_delta_g, m_pos_g;
    const uint8_t graph_delay_max = 5;
    uint8_t cmd_ok = 0;
    QFile out_data;

public slots:
    void doWork();
    void recv_command(QString);
    void OpenSerial(QString);

signals:
    void send_err(QString);
    void send_graph_pointer(GraphData *);

private:
    QString name;
    QSerialPort *serial;
    GraphData theGraphData;
    void CloseSerial();
    int f_delta_old, m_pos_old;

private slots:
    void ReadSerial();
};

#endif // GET_UART_H
