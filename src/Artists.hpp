/*
 * Artists.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef ARTISTS_HPP_
#define ARTISTS_HPP_

#include <QtCore/QObject>
#include "Http.hpp"

class Artists : public QObject {
    Q_OBJECT

public:
    Artists(QObject* parent = 0);

    Q_INVOKABLE void get(int page);
Q_SIGNALS:
    void complete(const QString& info, bool success);

private Q_SLOTS:
    void onArtists(const QString& info, bool success);

private:
    Http* m_http;
};

#endif /* ARTISTS_HPP_ */
