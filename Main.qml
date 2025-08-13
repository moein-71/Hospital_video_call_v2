import QtQuick
import QtQuick.Layouts
import QtQuick.Window

Window {
    id: window
    visible: true
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    // visibility: Window.FullScreen // Minimized, Maximized, FullScreen

    // Maximized need a small delay in ms
    Timer {
        running: true
        interval: 10
        onTriggered: window.visibility = Window.Maximized
    }

    title: qsTr("Hospital_project_2")

    Rectangle {
        id: background
        anchors.fill: parent

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#2E5C5E" }
            GradientStop { position: 1.0; color: "#0A2020" }
        }
    }

    RowLayout {
        anchors.fill: parent
        anchors.margins: 5

        LeftPanel {
            Layout.preferredWidth: parent.width*0.215
            Layout.fillHeight: true
        }
        MainPanel {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        RightPanel {
            Layout.preferredWidth: parent.width*0.215
            Layout.fillHeight: true
        }
    }
}
