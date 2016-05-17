# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/components/Avatar.qml) \
        $$quote($$BASEDIR/assets/components/FtlomTitleBar.qml) \
        $$quote($$BASEDIR/assets/components/ListItemFeed.qml) \
        $$quote($$BASEDIR/assets/components/ListItemHeader.qml) \
        $$quote($$BASEDIR/assets/fonts/MuseoSansCyrl.otf) \
        $$quote($$BASEDIR/assets/fonts/MuseoSansCyrl_0.otf) \
        $$quote($$BASEDIR/assets/fonts/MuseoSansCyrl_1.otf) \
        $$quote($$BASEDIR/assets/fonts/MuseoSansCyrl_2.otf) \
        $$quote($$BASEDIR/assets/fonts/MuseoSansCyrl_3.otf) \
        $$quote($$BASEDIR/assets/img/ic_previous.png) \
        $$quote($$BASEDIR/assets/img/image.gif) \
        $$quote($$BASEDIR/assets/main.qml) \
        $$quote($$BASEDIR/assets/pages/Account.qml) \
        $$quote($$BASEDIR/assets/pages/Artists.qml) \
        $$quote($$BASEDIR/assets/pages/Feed.qml) \
        $$quote($$BASEDIR/assets/sheets/WebSheet.qml) \
        $$quote($$BASEDIR/assets/style/BodyTextStyle.qml) \
        $$quote($$BASEDIR/assets/style/FtlomFontFaceRule.qml) \
        $$quote($$BASEDIR/assets/style/SmallTextStyle.qml) \
        $$quote($$BASEDIR/assets/style/SubtitleTextStyle.qml) \
        $$quote($$BASEDIR/assets/style/TitleTextStyle.qml)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/applicationui.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += $$quote($$BASEDIR/src/applicationui.hpp)
}

INCLUDEPATH += $$quote($$BASEDIR/src)

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/components/*.qml) \
        $$quote($$BASEDIR/../assets/components/*.js) \
        $$quote($$BASEDIR/../assets/components/*.qs) \
        $$quote($$BASEDIR/../assets/fonts/*.qml) \
        $$quote($$BASEDIR/../assets/fonts/*.js) \
        $$quote($$BASEDIR/../assets/fonts/*.qs) \
        $$quote($$BASEDIR/../assets/img/*.qml) \
        $$quote($$BASEDIR/../assets/img/*.js) \
        $$quote($$BASEDIR/../assets/img/*.qs) \
        $$quote($$BASEDIR/../assets/pages/*.qml) \
        $$quote($$BASEDIR/../assets/pages/*.js) \
        $$quote($$BASEDIR/../assets/pages/*.qs) \
        $$quote($$BASEDIR/../assets/sheets/*.qml) \
        $$quote($$BASEDIR/../assets/sheets/*.js) \
        $$quote($$BASEDIR/../assets/sheets/*.qs) \
        $$quote($$BASEDIR/../assets/style/*.qml) \
        $$quote($$BASEDIR/../assets/style/*.js) \
        $$quote($$BASEDIR/../assets/style/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
