#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "idealistmodel.h"
#include "ideagenerator.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<IdeaListModel>("IdeaListModel", 1, 0, "IdeaListModel");
    qmlRegisterType<IdeaGenerator>("IdeaGenerator", 1, 0, "IdeaGenerator");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
