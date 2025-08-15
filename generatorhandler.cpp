#include "generatorhandler.h"

GeneratorHandler::GeneratorHandler(ImageProvider * imgprovider , QObject *parent)
    : QObject{parent} , imgProvider(imgprovider)
{
    connect(this , &GeneratorHandler::framChanged , this->imgProvider , &ImageProvider::setImage) ;
}

GeneratorHandler::~GeneratorHandler() {
    stopFramGenerating();
    if(Thread != nullptr) {
        Thread->quit();
        Thread->wait();
    }
}


void GeneratorHandler::startFramGenerating() {
    if(cameraframgenerator != nullptr && Thread != nullptr) {
        if(cameraframgenerator->is_generating() == true) return ;

        QMetaObject::invokeMethod(cameraframgenerator, "startFramGenerating", Qt::QueuedConnection);
        return ;
    }

    cameraframgenerator = new CameraFramGenerator();
    Thread = new QThread(this);
    cameraframgenerator->moveToThread(Thread);

    connect(Thread, &QThread::finished, cameraframgenerator, &QObject::deleteLater);
    connect(cameraframgenerator , &CameraFramGenerator::frameChanged , this , &GeneratorHandler::newFramReceive) ;

    Thread->start();

    QMetaObject::invokeMethod(cameraframgenerator, "startFramGenerating", Qt::QueuedConnection);
}

void GeneratorHandler::stopFramGenerating() {
    QMetaObject::invokeMethod(cameraframgenerator, "stopFramGenerating", Qt::QueuedConnection);
}

void GeneratorHandler::newFramReceive(const QImage &img) {
    emit framChanged(img) ;
}
