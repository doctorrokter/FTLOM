/*
 * AppBootstrap.hpp
 *
 *  Created on: 05 нояб. 2016 г.
 *      Author: misha
 */

#ifndef APPBOOTSTRAP_HPP_
#define APPBOOTSTRAP_HPP_

#include <QtCore/QObject>
#include "Artists.hpp"
#include "Feed.hpp"
#include "FtlomData.hpp"

class AppBootstrap : QObject {
    Q_OBJECT

public:
    AppBootstrap(QObject* parent = 0, FtlomData* ftlomData = 0, Feed* feed = 0, Artists* artists = 0);
    ~AppBootstrap();

public Q_SLOTS:
    void init();

private:
    FtlomData* m_ftlomData;
    Feed* m_feed;
    Artists* m_artists;
};



#endif /* APPBOOTSTRAP_HPP_ */
