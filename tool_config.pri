
include($$PWD/path.pri)

CONFIG += c++11

CONFIG(debug, debug|release) {
    unix: TARGET = $$join(TARGET,,,_debug)
    else: TARGET = $$join(TARGET,,,d)

    DESTDIR = $$PWD/../build_debug_qrtools
}
CONFIG(release, debug|release) {
    DESTDIR = $$PWD/../build_release_qrtools
}

CONFIG(debug, debug|release) {
    LIBS += \
        -L$$QR_COMMON_PRO/../../build_debug_qrcommon/ -lQrCommond \
}
CONFIG(release, debug|release) {
    LIBS += \
        -L$$QR_COMMON_PRO/../../build_release_qrcommon/ -lQrCommon \
}
INCLUDEPATH += \
    $$QR_COMMON_PRO/include \
    $$QR_COMMON_PRO/inl \
