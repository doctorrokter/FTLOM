/*
 * User.hpp
 *
 *  Created on: 05 нояб. 2016 г.
 *      Author: misha
 */

#ifndef USER_HPP_
#define USER_HPP_

#include <QtCore/QObject>
#include <QVariantMap>

class User : QObject {
    Q_OBJECT
    Q_PROPERTY(QString email READ getEmail WRITE setEmail)
    Q_PROPERTY(QString firstName READ getFirstName WRITE setFirstName)
    Q_PROPERTY(QString lastName READ getLastName WRITE setLastName)
    Q_PROPERTY(QString accessToken READ getAccessToken WRITE setAccessToken)

public:
    User(QObject* parent = 0);
    User(const User& user);
    ~User();

    User& operator=(const User& user);
    bool operator==(const User& user);

    Q_INVOKABLE const QString& getEmail() const;
    Q_INVOKABLE void setEmail(const QString& email);

    Q_INVOKABLE const QString& getFirstName() const;
    Q_INVOKABLE void setFirstName(const QString& firstName);

    Q_INVOKABLE const QString& getLastName() const;
    Q_INVOKABLE void setLastName(const QString& lastName);

    Q_INVOKABLE const QString& getAccessToken() const;
    Q_INVOKABLE void setAccessToken(const QString& accessToken);

    void fromMap(const QVariantMap& userMap);
    QVariantMap toMap() const;

    QString toString();

private:
    QString m_email;
    QString m_firstName;
    QString m_lastName;
    QString m_accessToken;
};



#endif /* USER_HPP_ */
