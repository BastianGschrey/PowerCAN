#include "CAN.h"

can::can(QObject *parent) :
    QObject(parent)
{
}

QString can::userName()
{
    return m_userName;
}

void can::setUserName(const QString &userName)
{
    if (userName == m_userName)
        return;

    m_userName = userName;
    emit userNameChanged();
}
