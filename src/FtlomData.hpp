/*
 * FtlomData.hpp
 *
 *  Created on: 31 окт. 2016 г.
 *      Author: misha
 */

#ifndef FTLOMDATA_HPP_
#define FTLOMDATA_HPP_

#include <QtCore/QObject>
#include "models/User.hpp"

class FtlomData : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString accessToken READ getAccessToken WRITE setAccessToken)
    Q_PROPERTY(User user READ getUser WRITE setUser)

public:
    FtlomData(QObject* parent = 0);
    ~FtlomData();

    Q_INVOKABLE const QString& getAccessToken() const;
    Q_INVOKABLE void setAccessToken(const QString& accessToken);

    Q_INVOKABLE User& getUser();
    Q_INVOKABLE void setUser(const User& user);

    Q_INVOKABLE void saveData(const QString& data);

Q_SIGNALS:
    void dataRetreived();
    void accessTokenRetrieved();

private:
    QString m_accessToken;
    User m_user;
};

#endif /* FTLOMDATA_HPP_ */
