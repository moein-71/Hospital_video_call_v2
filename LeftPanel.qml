import QtQuick
import QtQuick.Layouts

Item {
    id: left_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: left_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: reset
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "blue"
        }
        Rectangle {
            id: start_and_pause_table
            Layout.fillWidth: true
            Layout.preferredHeight: 500
            color: "red"
        }
        Rectangle {
            id: end_surery
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "pink"
        }
        Item { Layout.fillHeight: true }
        RowLayout {
            Item { Layout.fillWidth: true }
            Rectangle {
                id: back_itm
                Layout.preferredWidth: 50
                Layout.preferredHeight: 50
                color: "black"
            }
            Item { Layout.fillWidth: true }
        }

        Item { Layout.preferredHeight: 50 }
    }
}
