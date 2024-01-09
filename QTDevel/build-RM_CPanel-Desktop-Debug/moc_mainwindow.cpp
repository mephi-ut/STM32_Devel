/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.3.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../RM_CPanel/mainwindow.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.3.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MainWindow_t {
    QByteArrayData data[25];
    char stringdata[470];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MainWindow_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 12),
QT_MOC_LITERAL(2, 24, 0),
QT_MOC_LITERAL(3, 25, 10),
QT_MOC_LITERAL(4, 36, 18),
QT_MOC_LITERAL(5, 55, 10),
QT_MOC_LITERAL(6, 66, 11),
QT_MOC_LITERAL(7, 78, 22),
QT_MOC_LITERAL(8, 101, 20),
QT_MOC_LITERAL(9, 122, 20),
QT_MOC_LITERAL(10, 143, 19),
QT_MOC_LITERAL(11, 163, 20),
QT_MOC_LITERAL(12, 184, 22),
QT_MOC_LITERAL(13, 207, 22),
QT_MOC_LITERAL(14, 230, 22),
QT_MOC_LITERAL(15, 253, 21),
QT_MOC_LITERAL(16, 275, 21),
QT_MOC_LITERAL(17, 297, 21),
QT_MOC_LITERAL(18, 319, 18),
QT_MOC_LITERAL(19, 338, 18),
QT_MOC_LITERAL(20, 357, 11),
QT_MOC_LITERAL(21, 369, 32),
QT_MOC_LITERAL(22, 402, 5),
QT_MOC_LITERAL(23, 408, 30),
QT_MOC_LITERAL(24, 439, 30)
    },
    "MainWindow\0send_command\0\0OpenSerial\0"
    "recv_graph_pointer\0GraphData*\0Show_Errors\0"
    "on_mode_manual_pressed\0on_mode_stop_clicked\0"
    "on_mode_auto_clicked\0on_force_up_clicked\0"
    "on_sensor_up_clicked\0on_sensor_down_clicked\0"
    "on_sensor_stop_clicked\0on_mode_manual_clicked\0"
    "on_force_down_clicked\0on_force_stop_clicked\0"
    "on_ConnSerial_clicked\0on_m_reset_clicked\0"
    "on_f_reset_clicked\0updateGraph\0"
    "on_GraphType_currentIndexChanged\0index\0"
    "on_P_Scale_currentIndexChanged\0"
    "on_F_Scale_currentIndexChanged"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      21,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  119,    2, 0x06 /* Public */,
       3,    1,  122,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    1,  125,    2, 0x0a /* Public */,
       6,    1,  128,    2, 0x0a /* Public */,
       7,    0,  131,    2, 0x08 /* Private */,
       8,    0,  132,    2, 0x08 /* Private */,
       9,    0,  133,    2, 0x08 /* Private */,
      10,    0,  134,    2, 0x08 /* Private */,
      11,    0,  135,    2, 0x08 /* Private */,
      12,    0,  136,    2, 0x08 /* Private */,
      13,    0,  137,    2, 0x08 /* Private */,
      14,    0,  138,    2, 0x08 /* Private */,
      15,    0,  139,    2, 0x08 /* Private */,
      16,    0,  140,    2, 0x08 /* Private */,
      17,    0,  141,    2, 0x08 /* Private */,
      18,    0,  142,    2, 0x08 /* Private */,
      19,    0,  143,    2, 0x08 /* Private */,
      20,    0,  144,    2, 0x08 /* Private */,
      21,    1,  145,    2, 0x08 /* Private */,
      23,    1,  148,    2, 0x08 /* Private */,
      24,    1,  151,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::QString,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 5,    2,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   22,
    QMetaType::Void, QMetaType::Int,   22,
    QMetaType::Void, QMetaType::Int,   22,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->send_command((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->OpenSerial((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->recv_graph_pointer((*reinterpret_cast< GraphData*(*)>(_a[1]))); break;
        case 3: _t->Show_Errors((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->on_mode_manual_pressed(); break;
        case 5: _t->on_mode_stop_clicked(); break;
        case 6: _t->on_mode_auto_clicked(); break;
        case 7: _t->on_force_up_clicked(); break;
        case 8: _t->on_sensor_up_clicked(); break;
        case 9: _t->on_sensor_down_clicked(); break;
        case 10: _t->on_sensor_stop_clicked(); break;
        case 11: _t->on_mode_manual_clicked(); break;
        case 12: _t->on_force_down_clicked(); break;
        case 13: _t->on_force_stop_clicked(); break;
        case 14: _t->on_ConnSerial_clicked(); break;
        case 15: _t->on_m_reset_clicked(); break;
        case 16: _t->on_f_reset_clicked(); break;
        case 17: _t->updateGraph(); break;
        case 18: _t->on_GraphType_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 19: _t->on_P_Scale_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->on_F_Scale_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MainWindow::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::send_command)) {
                *result = 0;
            }
        }
        {
            typedef void (MainWindow::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::OpenSerial)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_MainWindow.data,
      qt_meta_data_MainWindow,  qt_static_metacall, 0, 0}
};


const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow.stringdata))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 21)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 21;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 21)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 21;
    }
    return _id;
}

// SIGNAL 0
void MainWindow::send_command(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void MainWindow::OpenSerial(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
