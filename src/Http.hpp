/*
 * Http.hpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#ifndef HTTP_HPP_
#define HTTP_HPP_

#include <QtCore/QObject>
#include <QNetworkAccessManager>

class Http : public QObject {
    Q_OBJECT

public:
    Http(QObject* parent = 0);

    void get(const QString& urlStr);
Q_SIGNALS:
    void complete(const QString& response, bool success);

private Q_SLOTS:
    void onLoad();

private:
    QNetworkAccessManager* m_manager;
};

#endif /* HTTP_HPP_ */
