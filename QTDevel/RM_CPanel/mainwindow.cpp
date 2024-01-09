#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPushButton>
#include <QString>
#include <get_uart.h>
#include <QSerialPortInfo>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow), pGraphData(0)
{
    ui->setupUi(this);
    this->ui->Delta_Force->show();
    this->ui->Potential->hide();
    ui->Delta_Force->addGraph();
    ui->Delta_Force->yAxis->setNumberPrecision(0);
    ui->Delta_Force->yAxis->setNumberFormat("ebc");
    ui->Delta_Force->xAxis->setRange(0,N_P_GRAPH_DATA_SIZE);
    ui->Delta_Force->yAxis->setRange(-1000,1000);
    ui->Delta_Force->xAxis->setAutoTickStep(false);
    ui->Delta_Force->xAxis->setTickStep(50);
    ui->Delta_Force->xAxis->grid()->setSubGridVisible(true);
    ui->Delta_Force->yAxis->grid()->setSubGridVisible(true);


    ui->Potential->addGraph();
    ui->Potential->yAxis->setNumberPrecision(0);
    ui->Potential->yAxis->setNumberFormat("ebc");
    ui->Potential->xAxis->setRange(0,N_M_GRAPH_DATA_SIZE);
    ui->Potential->yAxis->setRange(-1000,1000);
    ui->Potential->xAxis->setAutoTickStep(false);
    ui->Potential->xAxis->setTickStep(10);
    ui->Potential->xAxis->grid()->setSubGridVisible(true);
    ui->Potential->yAxis->grid()->setSubGridVisible(true);


    this->ui->F_Panel->hide();
    this->ui->M_panel->hide();
    this->ui->F_Scale->show();
    this->ui->P_Scale->hide();
    this->ui->GraphType->addItem("Delta-Force");
    this->ui->GraphType->addItem("Potencial");

    this->ui->P_Scale->addItem("10^2");
    this->ui->P_Scale->addItem("10^3");
    this->ui->P_Scale->addItem("10^4");
    this->ui->P_Scale->addItem("10^5");
    this->ui->P_Scale->addItem("10^6");

    this->ui->F_Scale->addItem("10^2");
    this->ui->F_Scale->addItem("10^3");
    this->ui->F_Scale->addItem("10^4");
    this->ui->F_Scale->addItem("10^5");
    this->ui->F_Scale->addItem("10^6");

    foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
        ui->SelSerial->addItem(info.portName(),info.portName());
    }


 //   for (cnt = 0; cnt < 1201; cnt++){
   //     ADC1_y_val[cnt] = ADC2_y_val[cnt] = 0;
   //     ADC_Count[cnt] = cnt;
   // }

    QThread *thread = new QThread;
    my = new Get_Uart("A");
    my->moveToThread(thread);
    redraw_timer = new QTimer();
    redraw_timer->setInterval(200);
    connect(redraw_timer,SIGNAL(timeout()), this,SLOT(updateGraph()));
    connect(thread, SIGNAL(started()), my, SLOT(doWork()));
    connect(this, SIGNAL(send_command(QString)), my, SLOT(recv_command(QString)));
    connect(this, SIGNAL(OpenSerial(QString)), my, SLOT(OpenSerial(QString)));
    connect(my, SIGNAL(send_err(QString)), this, SLOT(Show_Errors(QString)));
    connect(my, SIGNAL(send_graph_pointer(GraphData *)), this,SLOT(recv_graph_pointer(GraphData *)));
    thread->start();
    redraw_timer->start();
}

MainWindow::~MainWindow()
{
    QString command = "H"+QString::number(motors(M_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(200);
    command = "H"+QString::number(motors(F_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(200);
    command = "H00 200\r\n";
    emit send_command(command);
    delete my;
    delete ui;
}

void MainWindow::recv_graph_pointer(GraphData *pRecv)
{
    pGraphData = pRecv;
}




void MainWindow::updateGraph()
{

    qDebug() << pGraphData->f_delta_g;
    if (pGraphData->g_cur_pos == 0){
    this->ui->force_delta->setText(QString::number((pGraphData->f_delta_g + pGraphData->g_offset)));
    this->ui->sensor_pos->setText(QString::number((pGraphData->m_position_g)));
    this->ui->force_pow->setText(QString::number((pGraphData->f_curr)));
    this->ui->Delta_Force->clearGraphs();
    this->ui->Delta_Force->addGraph()->setData(pGraphData->ADC2_Count, pGraphData->ADC2_y_val);
    this->ui->Potential->clearGraphs();
    this->ui->Potential->addGraph()->setData(pGraphData->ADC1_Count, pGraphData->ADC1_y_val);

    }

    if (pGraphData->g_cur_pos == 2){
        this->ui->Delta_Force->clearGraphs();
        pGraphData->g_cur_pos = 0;
    }

    this->ui->Delta_Force->replot();
    this->ui->Potential->replot();

   }

void MainWindow::Show_Errors(QString err)
{
    this->ui->statusBar->showMessage(err);
}


void MainWindow::on_mode_manual_pressed()
{

}

void MainWindow::on_mode_stop_clicked()
{
    QString command = "H"+QString::number(motors(M_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(200);
    command = "H"+QString::number(motors(F_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(200);
    command = "H00 200\r\n";
    emit send_command(command);

}

void MainWindow::on_mode_auto_clicked()
{
    QString command = "H01 200\r\n";
    emit send_command(command);
}

void MainWindow::on_sensor_up_clicked()
{
    uint8_t Mspeed = this->ui->sensor_speed->value();
    QString command = "H"+QString::number(motors(M_UP))+" "+QString::number(Speeds[Mspeed])+"\r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_force_up_clicked()
{
    uint8_t Fspeed = this->ui->force_speed->value();
    QString command = "H"+QString::number(motors(F_UP))+" "+QString::number(Speeds[Fspeed])+"\r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_sensor_down_clicked()
{
    uint8_t Mspeed = this->ui->sensor_speed->value();
    QString command = "H"+QString::number(motors(M_DOWN))+" "+QString::number(Speeds[Mspeed])+"\r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_sensor_stop_clicked()
{
    QString command = "H"+QString::number(motors(M_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_mode_manual_clicked()
{
    QString command = "H01 200\r\n";
    emit send_command(command);
    this->ui->F_Panel->show();
    this->ui->M_panel->show();
}

void MainWindow::on_force_down_clicked()
{
    uint8_t Fspeed = this->ui->force_speed->value();
    QString command = "H"+QString::number(motors(F_DOWN))+" "+QString::number(Speeds[Fspeed])+"\r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_force_stop_clicked()
{
    QString command = "H"+QString::number(motors(F_STOP))+" "+"200 \r\n";
    emit send_command(command);
    QThread::msleep(20);
    emit send_command(command);
}

void MainWindow::on_ConnSerial_clicked()
{
    QString port = ui->SelSerial->currentText();
    emit OpenSerial(port);
}


void MainWindow::on_m_reset_clicked()
{
    QString command = "H02 200 \r\n";
    emit send_command(command);
}

void MainWindow::on_f_reset_clicked()
{
    if (this->ui->force_stop->isChecked() == true){
    QString command = "H03 200 \r\n";
    emit send_command(command);
    this->ui->Delta_Force->clearGraphs();
    pGraphData->g_cur_pos = 3;
    }
}

void MainWindow::on_GraphType_currentIndexChanged(int index)
{
    if (index == 0){
        this->ui->Delta_Force->show();
        this->ui->Potential->hide();
        this->ui->P_Scale->hide();
        this->ui->F_Scale->show();
    }
    if (index == 1){
        this->ui->Delta_Force->hide();
        this->ui->Potential->show();
        this->ui->P_Scale->show();
        this->ui->F_Scale->hide();
    }

}

void MainWindow::on_P_Scale_currentIndexChanged(int index)
{
    switch (index){
    case 0: ui->Potential->yAxis->setRange(-100,100);
        break;
    case 1:  ui->Potential->yAxis->setRange(-1000,1000);
        break;
    case 2: ui->Potential->yAxis->setRange(-10000,10000);
        break;
    case 3:  ui->Potential->yAxis->setRange(-100000,100000);
        break;
    case 4:  ui->Potential->yAxis->setRange(-1000000,1000000);
        break;
    case 5:  ui->Potential->yAxis->setRange(-10000000,10000000);
        break;
    default:  ui->Potential->yAxis->setRange(-1000,1000);
        break;
    }
}

void MainWindow::on_F_Scale_currentIndexChanged(int index)
{
    switch (index){
    case 0: ui->Delta_Force->yAxis->setRange(-100,100);
        break;
    case 1:  ui->Delta_Force->yAxis->setRange(-1000,1000);
        break;
    case 2: ui->Delta_Force->yAxis->setRange(-10000,10000);
        break;
    case 3:  ui->Delta_Force->yAxis->setRange(-100000,100000);
        break;
    case 4:  ui->Delta_Force->yAxis->setRange(-1000000,1000000);
        break;
    case 5:  ui->Delta_Force->yAxis->setRange(-10000000,10000000);
        break;
    default:  ui->Delta_Force->yAxis->setRange(-1000,1000);
        break;
    }
}

