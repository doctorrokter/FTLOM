APP_NAME = FTLOM

CONFIG += qt warn_on cascades10

QT += network

LIBS += -lbbdata \
		-lQtNetwork

include(config.pri)
