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

    RowLayout {
        anchors.fill: parent
        anchors.margins: 5

        LeftPanel {
            Layout.preferredWidth: 150
            Layout.fillHeight: true
        }
        MainPanel {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        RightPanel {
            Layout.preferredWidth: 150
            Layout.fillHeight: true
        }
    }
}
