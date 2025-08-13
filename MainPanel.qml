import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: main_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: main_panel.height*0.03

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
            // border.width: 2

            RowLayout {
                spacing: pacs_and_his_table.width * .06
                anchors.centerIn: parent

                Button {
                    id: pacs_button
                    Layout.preferredWidth:  pacs_and_his_table.width * .5
                    Layout.preferredHeight: pacs_and_his_table.height
                    onClicked: console.log("pacs clicked")

                    background: Image {
                        source: "Asset/PACS.png"
                        anchors.fill: parent
                    }
                }

                Button {
                    id: his_button
                    Layout.preferredWidth:  pacs_and_his_table.width * .45
                    Layout.preferredHeight: pacs_and_his_table.height
                    onClicked: console.log("his clicked")

                    background: Image {
                        source: "Asset/HIS.png"
                        anchors.fill: parent
                    }
                }
            }
        }
        Rectangle {
            id: routing_conference_archiving_table
            Layout.fillWidth: true
            Layout.preferredHeight: main_panel.height*0.07
            color: "transparent"
            // border.width: 2

            RowLayout {
                spacing: routing_conference_archiving_table.width * .035
                anchors.centerIn: parent

                Button {
                    id: routing_button
                    Layout.preferredWidth:  pacs_and_his_table.width * .3
                    Layout.preferredHeight: pacs_and_his_table.height
                    onClicked: console.log("routing clicked")

                    background: Image {
                        source: "Asset/Routing.png"
                        anchors.fill: parent
                    }
                }

                Button {
                    id: conference_button
                    Layout.preferredWidth:  pacs_and_his_table.width * .3
                    Layout.preferredHeight: pacs_and_his_table.height
                    onClicked: console.log("conference clicked")

                    background: Image {
                        source: "Asset/Conference.png"
                        anchors.fill: parent
                    }
                }

                Button {
                    id: archiving_button
                    Layout.preferredWidth:  pacs_and_his_table.width * .3
                    Layout.preferredHeight: pacs_and_his_table.height
                    onClicked: console.log("arichiving clicked")

                    background: Image {
                        source: "Asset/Archiving.png"
                        anchors.fill: parent
                    }
                }
            }
        }
        Item { Layout.preferredHeight: main_panel.height*0.06 }
    }
}
