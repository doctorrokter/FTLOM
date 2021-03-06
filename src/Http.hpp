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
    void post(const QString& urlStr, const QByteArray& data);
    void doPut(const QString& url, QByteArray& data) const;
    void doDelete(const QString& url) const;
Q_SIGNALS:
    void complete(const QString& response, bool success);

private Q_SLOTS:
    void onLoad();

private:
    QNetworkAccessManager* m_pManager;
};

#endif /* HTTP_HPP_ */
