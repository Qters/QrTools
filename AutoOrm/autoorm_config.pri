
include($$PWD/../tool_config.pri)

CONFIG(debug, debug|release) {
    LIBS += \
        -L$$QR_ORM_PRO/../../build_debug_qrorm/ -lQrOrmd \
}
CONFIG(release, debug|release) {
    LIBS += \
        -L$$QR_ORM_PRO/../../build_release_qrorm/ -lQrOrm \
}
INCLUDEPATH += \
    $$QR_ORM_PRO/include \
    $$QR_ORM_PRO/inl \
