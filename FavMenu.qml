import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Item {
    width: parent.width; height: parent.height
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top


    ListView {
        id: list
        implicitWidth: 250
        implicitHeight: 250

        model: ListModel {
            ListElement {
                drawn: true
                ideaText: "Punching sharks"
            }
        }

        delegate: RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            Rectangle {
                width: parent.width * 1.2
                height: parent.height
                color: "Cyan"
            }

            CheckBox {
                checked: model.drawn
                onClicked: model.drawn = true
            }
            Text {
                text: model.ideaText
                Layout.fillWidth: true
            }
        }
    }

    Button {
        id: backButton

        width: list.width * 0.5
        height: width * 0.6
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        anchors.horizontalCenter: parent.horizontalCenter


        background: Rectangle {
            color: "#FA6800"
        }

        text: "Назад"
        font.pointSize: Math.min(width, height) * 0.25 + 1

        onClicked: {
            root.currentWindow = "menu"
        }


    }


}
