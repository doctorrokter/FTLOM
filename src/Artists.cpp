/*
 * Artists.cpp
 *
 *  Created on: 10 июля 2016 г.
 *      Author: misha
 */

#include "Artists.hpp"
#include "Http.hpp"

Artists::Artists(QObject* parent, FtlomData* ftlomData) : QObject(parent), m_ftlomData(ftlomData) {}

Artists::~Artists() {}

void Artists::get(const int page) {
    Http* pReq = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/artists/tracked?page=%1&access_token=%2")
        .arg(page)
        .arg(m_ftlomData->getAccessToken());

    bool ok = connect(pReq, SIGNAL(complete(const QString&, bool)), this, SLOT(processTrackedArtists(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pReq->get(urlStr);
}

void Artists::getUntracked(const int page) {
    Http* pReq = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/artists/untracked?page=%1&access_token=%2").arg(page).arg(m_ftlomData->getAccessToken());

    bool ok = connect(pReq, SIGNAL(complete(const QString&, bool)), this, SLOT(processUntrackedArtists(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pReq->get(urlStr);
}

void Artists::follow(const int artistId) {
    Http* pReq = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/artists/%1?access_token=%2").arg(artistId).arg(m_ftlomData->getAccessToken());
    QByteArray data;
//    data.append("artist_id=").append(QByteArray::number(artistId));

    bool ok = connect(pReq, SIGNAL(complete(const QString&, bool)), this, SLOT(processFollow(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pReq->post(urlStr, data);
}

void Artists::unfollow(const int artistId) {
    Http* pReq = new Http(this);

    const QString& urlStr = QString::fromLatin1("http://146.185.153.4:8082/fan/artists/%1?access_token=%2").arg(artistId).arg(m_ftlomData->getAccessToken());

    bool ok = connect(pReq, SIGNAL(complete(const QString&, bool)), this, SLOT(processUnfollow(const QString&, bool)));
    Q_ASSERT(ok);
    Q_UNUSED(ok);

    pReq->doDelete(urlStr);
}

void Artists::onArtists(const QString& info, bool success) {
    emit fetch(info, success);
}

void Artists::processTrackedArtists(const QString& trackedArtistsJson, bool success) {
    emit trackedArtistsLoaded(trackedArtistsJson, success);
}

void Artists::processUntrackedArtists(const QString& untrackedArtistsJson, bool success) {
    emit untrackedArtistsLoaded(untrackedArtistsJson, success);
}

void Artists::processFollow(const QString& info, bool success) {
    emit followed(info, success);
}

void Artists::processUnfollow(const QString& info, bool success) {
    emit unfollowed(info, success);
}



