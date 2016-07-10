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
    Http* http = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/artists?page=%1").arg(page);

    bool ok = connect(http, SIGNAL(complete(const QString&, bool)), this, SLOT(onArtists(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    http->get(urlStr);
}

void Artists::onArtists(const QString& info, bool success) {
    emit complete(info, success);
}



