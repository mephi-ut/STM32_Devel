/****************************************************************************
** Meta object code from reading C++ file 'get_uart.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../RM_CPanel/get_uart.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'get_uart.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Get_Uart_t {
    QByteArrayData data[9];
    char stringdata0[91];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Get_Uart_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Get_Uart_t qt_meta_stringdata_Get_Uart = {
    {
QT_MOC_LITERAL(0, 0, 8), // "Get_Uart"
QT_MOC_LITERAL(1, 9, 8), // "send_err"
QT_MOC_LITERAL(2, 18, 0), // ""
QT_MOC_LITERAL(3, 19, 18), // "send_graph_pointer"
QT_MOC_LITERAL(4, 38, 10), // "GraphData*"
QT_MOC_LITERAL(5, 49, 6), // "doWork"
QT_MOC_LITERAL(6, 56, 12), // "recv_command"
QT_MOC_LITERAL(7, 69, 10), // "OpenSerial"
QT_MOC_LITERAL(8, 80, 10) // "ReadSerial"

    },
    "Get_Uart\0send_err\0\0send_graph_pointer\0"
    "GraphData*\0doWork\0recv_command\0"
    "OpenSerial\0ReadSerial"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Get_Uart[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       3,    1,   47,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    0,   50,    2, 0x0a /* Public */,
       6,    1,   51,    2, 0x0a /* Public */,
       7,    1,   54,    2, 0x0a /* Public */,
       8,    0,   57,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, 0x80000000 | 4,    2,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,

       0        // eod
};

void Get_Uart::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Get_Uart *_t = static_cast<Get_Uart *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->send_err((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->send_graph_pointer((*reinterpret_cast< GraphData*(*)>(_a[1]))); break;
        case 2: _t->doWork(); break;
        case 3: _t->recv_command((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->OpenSerial((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->ReadSerial(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Get_Uart::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Get_Uart::send_err)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Get_Uart::*_t)(GraphData * );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Get_Uart::send_graph_pointer)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject Get_Uart::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Get_Uart.data,
      qt_meta_data_Get_Uart,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Get_Uart::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Get_Uart::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Get_Uart.stringdata0))
        return static_cast<void*>(const_cast< Get_Uart*>(this));
    return QObject::qt_metacast(_clname);
}

int Get_Uart::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void Get_Uart::send_err(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Get_Uart::send_graph_pointer(GraphData * _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
