CONFIG += ordered
TEMPLATE = subdirs
SUBDIRS = \
    westernsupport \
    da \
    de \
    en \
    es \
    fi \
    fr \
    it \
    pt \
    pinyin \

QMAKE_EXTRA_TARGETS += check
check.target = check
check.CONFIG = recursive
