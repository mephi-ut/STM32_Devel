#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->serial = new QSerialPort(this);
    this-> OpenSerial();
    connect(this->serial, SIGNAL(readyRead()), this, SLOT(on_ReadSerial()));



}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::OpenSerial()
{
    this->serial->setPortName("/dev/ttyUSB0");
//  this->serial->setPortName("/dev/pts/7");
    this->serial->setBaudRate(QSerialPort::Baud9600);
    this->serial->setDataBits(QSerialPort::Data8);
    this->serial->setFlowControl(QSerialPort::NoFlowControl);
    this->serial->setParity(QSerialPort::NoParity);
    this->serial->setStopBits(QSerialPort::OneStop);

    if (serial->open(QIODevice::ReadWrite)) {
        qDebug() << "yes";
    } else {
        qDebug() << "no";
    }
}

void MainWindow::on_ReadSerial()
{
    if (serial->canReadLine()){
    QString data = serial->readLine();
//        emit send_data(data);
        qDebug() << data << "all";
     }
}
