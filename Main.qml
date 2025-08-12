import QtQuick
import QtQuick.Layouts
import QtQuick.Window

Window {
    id: window
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Hospital_project_2")

    ColumnLayout {
        id: grid_left
        spacing: window.height * .035
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: window.height * .18
        anchors.leftMargin: window.width * .055
        anchors.margins: window.width * .055

        Rectangle {
            id: reset
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .0556
            color: "blue"
        }
        Rectangle {
            id: start_and_pause_table
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .3
            color: "red"
        }
        Rectangle {
            id: end_surery
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .08
            color: "pink"
        }
    }

    ColumnLayout {
        id: grid_mid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.margins: window.width * .055

        Rectangle {
            id: video_screen
            Layout.preferredWidth: window.width * .5
            Layout.preferredHeight: window.height * .7
            color: "blue"
        }
        Rectangle {
            id: pacs_and_his_table
            Layout.preferredWidth: window.width * .5
            Layout.preferredHeight: window.height * .09
            anchors.top: video_screen.bottom
            anchors.margins: window.height * .030
            color: "red"
        }
        Rectangle {
            id: routing_conference_archiving_table
            Layout.preferredWidth: window.width * .5
            Layout.preferredHeight: window.height * .09
            anchors.top: pacs_and_his_table.bottom
            anchors.margins: window.height * .030
            color: "pink"
        }
    }

    ColumnLayout {
        id: grid_right
        spacing: window.height * .035
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: window.height * .115
        anchors.rightMargin: window.width * .055
        anchors.margins: window.width * .055

        Rectangle {
            id: company
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .06
            color: "gray"
        }
        Rectangle {
            id: clock
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .08
            color: "blue"
        }
        Rectangle {
            id: date_icon
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .08
            color: "red"
        }
        Rectangle {
            id: negatoscope
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .06
            color: "pink"
        }
        Rectangle {
            id: notes_result
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .06
            color: "green"
        }
        Rectangle {
            id: power
            Layout.preferredWidth: window.width * .125
            Layout.preferredHeight: window.height * .06
            color: "purple"
        }
    }

}
