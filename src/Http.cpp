/*
 * Http.cpp
 *
 *  Created on: 09 июля 2016 г.
 *      Author: misha
 */

#include "Http.hpp"

#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QUrl>
#include <iostream>
#include <bb/cascades/QmlDocument>

using namespace bb::cascades;
using namespace std;

Http::Http(QObject* parent) : QObject(parent) {
    m_pManager = QmlDocument::defaultDeclarativeEngine()->networkAccessManager();
}

void Http::get(const QString& urlStr) {
    cout << "[GET] Request to: " << urlStr.toStdString() << endl;

    QNetworkRequest request(urlStr);
    QNetworkReply* pReply = m_pManager->get(request);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Http::post(const QString& urlStr, const QByteArray& data) {
    cout << "[POST] Request to: " << urlStr.toStdString() << endl;
    cout << "[DATA] " << data.data() << endl;

    QNetworkRequest request(urlStr);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/x-www-form-urlencoded");

    QNetworkReply* pReply = m_pManager->post(request, data);
    bool ok = connect(pReply, SIGNAL(finished()), this, SLOT(onLoad()));

    Q_ASSERT(ok);
    Q_UNUSED(ok);
}

void Http::onLoad() {
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




