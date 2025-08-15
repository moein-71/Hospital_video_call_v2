#include "cameraframgenerator.h"

CameraFramGenerator::CameraFramGenerator(QObject *parent)
    : QObject{parent}
{}

void CameraFramGenerator::startFramGenerating() {
    if (is_Generarating) return;

    cap.open(0, cv::CAP_V4L2);
    if (!cap.isOpened()) {
        qDebug() << "Camera not accessible!";
        return;
    }

    double fps = cap.get(cv::CAP_PROP_FPS);
    if (fps <= 0) {
        fps = 15 ;
    }
    fps = 15 ;


    frameTimer = new QTimer();
    connect(frameTimer, &QTimer::timeout, this, &CameraFramGenerator::captureFrame);

    frameTimer->start(static_cast<int>(/*1000.0 / */fps));
    is_Generarating = true;
}

void CameraFramGenerator::stopFramGenerating() {
    is_Generarating = false ;
    if (frameTimer) frameTimer->stop();
    cap.release();
}

bool CameraFramGenerator::is_generating() {
    return is_Generarating ;
}

void CameraFramGenerator::captureFrame(){
    if(!is_Generarating) return ;

    cv::Mat frame;
    if (!cap.read(frame)) return;

    cv::cvtColor(frame, frame, cv::COLOR_BGR2RGB);
    QImage img((uchar*)frame.data, frame.cols, frame.rows, frame.step, QImage::Format_RGB888);

    m_frameImage = img;
    emit frameChanged(m_frameImage);
}


