#include "get_uart.h"
#include <QDebug>

Get_Uart::Get_Uart(QString s) : name(s), theGraphData(N_M_GRAPH_DATA_SIZE, N_P_GRAPH_DATA_SIZE)
{

}

void Get_Uart::doWork()
{
    //ADC1_y_val = QVector<double>(1200);
    //ADC2_y_val = QVector<double>(1200);
    //ADC_Count = QVector<double>(1200);
    emit send_graph_pointer(&theGraphData);
    graph_delay = 0;
    graph_count = 10;
    graph_offset = 0;
    f_delta_g = 0;
    m_pos_g = 0;
    f_delta_old = -1;
    m_pos_old = -1;
    theGraphData.g_cur_pos = 0;
    out_data.setFileName("./out_data.txt");
    out_data.open(QIODevice::WriteOnly);
    out_data.write("A - Sensor position \r\nB - POTENCIAL\r\nC - Force delta\r\nD - FORCE\r\n\r\nA\tB\tC\tD\r\n");

    this->serial = new QSerialPort(this);
 //   this-> OpenSerial();
}

void Get_Uart::OpenSerial(QString port)
{
    this->serial->setPortName(port);
  //  this->serial->setPortName("/dev/pts/16");
    this->serial->setBaudRate(QSerialPort::Baud115200);
    this->serial->setDataBits(QSerialPort::Data8);
    this->serial->setFlowControl(QSerialPort::NoFlowControl);
    this->serial->setParity(QSerialPort::NoParity);
    this->serial->setStopBits(QSerialPort::OneStop);
    if (serial->open(QIODevice::ReadWrite)) {
        emit send_err("Connected.");
        qDebug() << "yes";
        connect(this->serial, SIGNAL(readyRead()), this, SLOT(ReadSerial()));
    } else {
        emit send_err("Can not open serial port!");
        qDebug() << "no";
    }


}

void Get_Uart::ReadSerial()
{
    if (serial->canReadLine()){
    data = serial->readLine();
       qDebug() << data << " " << f_delta_g << graph_offset;
        QRegExp rx("[ ]+");
        QStringList stringlist = data.split(rx);
        QString ende = stringlist[10];
        QString starte = stringlist[0];
        if (starte[0] == 'B' && ende[0] == 'E'){  //проверка что строка не битая
            ADC1_y = stringlist[5].toInt() - 8388810; //8388810 - это "ноль"
            ADC2_y = stringlist[6].toInt() - 8388810;
            QByteArray data1 = stringlist[7].toUtf8() + "\t" + QByteArray::number(ADC1_y) + "\t" + stringlist[8].toUtf8() + "\t" + QByteArray::number(ADC2_y) + "\r\n";
            out_data.write(data1);
 //           qDebug() << ADC1_y << ADC2_y;
            f_delta = stringlist[8].toInt();
            if (f_delta < 0){
                f_delta = 0;
            }
            m_position = stringlist[7].toInt();

            if (f_delta_g >= N_P_GRAPH_DATA_SIZE - 1){
                graph_offset += N_P_GRAPH_DATA_SIZE - 1;
                theGraphData.g_cur_pos = 1;
                theGraphData.g_offset = graph_offset;
                theGraphData.ADC2_y_val.fill(0);
                theGraphData.ADC2_Count.fill(0);
                theGraphData.ADC2_y_val.begin();
                theGraphData.ADC2_Count.begin();
                theGraphData.g_cur_pos = 2;
            }

            f_delta_g = f_delta/graph_count - graph_offset;

            if (f_delta_g < 0){

                graph_offset -= N_P_GRAPH_DATA_SIZE;
                f_delta_g = graph_offset;
                theGraphData.g_cur_pos = 1;
                theGraphData.g_offset = graph_offset;
                theGraphData.ADC2_y_val.fill(0);
                theGraphData.ADC2_Count.fill(0);
                theGraphData.ADC2_y_val.begin();
                theGraphData.ADC2_Count.begin();
                theGraphData.g_cur_pos = 2;
             }

            if (theGraphData.g_cur_pos == 3){
                f_delta_g = 0;
                graph_offset = 0;
                theGraphData.g_cur_pos = 1;
                theGraphData.ADC2_y_val.fill(0);
                theGraphData.ADC2_Count.fill(0);
                theGraphData.ADC2_y_val.begin();
                theGraphData.ADC2_Count.begin();
                theGraphData.g_cur_pos = 2;
            }

            if (f_delta_old != f_delta_g){
                if (f_delta_g < 0){
                    f_delta_g = 0;
                }
            theGraphData.ADC2_y_val[f_delta_g] = ADC2_y;
            theGraphData.ADC2_Count[f_delta_g] = f_delta_g;
            theGraphData.f_delta_g = f_delta_g;
            theGraphData.f_curr = ADC2_y;
            f_delta_old = f_delta_g;
            }

            m_pos_g = m_position/100;


            if (m_pos_g != m_pos_old){
                m_pos_old = m_pos_g;
                if (m_pos_g < 0){
                    m_pos_g = 0;
                }
                if (m_pos_g > N_M_GRAPH_DATA_SIZE){
                    m_pos_g = N_M_GRAPH_DATA_SIZE;
                }
                theGraphData.ADC1_Count[m_pos_g] = m_pos_g;
                theGraphData.ADC1_y_val[m_pos_g] = ADC1_y/10;
                theGraphData.m_position_g = m_pos_g;
            }



        }
    }
}


void Get_Uart::recv_command(QString command){

   this->serial->write(command.toUtf8());

}

Get_Uart::~Get_Uart(){
    out_data.close();
}
