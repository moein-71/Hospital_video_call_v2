#ifndef CAMERAFRAMGENERATOR_H
#define CAMERAFRAMGENERATOR_H

#include <QObject>
#include <QImage>
#include <QTimer>
#include <atomic>
#include <QDebug>
#include <opencv2/opencv.hpp>


class CameraFramGenerator : public QObject
{
    Q_OBJECT
    public:
        explicit CameraFramGenerator(QObject *parent = nullptr);

        Q_INVOKABLE void startFramGenerating() ;
        Q_INVOKABLE void stopFramGenerating() ;

        bool is_generating() ;

    signals:
        void frameChanged(const QImage &img);

    private slots:
        void captureFrame();

    private:
        QTimer * frameTimer = nullptr ;
        QImage m_frameImage;
        cv::VideoCapture cap;
        std::atomic<bool> is_Generarating = false ;
};

#endif // CAMERAFRAMGENERATOR_H
