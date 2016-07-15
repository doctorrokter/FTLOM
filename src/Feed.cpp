/*
 * Feed.cpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#include "Feed.hpp"
#include "Http.hpp"

Feed::Feed(QObject* parent) : QObject(parent) {}

void Feed::get(int userId, int page) {
    Http* http = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/%1/feed?page=%2").arg(userId).arg(page);

    bool ok = connect(http, SIGNAL(complete(const QString&, bool)), this, SLOT(onFeed(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    http->get(urlStr);
}

void Feed::onFeed(const QString& info, bool success) {
    emit complete(info, success);
}




