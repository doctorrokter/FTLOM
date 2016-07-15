/*
 * Artists.cpp
 *
 *  Created on: 10 июля 2016 г.
 *      Author: misha
 */

#include "Artists.hpp"
#include "Http.hpp"

Artists::Artists(QObject* parent) : QObject(parent) {}

void Artists::get(int page) {
    Http* pHttp = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/artists?page=%1").arg(page);

    bool ok = connect(pHttp, SIGNAL(complete(const QString&, bool)), this, SLOT(onArtists(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pHttp->get(urlStr);
}

void Artists::follow(int artistId) {
    Http* pHttp = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/1/artists");
    QByteArray data;
    data.append("artist_id=").append(QByteArray::number(artistId));

    bool ok = connect(pHttp, SIGNAL(complete(const QString&, bool)), this, SLOT(subscribe(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pHttp->post(urlStr, data);
}

void Artists::unfollow(int artistId) {}

void Artists::onArtists(const QString& info, bool success) {
    emit fetch(info, success);
}

void Artists::subscribe(const QString& info, bool success) {
    emit subscribed(info, success);
}



