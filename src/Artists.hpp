/*
 * Artists.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef ARTISTS_HPP_
#define ARTISTS_HPP_

#include <QtCore/QObject>

class Artists : public QObject {
    Q_OBJECT

public:
    Artists(QObject* parent = 0);

    Q_INVOKABLE void get(int page);
    Q_INVOKABLE void follow(int artistId);
    Q_INVOKABLE void unfollow(int artistId);
Q_SIGNALS:
    void fetch(const QString& info, bool success);
    void subscribed(const QString& info, bool success);

private Q_SLOTS:
    void onArtists(const QString& info, bool success);
    void subscribe(const QString& info, bool success);
};

#endif /* ARTISTS_HPP_ */
