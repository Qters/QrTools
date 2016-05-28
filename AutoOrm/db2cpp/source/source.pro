
QT       += core

TARGET = QrFrame

TEMPLATE = lib

DEFINES += QRFRAME_LIBRARY

include($$PWD/../../autoorm_config.pri)

INCLUDEPATH += \
    $$PWD/inl \
    $$PWD/include \

HEADERS += \
    include/qrframe_global.h \

SOURCES += \
