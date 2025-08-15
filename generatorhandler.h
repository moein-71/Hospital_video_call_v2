#ifndef GENERATORHANDLER_H
#define GENERATORHANDLER_H

#include <QObject>
#include <QThread>
#include <QImage>
#include <QTimer>
#include "cameraframgenerator.h"
#include "imageprovider.h"

class GeneratorHandler : public QObject
{
    Q_OBJECT
    public:
        GeneratorHandler(ImageProvider * imgprovider = nullptr , QObject *parent = nullptr);
        ~GeneratorHandler();

        Q_INVOKABLE void startFramGenerating();
        Q_INVOKABLE void stopFramGenerating();

        void newFramReceive(const QImage &img) ;

        // void set_Imgprovider(Image_provider * imgprovider) ;

    signals:

        void framChanged(const QImage &img);


    private:

        CameraFramGenerator * cameraframgenerator = nullptr ;
        QThread* Thread = nullptr ;
        ImageProvider * imgProvider = nullptr;

};

#endif // GENERATORHANDLER_H
