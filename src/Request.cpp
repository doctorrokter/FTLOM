/*
 * Request.cpp
 *
 *  Created on: 30 июля 2016 г.
 *      Author: misha
 */

#include "Request.hpp"
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <iostream>

using namespace std;

Request::Request(QObject* parent, QNetworkAccessManager* manager) : QObject(parent), m_pManager(manager) {}

Request::~Request() {
    delete m_pManager;
    m_pManager = 0;
}

void Request::doGet(const QString& url) const {
    cout << "[GET] Request to: " << url.toStdString() << endl;

    QNetworkRequest request(url);
    QNetworkReply* pReply = m_pManager->get(request);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Request::doPost(const QString& url, QByteArray& data) const {
    cout << "[POST] Request to: " << url.toStdString() << endl;
    cout << "[DATA]: " << data.data() << endl;

    QNetworkRequest request(url);
    QNetworkReply* pReply = m_pManager->post(request, data);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Request::doPut(const QString& url, QByteArray& data) const {
    cout << "[PUT] Request to: " << url.toStdString() << endl;
    cout << "[DATA]: " << data.data() << endl;

    QNetworkRequest request(url);
    QNetworkReply* pReply = m_pManager->put(request, data);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Request::doDelete(const QString& url) const {
    cout << "[DELETE] Request to: " << url.toStdString() << endl;

    QNetworkRequest request(url);
    QNetworkReply* pReply = m_pManager->deleteResource(request);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Request::onLoad() {
    QNetworkReply* reply = qobject_cast<QNetworkReply*>(sender());

    QString response;
    bool success = false;

    if (reply) {
        if (reply->error() == QNetworkReply::NoError) {
            const int available = reply->bytesAvailable();
            if (available > 0) {
                const QByteArray buffer = reply->readAll();
                response = QString::fromUtf8(buffer);
                success = true;
            }
        } else {
            response =  tr("Error: %1 status: %2").arg(reply->errorString(), reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toString());
        }
        reply->deleteLater();
    }

    if (response.trimmed().isEmpty()) {
        response = tr("Failed request");
    }

    emit complete(response, success);
}



