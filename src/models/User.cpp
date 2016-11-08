/*
 * User.cpp
 *
 *  Created on: 05 нояб. 2016 г.
 *      Author: misha
 */

#include "User.hpp"
#include <iostream>

using namespace std;

User::User(QObject* parent) : QObject(parent), m_email(""), m_firstName(""), m_lastName(""), m_accessToken("") {}

User::User(const User& user) : QObject(user.parent()), m_email(""), m_firstName(""), m_lastName(""), m_accessToken("") {
    if (this != &user) {
        QString email = user.getEmail();
        this->setEmail(email);

        QString firstName = user.getFirstName();
        this->setFirstName(firstName);

        QString lastName = user.getLastName();
        this->setLastName(lastName);

        QString accessToken = user.getAccessToken();
        this->setAccessToken(accessToken);
    }
}

User::~User() {}

User& User::operator=(const User& user) {
    QString email = user.getEmail();
    this->setEmail(email);

    QString firstName = user.getFirstName();
    this->setFirstName(firstName);

    QString lastName = user.getLastName();
    this->setLastName(lastName);

    QString accessToken = user.getAccessToken();
    this->setAccessToken(accessToken);
    return *this;
}

bool User::operator==(const User& user) {
    return this->getEmail().compare(user.getEmail());
}

const QString& User::getEmail() const { return m_email; }
void User::setEmail(const QString& email) { m_email = email; }

const QString& User::getFirstName() const { return m_firstName; }
void User::setFirstName(const QString& firstName) { m_firstName = firstName; }

const QString& User::getLastName() const { return m_lastName; }
void User::setLastName(const QString& lastName) { m_lastName = lastName; }

const QString& User::getAccessToken() const { return m_accessToken; }
void User::setAccessToken(const QString& accessToken) { m_accessToken = accessToken; }

void User::fromMap(const QVariantMap& userMap) {
    this->setEmail(userMap.value("email").toString());
    this->setFirstName(userMap.value("first_name").toString());
    this->setLastName(userMap.value("last_name").toString());
    this->setAccessToken(userMap.value("access_token").toString());
}

QVariantMap User::toMap() const {
    QVariantMap userMap;
    userMap["email"] = this->getEmail();
    userMap["first_name"] = this->getFirstName();
    userMap["last_name"] = this->getLastName();
    userMap["access_token"] = this->getAccessToken();
    return userMap;
}

QString User::toString() {
    return QString::fromStdString("{email = ") + m_email +
            QString::fromStdString(", first_name = ") + m_firstName +
            QString::fromStdString(", last_name = ") + m_lastName +
            QString::fromStdString(", access_token = ") + m_accessToken +
            QString::fromStdString("}");
}

