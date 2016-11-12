/*
 * Feed.cpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#include "Feed.hpp"
#include "Http.hpp"

Feed::Feed(QObject* parent, FtlomData* ftlomData) : QObject(parent), m_ftlomData(ftlomData) {}

Feed::~Feed() {}

void Feed::get() {
    Http* http = new Http(this);

    const QString& urlStr = m_ftlomData->getApiUrl() + QString::fromLatin1("/fan/feed?access_token=%1").arg(m_ftlomData->getAccessToken());

    bool ok = connect(http, SIGNAL(complete(const QString&, bool)), this, SLOT(onFeed(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    http->get(urlStr);
}

void Feed::onFeed(const QString& info, bool success) {
    emit complete(info, success);
}




