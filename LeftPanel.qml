import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


Item {
    id: left_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: left_panel.height*0.01

        Item { Layout.fillHeight: true }
        Rectangle {
            id: reset
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Button {
                id: reset_button
                width: reset.width * .6
                height: reset.height * .75
                onClicked: console.log("reset clicked!")
                anchors.centerIn: parent

                background: Image {
                    source: "Asset/L_Reset.png"
                    anchors.fill: parent
                }
            }
        }
        Rectangle {
            id: start_and_pause_table
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.3
            color: "transparent"
            // border.width: 2

            ColumnLayout {
                spacing:left_panel.height*0.01
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                // anchors.fill: parent


                Button {
                    id: start_button
                    Layout.preferredWidth:  start_and_pause_table.width * .4
                    Layout.preferredHeight: start_and_pause_table.height * .15
                    onClicked: console.log("start clicked")

                    background: Image {
                        source: "Asset/Start.png"
                        anchors.fill: parent
                    }
                }
                Item {Layout.preferredHeight: start_and_pause_table.height * .35}
                Button {
                    id: pause_button
                    Layout.preferredWidth:  start_and_pause_table.width * .4
                    Layout.preferredHeight: start_and_pause_table.height * .15
                    onClicked: console.log("Pause clicked")

                    background: Image {
                        source: "Asset/Pause.png"
                        anchors.fill: parent
                    }
                }
            }
        }
        Rectangle {
            id: end_surgery
            Layout.fillWidth: true
            Layout.preferredHeight: left_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Button {
                id: end_surgery_button
                width: end_surgery.width * .55
                height: end_surgery.height
                onClicked: console.log("end su clicked!")
                anchors.centerIn: parent

                background: Image {
                    source: "Asset/EndSurgury.png"
                    anchors.fill: parent
                }
            }
        }
        Item { Layout.fillHeight: true }
        RowLayout {
            Item { Layout.fillWidth: true }
            Rectangle {
                id: back_itm
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
                color: "transparent"
                border.width: 2

                Button {
                    id: back_itm_button
                    width: back_itm.width
                    height: back_itm.height
                    onClicked: console.log("back_itm clicked!")

                    background: Image {
                        source: "Asset/Back.png"
                        anchors.fill: parent
                    }
                }
            }

            Item { Layout.fillWidth: true }
        }

        Item { Layout.preferredHeight: left_panel.height*0.14 }
    }
}
