include(../../../config.pri)

TARGET = dummy
TEMPLATE = lib

qml.path = "$${LOMIRI_KEYBOARD_TEST_DIR}"
qml.files = *.qml

INSTALLS += qml

OTHER_FILES += \
    keyboard-test.qml \
    layout-test.qml 

