include(../../../config.pri)

TARGET = dummy
TEMPLATE = lib

qml.path = $$LOMIRI_KEYBOARD_DATA_DIR
qml.files = *.qml

INSTALLS += qml
OTHER_FILES += \
    api_tests.qml

