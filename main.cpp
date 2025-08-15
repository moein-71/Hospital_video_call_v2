#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "imageprovider.h"
#include "generatorhandler.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    ImageProvider * imageProvider = new ImageProvider();
    GeneratorHandler * generatorhandler = new GeneratorHandler(imageProvider) ;


    engine.rootContext()->setContextProperty("imageProvider", imageProvider);
    engine.addImageProvider("camera", imageProvider);
    engine.rootContext()->setContextProperty("generatorhandler", generatorhandler);



    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Project_Hospital_2", "Main");

    return app.exec();
}
