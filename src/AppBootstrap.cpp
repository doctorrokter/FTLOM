/*
 * AppBootstrap.cpp
 *
 *  Created on: 05 нояб. 2016 г.
 *      Author: misha
 */

#include "AppBootstrap.hpp"
#include "Request.hpp"

AppBootstrap::AppBootstrap(QObject* parent, FtlomData* ftlomData, Feed* feed, Artists* artists) : QObject(parent),
    m_ftlomData(ftlomData), m_feed(feed), m_artists(artists) {
    if (m_ftlomData != 0 && m_ftlomData->getAccessToken().length() != 0) {
       init();
    } else {
       bool ok = connect(m_ftlomData, SIGNAL(dataRetreived()), this, SLOT(init()));
       Q_ASSERT(ok);
       Q_UNUSED(ok);
    }
}

AppBootstrap::~AppBootstrap() {}

void AppBootstrap::init() {
    m_feed->get();
    m_artists->get(1);
    m_artists->getUntracked(1);
}


