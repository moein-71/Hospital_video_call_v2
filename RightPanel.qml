import QtQuick
import QtQuick.Layouts

Item {
    id: right_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: right_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: company
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "gray"
        }
        Rectangle {
            id: clock
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "blue"
        }
        Rectangle {
            id: date_icon
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "red"
        }
        Rectangle {
            id: negatoscope
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "pink"
        }
        Rectangle {
            id: notes_result
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "green"
        }
        Rectangle {
            id: power
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: "purple"
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
