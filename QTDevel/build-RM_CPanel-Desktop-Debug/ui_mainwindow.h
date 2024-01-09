/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.3.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>
#include "qcustomplot/qcustomplot.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QCustomPlot *Delta_Force;
    QFrame *line;
    QFrame *line_2;
    QFrame *line_3;
    QFrame *line_4;
    QFrame *line_5;
    QFrame *Control_Panel;
    QFrame *Mode;
    QLabel *label_2;
    QPushButton *mode_auto;
    QPushButton *mode_stop;
    QPushButton *mode_manual;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QFrame *F_Panel;
    QLabel *label_5;
    QPushButton *force_up;
    QPushButton *force_stop;
    QLabel *label_15;
    QLabel *label_17;
    QPushButton *force_down;
    QLabel *label_16;
    QSpinBox *force_speed;
    QLabel *label_18;
    QSpinBox *force_limit;
    QLabel *label_19;
    QLabel *label_20;
    QLabel *label_21;
    QLineEdit *force_delta;
    QLabel *label_27;
    QLineEdit *force_pow;
    QLabel *label_29;
    QPushButton *f_reset;
    QFrame *M_panel;
    QLabel *label_22;
    QPushButton *sensor_up;
    QPushButton *sensor_stop;
    QLabel *label_23;
    QLabel *label_24;
    QPushButton *sensor_down;
    QLabel *label_25;
    QSpinBox *sensor_speed;
    QLabel *label_26;
    QLabel *label_28;
    QLineEdit *sensor_pos;
    QLabel *label_30;
    QPushButton *m_reset;
    QFrame *Misc;
    QComboBox *SelSerial;
    QPushButton *ConnSerial;
    QLabel *label_31;
    QComboBox *GraphType;
    QLabel *label_32;
    QComboBox *P_Scale;
    QLabel *label_33;
    QComboBox *F_Scale;
    QCustomPlot *Potential;
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1280, 787);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        Delta_Force = new QCustomPlot(centralWidget);
        Delta_Force->setObjectName(QStringLiteral("Delta_Force"));
        Delta_Force->setGeometry(QRect(30, 20, 1200, 470));
        Delta_Force->setMaximumSize(QSize(1200, 470));
        line = new QFrame(centralWidget);
        line->setObjectName(QStringLiteral("line"));
        line->setGeometry(QRect(30, 490, 1201, 16));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(line->sizePolicy().hasHeightForWidth());
        line->setSizePolicy(sizePolicy);
        line->setLineWidth(2);
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);
        line_2 = new QFrame(centralWidget);
        line_2->setObjectName(QStringLiteral("line_2"));
        line_2->setGeometry(QRect(20, 20, 16, 701));
        line_2->setLineWidth(2);
        line_2->setFrameShape(QFrame::VLine);
        line_2->setFrameShadow(QFrame::Sunken);
        line_3 = new QFrame(centralWidget);
        line_3->setObjectName(QStringLiteral("line_3"));
        line_3->setGeometry(QRect(30, 10, 1201, 16));
        sizePolicy.setHeightForWidth(line_3->sizePolicy().hasHeightForWidth());
        line_3->setSizePolicy(sizePolicy);
        line_3->setLineWidth(2);
        line_3->setFrameShape(QFrame::HLine);
        line_3->setFrameShadow(QFrame::Sunken);
        line_4 = new QFrame(centralWidget);
        line_4->setObjectName(QStringLiteral("line_4"));
        line_4->setGeometry(QRect(1230, 20, 16, 701));
        line_4->setLineWidth(2);
        line_4->setFrameShape(QFrame::VLine);
        line_4->setFrameShadow(QFrame::Sunken);
        line_5 = new QFrame(centralWidget);
        line_5->setObjectName(QStringLiteral("line_5"));
        line_5->setGeometry(QRect(30, 720, 1201, 16));
        sizePolicy.setHeightForWidth(line_5->sizePolicy().hasHeightForWidth());
        line_5->setSizePolicy(sizePolicy);
        line_5->setLineWidth(2);
        line_5->setFrameShape(QFrame::HLine);
        line_5->setFrameShadow(QFrame::Sunken);
        Control_Panel = new QFrame(centralWidget);
        Control_Panel->setObjectName(QStringLiteral("Control_Panel"));
        Control_Panel->setGeometry(QRect(30, 500, 1201, 231));
        Control_Panel->setFrameShape(QFrame::StyledPanel);
        Control_Panel->setFrameShadow(QFrame::Raised);
        Mode = new QFrame(Control_Panel);
        Mode->setObjectName(QStringLiteral("Mode"));
        Mode->setGeometry(QRect(0, 0, 181, 231));
        Mode->setFrameShape(QFrame::StyledPanel);
        Mode->setFrameShadow(QFrame::Raised);
        label_2 = new QLabel(Mode);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(0, 10, 181, 20));
        QFont font;
        font.setPointSize(14);
        label_2->setFont(font);
        label_2->setAlignment(Qt::AlignCenter);
        mode_auto = new QPushButton(Mode);
        mode_auto->setObjectName(QStringLiteral("mode_auto"));
        mode_auto->setEnabled(false);
        mode_auto->setGeometry(QRect(10, 40, 50, 50));
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/Button_green_off.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon.addFile(QStringLiteral(":/images/Button_green_on.png"), QSize(), QIcon::Normal, QIcon::On);
        mode_auto->setIcon(icon);
        mode_auto->setIconSize(QSize(50, 50));
        mode_auto->setCheckable(true);
        mode_auto->setAutoExclusive(true);
        mode_stop = new QPushButton(Mode);
        mode_stop->setObjectName(QStringLiteral("mode_stop"));
        mode_stop->setGeometry(QRect(10, 160, 50, 50));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon1.addFile(QStringLiteral(":/images/Button_red_on.png"), QSize(), QIcon::Normal, QIcon::On);
        icon1.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Disabled, QIcon::Off);
        icon1.addFile(QStringLiteral(":/images/Button_red_on.png"), QSize(), QIcon::Disabled, QIcon::On);
        icon1.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Active, QIcon::Off);
        icon1.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Selected, QIcon::Off);
        mode_stop->setIcon(icon1);
        mode_stop->setIconSize(QSize(50, 50));
        mode_stop->setCheckable(true);
        mode_stop->setChecked(true);
        mode_stop->setAutoExclusive(true);
        mode_stop->setAutoDefault(false);
        mode_manual = new QPushButton(Mode);
        mode_manual->setObjectName(QStringLiteral("mode_manual"));
        mode_manual->setGeometry(QRect(10, 100, 50, 50));
        mode_manual->setIcon(icon);
        mode_manual->setIconSize(QSize(50, 50));
        mode_manual->setCheckable(true);
        mode_manual->setAutoExclusive(true);
        label_6 = new QLabel(Mode);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setGeometry(QRect(70, 170, 101, 20));
        label_6->setFont(font);
        label_6->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_7 = new QLabel(Mode);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setGeometry(QRect(70, 110, 111, 20));
        label_7->setFont(font);
        label_7->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_8 = new QLabel(Mode);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setGeometry(QRect(70, 50, 111, 20));
        label_8->setFont(font);
        label_8->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        F_Panel = new QFrame(Control_Panel);
        F_Panel->setObjectName(QStringLiteral("F_Panel"));
        F_Panel->setGeometry(QRect(180, 0, 381, 231));
        F_Panel->setFrameShape(QFrame::StyledPanel);
        F_Panel->setFrameShadow(QFrame::Raised);
        label_5 = new QLabel(F_Panel);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(0, 10, 281, 20));
        label_5->setFont(font);
        label_5->setAlignment(Qt::AlignCenter);
        force_up = new QPushButton(F_Panel);
        force_up->setObjectName(QStringLiteral("force_up"));
        force_up->setEnabled(true);
        force_up->setGeometry(QRect(10, 40, 50, 50));
        force_up->setIcon(icon);
        force_up->setIconSize(QSize(50, 50));
        force_up->setCheckable(true);
        force_up->setAutoExclusive(true);
        force_stop = new QPushButton(F_Panel);
        force_stop->setObjectName(QStringLiteral("force_stop"));
        force_stop->setEnabled(true);
        force_stop->setGeometry(QRect(10, 100, 50, 50));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon2.addFile(QStringLiteral(":/images/Button_red_on.png"), QSize(), QIcon::Normal, QIcon::On);
        icon2.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Active, QIcon::Off);
        icon2.addFile(QStringLiteral(":/images/Button_red_off.png"), QSize(), QIcon::Selected, QIcon::Off);
        force_stop->setIcon(icon2);
        force_stop->setIconSize(QSize(50, 50));
        force_stop->setCheckable(true);
        force_stop->setChecked(true);
        force_stop->setAutoExclusive(true);
        force_stop->setAutoDefault(false);
        label_15 = new QLabel(F_Panel);
        label_15->setObjectName(QStringLiteral("label_15"));
        label_15->setGeometry(QRect(70, 110, 101, 20));
        label_15->setFont(font);
        label_15->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_17 = new QLabel(F_Panel);
        label_17->setObjectName(QStringLiteral("label_17"));
        label_17->setGeometry(QRect(70, 50, 111, 20));
        label_17->setFont(font);
        label_17->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        force_down = new QPushButton(F_Panel);
        force_down->setObjectName(QStringLiteral("force_down"));
        force_down->setEnabled(true);
        force_down->setGeometry(QRect(10, 160, 50, 50));
        force_down->setIcon(icon);
        force_down->setIconSize(QSize(50, 50));
        force_down->setCheckable(true);
        force_down->setAutoExclusive(true);
        label_16 = new QLabel(F_Panel);
        label_16->setObjectName(QStringLiteral("label_16"));
        label_16->setGeometry(QRect(70, 170, 111, 20));
        label_16->setFont(font);
        label_16->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        force_speed = new QSpinBox(F_Panel);
        force_speed->setObjectName(QStringLiteral("force_speed"));
        force_speed->setGeometry(QRect(160, 70, 61, 41));
        force_speed->setFont(font);
        force_speed->setMinimum(1);
        force_speed->setMaximum(10);
        label_18 = new QLabel(F_Panel);
        label_18->setObjectName(QStringLiteral("label_18"));
        label_18->setGeometry(QRect(160, 50, 61, 20));
        label_18->setFont(font);
        label_18->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        force_limit = new QSpinBox(F_Panel);
        force_limit->setObjectName(QStringLiteral("force_limit"));
        force_limit->setEnabled(false);
        force_limit->setGeometry(QRect(160, 170, 61, 41));
        force_limit->setFont(font);
        label_19 = new QLabel(F_Panel);
        label_19->setObjectName(QStringLiteral("label_19"));
        label_19->setGeometry(QRect(160, 140, 71, 20));
        label_19->setFont(font);
        label_19->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_20 = new QLabel(F_Panel);
        label_20->setObjectName(QStringLiteral("label_20"));
        label_20->setGeometry(QRect(230, 70, 61, 41));
        label_20->setFont(font);
        label_20->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_21 = new QLabel(F_Panel);
        label_21->setObjectName(QStringLiteral("label_21"));
        label_21->setGeometry(QRect(230, 170, 61, 41));
        label_21->setFont(font);
        label_21->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        force_delta = new QLineEdit(F_Panel);
        force_delta->setObjectName(QStringLiteral("force_delta"));
        force_delta->setEnabled(true);
        force_delta->setGeometry(QRect(290, 30, 71, 21));
        QFont font1;
        font1.setPointSize(11);
        force_delta->setFont(font1);
        force_delta->setReadOnly(true);
        label_27 = new QLabel(F_Panel);
        label_27->setObjectName(QStringLiteral("label_27"));
        label_27->setGeometry(QRect(290, 10, 71, 20));
        label_27->setFont(font1);
        label_27->setAlignment(Qt::AlignCenter);
        force_pow = new QLineEdit(F_Panel);
        force_pow->setObjectName(QStringLiteral("force_pow"));
        force_pow->setEnabled(true);
        force_pow->setGeometry(QRect(290, 100, 71, 21));
        force_pow->setFont(font1);
        force_pow->setReadOnly(true);
        label_29 = new QLabel(F_Panel);
        label_29->setObjectName(QStringLiteral("label_29"));
        label_29->setGeometry(QRect(290, 80, 71, 20));
        label_29->setFont(font1);
        label_29->setAlignment(Qt::AlignCenter);
        f_reset = new QPushButton(F_Panel);
        f_reset->setObjectName(QStringLiteral("f_reset"));
        f_reset->setGeometry(QRect(290, 50, 71, 21));
        f_reset->setFont(font1);
        M_panel = new QFrame(Control_Panel);
        M_panel->setObjectName(QStringLiteral("M_panel"));
        M_panel->setGeometry(QRect(560, 0, 291, 231));
        M_panel->setFrameShape(QFrame::StyledPanel);
        M_panel->setFrameShadow(QFrame::Raised);
        label_22 = new QLabel(M_panel);
        label_22->setObjectName(QStringLiteral("label_22"));
        label_22->setGeometry(QRect(0, 10, 281, 20));
        label_22->setFont(font);
        label_22->setAlignment(Qt::AlignCenter);
        sensor_up = new QPushButton(M_panel);
        sensor_up->setObjectName(QStringLiteral("sensor_up"));
        sensor_up->setEnabled(true);
        sensor_up->setGeometry(QRect(10, 40, 50, 50));
        sensor_up->setIcon(icon);
        sensor_up->setIconSize(QSize(50, 50));
        sensor_up->setCheckable(true);
        sensor_up->setAutoExclusive(true);
        sensor_stop = new QPushButton(M_panel);
        sensor_stop->setObjectName(QStringLiteral("sensor_stop"));
        sensor_stop->setEnabled(true);
        sensor_stop->setGeometry(QRect(10, 100, 50, 50));
        sensor_stop->setIcon(icon2);
        sensor_stop->setIconSize(QSize(50, 50));
        sensor_stop->setCheckable(true);
        sensor_stop->setChecked(true);
        sensor_stop->setAutoExclusive(true);
        sensor_stop->setAutoDefault(false);
        label_23 = new QLabel(M_panel);
        label_23->setObjectName(QStringLiteral("label_23"));
        label_23->setGeometry(QRect(70, 110, 101, 20));
        label_23->setFont(font);
        label_23->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_24 = new QLabel(M_panel);
        label_24->setObjectName(QStringLiteral("label_24"));
        label_24->setGeometry(QRect(70, 50, 71, 20));
        label_24->setFont(font);
        label_24->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        sensor_down = new QPushButton(M_panel);
        sensor_down->setObjectName(QStringLiteral("sensor_down"));
        sensor_down->setEnabled(true);
        sensor_down->setGeometry(QRect(10, 160, 50, 50));
        sensor_down->setIcon(icon);
        sensor_down->setIconSize(QSize(50, 50));
        sensor_down->setCheckable(true);
        sensor_down->setAutoExclusive(true);
        label_25 = new QLabel(M_panel);
        label_25->setObjectName(QStringLiteral("label_25"));
        label_25->setGeometry(QRect(70, 170, 111, 20));
        label_25->setFont(font);
        label_25->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        sensor_speed = new QSpinBox(M_panel);
        sensor_speed->setObjectName(QStringLiteral("sensor_speed"));
        sensor_speed->setGeometry(QRect(160, 70, 61, 41));
        sensor_speed->setFont(font);
        sensor_speed->setMinimum(1);
        sensor_speed->setMaximum(10);
        label_26 = new QLabel(M_panel);
        label_26->setObjectName(QStringLiteral("label_26"));
        label_26->setGeometry(QRect(160, 50, 61, 20));
        label_26->setFont(font);
        label_26->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        label_28 = new QLabel(M_panel);
        label_28->setObjectName(QStringLiteral("label_28"));
        label_28->setGeometry(QRect(230, 70, 51, 41));
        label_28->setFont(font);
        label_28->setAlignment(Qt::AlignLeading|Qt::AlignLeft|Qt::AlignVCenter);
        sensor_pos = new QLineEdit(M_panel);
        sensor_pos->setObjectName(QStringLiteral("sensor_pos"));
        sensor_pos->setEnabled(true);
        sensor_pos->setGeometry(QRect(160, 140, 81, 21));
        sensor_pos->setFont(font1);
        sensor_pos->setReadOnly(true);
        label_30 = new QLabel(M_panel);
        label_30->setObjectName(QStringLiteral("label_30"));
        label_30->setGeometry(QRect(160, 120, 81, 20));
        label_30->setFont(font1);
        label_30->setAlignment(Qt::AlignCenter);
        m_reset = new QPushButton(M_panel);
        m_reset->setObjectName(QStringLiteral("m_reset"));
        m_reset->setGeometry(QRect(160, 160, 80, 21));
        m_reset->setFont(font1);
        Misc = new QFrame(Control_Panel);
        Misc->setObjectName(QStringLiteral("Misc"));
        Misc->setGeometry(QRect(849, -1, 351, 231));
        Misc->setFrameShape(QFrame::StyledPanel);
        Misc->setFrameShadow(QFrame::Raised);
        SelSerial = new QComboBox(Misc);
        SelSerial->setObjectName(QStringLiteral("SelSerial"));
        SelSerial->setGeometry(QRect(10, 30, 161, 21));
        SelSerial->setFont(font1);
        SelSerial->setEditable(false);
        ConnSerial = new QPushButton(Misc);
        ConnSerial->setObjectName(QStringLiteral("ConnSerial"));
        ConnSerial->setGeometry(QRect(170, 30, 81, 21));
        ConnSerial->setFont(font1);
        label_31 = new QLabel(Misc);
        label_31->setObjectName(QStringLiteral("label_31"));
        label_31->setGeometry(QRect(10, 10, 161, 20));
        label_31->setFont(font1);
        label_31->setAlignment(Qt::AlignCenter);
        GraphType = new QComboBox(Misc);
        GraphType->setObjectName(QStringLiteral("GraphType"));
        GraphType->setEnabled(true);
        GraphType->setGeometry(QRect(10, 80, 161, 21));
        GraphType->setFont(font1);
        GraphType->setEditable(false);
        label_32 = new QLabel(Misc);
        label_32->setObjectName(QStringLiteral("label_32"));
        label_32->setGeometry(QRect(10, 60, 161, 20));
        label_32->setFont(font1);
        label_32->setAlignment(Qt::AlignCenter);
        P_Scale = new QComboBox(Misc);
        P_Scale->setObjectName(QStringLiteral("P_Scale"));
        P_Scale->setEnabled(true);
        P_Scale->setGeometry(QRect(170, 80, 81, 21));
        P_Scale->setFont(font1);
        P_Scale->setEditable(false);
        label_33 = new QLabel(Misc);
        label_33->setObjectName(QStringLiteral("label_33"));
        label_33->setGeometry(QRect(170, 60, 81, 20));
        label_33->setFont(font1);
        label_33->setAlignment(Qt::AlignCenter);
        F_Scale = new QComboBox(Misc);
        F_Scale->setObjectName(QStringLiteral("F_Scale"));
        F_Scale->setEnabled(true);
        F_Scale->setGeometry(QRect(170, 80, 81, 21));
        F_Scale->setFont(font1);
        F_Scale->setEditable(false);
        Potential = new QCustomPlot(centralWidget);
        Potential->setObjectName(QStringLiteral("Potential"));
        Potential->setGeometry(QRect(30, 20, 1200, 470));
        Potential->setMaximumSize(QSize(1200, 470));
        MainWindow->setCentralWidget(centralWidget);
        Control_Panel->raise();
        Delta_Force->raise();
        line->raise();
        line_2->raise();
        line_3->raise();
        line_4->raise();
        line_5->raise();
        Potential->raise();
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1280, 19));
        MainWindow->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        label_2->setText(QApplication::translate("MainWindow", "\320\240 \320\225 \320\226 \320\230 \320\234", 0));
        mode_auto->setText(QString());
        mode_stop->setText(QString());
        mode_manual->setText(QString());
        label_6->setText(QApplication::translate("MainWindow", "\320\241 \320\242 \320\236 \320\237", 0));
        label_7->setText(QApplication::translate("MainWindow", "\320\240\320\243\320\247\320\235\320\236\320\231", 0));
        label_8->setText(QApplication::translate("MainWindow", "\320\220\320\222\320\242\320\236", 0));
        label_5->setText(QApplication::translate("MainWindow", "\320\235 \320\220 \320\223 \320\240 \320\243 \320\227 \320\232 \320\220", 0));
        force_up->setText(QString());
        force_stop->setText(QString());
        label_15->setText(QApplication::translate("MainWindow", "\320\241 \320\242 \320\236 \320\237", 0));
        label_17->setText(QApplication::translate("MainWindow", "\320\235\320\220\320\242\320\257\320\223", 0));
        force_down->setText(QString());
        label_16->setText(QApplication::translate("MainWindow", "\320\236\320\241\320\233\320\220\320\221", 0));
#ifndef QT_NO_TOOLTIP
        force_speed->setToolTip(QString());
#endif // QT_NO_TOOLTIP
        force_speed->setSuffix(QString());
        label_18->setText(QApplication::translate("MainWindow", "\320\241\320\232\320\236\320\240.", 0));
        label_19->setText(QApplication::translate("MainWindow", "\320\237\320\236\320\240\320\236\320\223", 0));
        label_20->setText(QApplication::translate("MainWindow", "\320\234\320\234/\320\241", 0));
        label_21->setText(QApplication::translate("MainWindow", "\320\232\320\223\320\241", 0));
        label_27->setText(QApplication::translate("MainWindow", "\320\224\320\225\320\233\320\254\320\242\320\220", 0));
        label_29->setText(QApplication::translate("MainWindow", "\320\235\320\220\320\223\320\240.", 0));
        f_reset->setText(QApplication::translate("MainWindow", "\320\241\320\221\320\240\320\236\320\241", 0));
        label_22->setText(QApplication::translate("MainWindow", "\320\232 \320\220 \320\240 \320\225 \320\242 \320\232 \320\220", 0));
        sensor_up->setText(QString());
        sensor_stop->setText(QString());
        label_23->setText(QApplication::translate("MainWindow", "\320\241 \320\242 \320\236 \320\237", 0));
        label_24->setText(QApplication::translate("MainWindow", "\320\222\320\222\320\225\320\240\320\245", 0));
        sensor_down->setText(QString());
        label_25->setText(QApplication::translate("MainWindow", "\320\222\320\235\320\230\320\227", 0));
#ifndef QT_NO_TOOLTIP
        sensor_speed->setToolTip(QString());
#endif // QT_NO_TOOLTIP
        sensor_speed->setSuffix(QString());
        label_26->setText(QApplication::translate("MainWindow", "\320\241\320\232\320\236\320\240.", 0));
        label_28->setText(QApplication::translate("MainWindow", "\320\234\320\234/\320\241", 0));
        label_30->setText(QApplication::translate("MainWindow", "\320\237\320\236\320\227\320\230\320\246\320\230\320\257", 0));
        m_reset->setText(QApplication::translate("MainWindow", "\320\241\320\221\320\240\320\236\320\241", 0));
        ConnSerial->setText(QApplication::translate("MainWindow", "\320\237\320\236\320\224\320\232\320\233", 0));
        label_31->setText(QApplication::translate("MainWindow", "\320\237\320\236\320\240\320\242", 0));
        label_32->setText(QApplication::translate("MainWindow", "\320\242\320\230\320\237 \320\223\320\240\320\220\320\244\320\230\320\232\320\220", 0));
        label_33->setText(QApplication::translate("MainWindow", "Y-\320\224\320\230\320\220\320\237.", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
