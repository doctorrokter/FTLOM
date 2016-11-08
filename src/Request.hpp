/*
 * Request.hpp
 *
 *  Created on: 30 июля 2016 г.
 *      Author: misha
 */

#ifndef REQUEST_HPP_
#define REQUEST_HPP_

#include <QtCore/QObject>
#include <QNetworkAccessManager>

class Request : public QObject {
    Q_OBJECT

public:
    Request(QObject* parent = 0, QNetworkAccessManager* manager = 0);
    ~Request();

    void doGet(const QString& url) const;
    void doPost(const QString& url, QByteArray& data) const;
    void doPut(const QString& url, QByteArray& data) const;
    void doDelete(const QString& url) const;

Q_SIGNALS:
    void complete(const QString& response, bool success);

private Q_SLOTS:
    void onLoad();

private:
    QNetworkAccessManager* m_pManager;
};

#endif /* REQUEST_HPP_ */
