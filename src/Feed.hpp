/*
 * Feed.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef FEED_HPP_
#define FEED_HPP_

#include <QtCore/QObject>
#include "FtlomData.hpp"

class Feed : public QObject {
    Q_OBJECT

public:
    Feed(QObject* parent = 0, FtlomData* ftlomData = 0);
    ~Feed();

    Q_INVOKABLE void get();
Q_SIGNALS:
    void complete(const QString& info, bool success);

private Q_SLOTS:
    void onFeed(const QString& info, bool success);
private:
    FtlomData* m_ftlomData;
};



#endif /* FEED_HPP_ */
