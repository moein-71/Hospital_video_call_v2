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
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: pacs_and_his_table
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Rectangle {
            id: routing_conference_archiving_table
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.07
            color: "transparent"
            border.width: 2
        }
        Item { Layout.preferredHeight: main_panel.height*0.14 }
    }
}
