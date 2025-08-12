import QtQuick
import QtQuick.Layouts

Item {
    id: main_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: main_panel.height*0.01

        Rectangle {
            id: video_screen
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "blue"
        }
        Rectangle {
            id: pacs_and_his_table
            Layout.fillWidth: true
            height: 50
            color: "red"
        }
        Rectangle {
            id: routing_conference_archiving_table
            Layout.fillWidth: true
            height: 50
            color: "pink"
        }
        Item { Layout.preferredHeight: 50 }
    }
}
