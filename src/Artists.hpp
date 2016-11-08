/*
 * Artists.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef ARTISTS_HPP_
#define ARTISTS_HPP_

#include <QtCore/QObject>
#include "FtlomData.hpp"

class Artists : public QObject {
    Q_OBJECT

public:
    Artists(QObject* parent = 0, FtlomData* ftlomData = 0);
    ~Artists();

    Q_INVOKABLE void get(const int page);
    Q_INVOKABLE void getUntracked(const int page);
    Q_INVOKABLE void follow(const int artistId);
    Q_INVOKABLE void unfollow(const int artistId);
Q_SIGNALS:
    void fetch(const QString& info, bool success);
    void untrackedArtistsLoaded(const QString& info, bool success);
    void trackedArtistsLoaded(const QString& info, bool success);
    void followed(const QString& info, bool success);
    void unfollowed(const QString& info, bool success);

private Q_SLOTS:
    void onArtists(const QString& info, bool success);
    void processTrackedArtists(const QString& trackedArtistsJson, bool suucess);
    void processUntrackedArtists(const QString& untrackedArtistsJson, bool suucess);
    void processFollow(const QString& info, bool success);
    void processUnfollow(const QString& info, bool success);
private:
    FtlomData* m_ftlomData;
};

#endif /* ARTISTS_HPP_ */
