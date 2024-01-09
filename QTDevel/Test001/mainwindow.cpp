#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPushButton>
#include <QString>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    //force_plot = new QCustomPlot(this);
    this->serial = new QSerialPort(this);
    this->OpenSerial();
    Stop_Data = "N\r\n";
    Start_Data = "R\r\n";
    this->serial->write(Start_Data.toUtf8());
    timer = new QTimer(this);
    timer_refresh = new QTimer(this);
    connect(this->serial, SIGNAL(readyRead()), this, SLOT(on_ReadSerial()));
    connect(timer, SIGNAL(timeout()), this, SLOT(GraphDraw()));
    //    memset(ADC1_val,0,sizeof(ADC1_val));
    //    memset(ADC1_count,0,sizeof(ADC1_count));
        timer->start(256);
        ui->Plot->addGraph();
        ui->Plot->xAxis->setRange(0,1200);
        ui->Plot->yAxis->setRange(0,800);
       // force_plot->rescaleAxes();
    ADC1_val = QVector<double>(1200);
    ADC1_count = QVector<double>(1200);

}

MainWindow::~MainWindow()
{
    delete serial;
    delete ui;
}

void MainWindow::OpenSerial(){
    this->serial->setPortName("/dev/ttyUSB0");
 //   this->serial->setPortName("/dev/pts/7");
   this->serial->open(QIODevice::ReadWrite);

    this->serial->setBaudRate(QSerialPort::Baud9600);
    this->serial->setDataBits(QSerialPort::Data8);
    this->serial->setFlowControl(QSerialPort::NoFlowControl);
    this->serial->setParity(QSerialPort::NoParity);
    this->serial->setStopBits(QSerialPort::OneStop);

    if (serial->open(QIODevice::ReadWrite)) {
        this->ui->statusBar->showMessage("Connected");
    } else {
        this->ui->statusBar->showMessage("Error: cannot connect!");
    }
}

void MainWindow::on_M_up_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        int M_Val = 31-this->ui->Mspeed->value()*3;
        QString motor_Send = "H"+QString::number(motors(M_UP))+" "+QString::number(M_Val)+"\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}


void MainWindow::on_M_stop_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        QString motor_Send = "H"+QString::number(motors(M_STOP))+" 1\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}


void MainWindow::on_M_up_clicked()
{

}

void MainWindow::on_M_down_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        int M_Val = 31-this->ui->Mspeed->value()*3;
        QString motor_Send = "H"+QString::number(motors(M_DOWN))+" "+QString::number(M_Val)+"\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}

void MainWindow::on_F_up_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        int F_Val = 33-this->ui->Fspeed->value()*3;
        QString motor_Send = "H"+QString::number(motors(F_UP))+" "+QString::number(F_Val)+"\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}

void MainWindow::on_F_stop_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        QString motor_Send = "H"+QString::number(motors(F_STOP))+" 1\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}

void MainWindow::on_F_down_pressed()
{
    if (this->ui->Manual->isChecked() == 1){
        int F_Val = 33-this->ui->Fspeed->value()*3;
        QString motor_Send = "H"+QString::number(motors(F_DOWN))+" "+QString::number(F_Val)+"\r\n";
        this->serial->write(motor_Send.toUtf8());
    }
}
void MainWindow::on_Cycle_pressed()
{

}

void MainWindow::on_Manual_pressed()
{

}

void MainWindow::on_All_Stop_pressed()
{

}

void MainWindow::on_ReadSerial()
{
if (serial->canReadLine()){
    QString string = serial->readLine();
    QRegExp rx("[ ]+");
    QStringList stringlist = string.split(rx);
   /*
    if (step < max_step){
            step++;
            return;
        } else {
            step = 0;
        };
    */
    if (Redraw_X == 1199){
    this->ui->Plot->clearGraphs();
    ADC1_count.clear();
    ADC1_val.clear();
    ADC1_val = QVector<double>(1200);
    ADC1_count = QVector<double>(1200);
    Redraw_X = 0;

    }
    //ADC1_val[Redraw_X] = 22;

    if (ADC1_val[Redraw_X] < 1){
        ADC1_val[Redraw_X] = 1;
    }
  //  while (ADC1_val[Redraw_X]/Divider > 800){
  //      Divider++;
  //  };
    ADC1_val[Redraw_X] = (stringlist[5].toDouble() - 0x800000+ (Zero*1000))/2000/Divider;
    ADC1_count[Redraw_X] = Redraw_X;
    Redraw_X = Redraw_X+1;
   } else {
    qDebug() << "empty";

}
// qDebug()  << ADC1_count[Redraw_X-1] << Divider << ADC1_val[Redraw_X-1] << Redraw_X;

}

void MainWindow::GraphDraw(){


 //   force_plot->addGraph(0)->setData(ADC1_count, ADC1_val);
 //   force_plot->replot();
    this->ui->Plot->addGraph()->setData(ADC1_count, ADC1_val);
    this->ui->Plot->replot();
 //   qDebug() << string << stringlist[5] << ADC1_val[ADC1_count] << ADC1_count << Divider << ADC1_val[ADC1_count]/Divider;

}

void MainWindow::on_Graph_pressed()
{
    Start_Data = "R\r\n";
    this->serial->write(Start_Data.toUtf8());

}

void MainWindow::on_Graph_Start_pressed()
{
    timer->start(1000);

    Start_Data = "R\r\n";
    this->serial->write(Start_Data.toUtf8());
}

void MainWindow::on_Graph_Stop_pressed()
{
    Stop_Data = "N\r\n";
    this->serial->write(Stop_Data.toUtf8());
    timer->stop();

}


void MainWindow::on_Graph_Clear_pressed()
{



}



