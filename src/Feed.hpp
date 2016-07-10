/*
 * Feed.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef FEED_HPP_
#define FEED_HPP_

#include <QtCore/QObject>
#include "Http.hpp"

class Feed : public QObject {
    Q_OBJECT

public:
    Feed(QObject* parent = 0);

    Q_INVOKABLE void get(int userId, int page);
Q_SIGNALS:
    void complete(const QString& info, bool success);

private Q_SLOTS:
    void onFeed(const QString& info, bool success);

private:
    Http* m_http;
};



#endif /* FEED_HPP_ */
