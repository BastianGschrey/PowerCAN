#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "can.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<can>("com.PowerCAN.can", 1, 0, "CAN");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();

}
