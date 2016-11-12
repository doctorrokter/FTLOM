/*
 * FtlomData.cpp
 *
 *  Created on: 31 окт. 2016 г.
 *      Author: misha
 */

#include "FtlomData.hpp"
#include <QtCore/QObject>
#include <QDir>
#include <QVariant>
#include <QVariantMap>
#include <QFile>
#include <bb/data/JsonDataAccess>
#include <iostream>

using namespace bb::data;
using namespace std;

FtlomData::FtlomData(QObject* parent) : QObject(parent), m_accessToken(""), m_user(0) {
    m_apiUrl = QString::fromStdString("http://146.185.153.4:8082");
    JsonDataAccess json;
        QVariant ftlomData = json.load(QDir::currentPath() + "/data/ftlom_data.json");

        if (!json.hasError()) {
            QVariantMap ftlomDataMap = ftlomData.toMap();

            this->setAccessToken(ftlomDataMap.value("access_token").toString());

            User user;
            user.fromMap(ftlomDataMap.value("user").toMap());
            this->setUser(user);

            cout << "Data restored!" << endl;
            cout << this->getUser().toString().toStdString() << endl;
            emit dataRetreived();
        }
}

FtlomData::~FtlomData() {}

const QString& FtlomData::getAccessToken() const { return m_accessToken; }
void FtlomData::setAccessToken(const QString& accessToken) {
    m_accessToken = accessToken;
    emit accessTokenRetrieved();
}

User& FtlomData::getUser() { return m_user; }
void FtlomData::setUser(const User& user) {
    m_user = user;
}

const QString& FtlomData::getApiUrl() const { return m_apiUrl; }

void FtlomData::saveData(const QString& data) {
    JsonDataAccess jsonData;
    QVariantMap userMap = jsonData.loadFromBuffer(data).toMap();
    User user;
    user.fromMap(userMap);

    this->setUser(user);
    this->setAccessToken(user.getAccessToken());

    QVariantMap mapToSave;
    mapToSave["user"] = user.toMap();
    mapToSave["access_token"] = userMap.value("access_token").toString();

    cout << "About to save" << endl;

    QVariant dataToSave = QVariant(mapToSave);
    QFile file(QDir::currentPath() + "/data/ftlom_data.json");

    if(file.open(QIODevice::WriteOnly)) {
        JsonDataAccess json;
        json.save(dataToSave, &file);
        cout << "Data saved!" << endl;
        emit dataRetreived();
    }
}

