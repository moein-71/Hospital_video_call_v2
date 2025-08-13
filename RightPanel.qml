import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: right_panel

    ColumnLayout {
        anchors.fill: parent
        spacing: right_panel.height*0.03

        Item { Layout.fillHeight: true }
        Rectangle {
            id: company
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Image {
                id: company_image
                source: "Asset/R_BoubarsLOGO.png"
                anchors.centerIn: parent
                width: company.width * .6
                height: company.height * .9
                fillMode: Image.PreserveAspectFit
            }
        }
        Rectangle {
            id: digital_clock
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Image {
                id: digital_clock_image
                source: "Asset/ClockWithoutNumbers.png"
                anchors.centerIn: parent
                width: company.width
                height: company.height * 1.6
                fillMode: Image.PreserveAspectFit
            }
        }

        Item {Layout.preferredHeight: right_panel.height * .01}

        Rectangle {
            id: date_icon
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Image {
                id: date_image
                source: "Asset/DateWithoutNumbers.png"
                anchors.centerIn: parent
                width: company.width
                height: company.height * 1.6
                fillMode: Image.PreserveAspectFit
            }
        }

        Item {Layout.preferredHeight: right_panel.height * .001}

        Rectangle {
            id: negatoscope
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Button {
                id: negatoscope_button
                width: negatoscope.width * .6
                height: negatoscope.height
                onClicked: console.log("negatoscope clicked!")
                anchors.centerIn: parent

                background: Image {
                    source: "Asset/Negatoscope.png"
                    anchors.fill: parent
                }
            }
        }
        Rectangle {
            id: notes_result
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Button {
                id: notes_result_button
                width: notes_result.width * .6
                height: notes_result.height
                onClicked: console.log("notes_result clicked!")
                anchors.centerIn: parent

                background: Image {
                    source: "Asset/NotesResult.png"
                    anchors.fill: parent
                }
            }
        }
        Rectangle {
            id: power
            Layout.fillWidth: true
            Layout.preferredHeight: right_panel.height*0.07
            color: "transparent"
            // border.width: 2

            Button {
                id: power_button
                width: power.width * .5
                height: power.height * .8
                onClicked: console.log("power clicked!")
                anchors.centerIn: parent

                background: Image {
                    source: "Asset/Power.png"
                    anchors.fill: parent
                }
            }
        }
        Item { Layout.fillHeight: true }
        RowLayout {
            Item { Layout.fillWidth: true }
            Rectangle {
                id: next_itm
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
                color: "transparent"
                border.width: 2

                Button {
                    id: next_itm_button
                    width: next_itm.width
                    height: next_itm.height
                    onClicked: console.log("next_itm clicked!")

                    background: Image {
                        source: "Asset/Next.png"
                        anchors.fill: parent
                    }
                }
            }
            Item { Layout.fillWidth: true }
        }
        Item { Layout.preferredHeight: right_panel.height*0.14 }
    }
}
