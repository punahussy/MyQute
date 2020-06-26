import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

import IdeaListModel 1.0

Item {
    id: favouritesMenu
    width: parent.width; height: parent.height
    anchors.fill: root

    IdeaListModel {
        id: idealistmodel
    }

    ListView {
        id: ideasList
        width: parent.width * 0.6
        height: root.height * 0.7
        anchors.centerIn: parent
        model: idealistmodel
        spacing: 10
        orientation: Qt.Vertical

        delegate:
            Rectangle {
            width: root.width * 0.6
            height: width * 0.1
            color: "#FFCC80"

            CheckBox {
                id: isDrawn
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                checked: model.isDrawn
                onClicked: model.isDrawn = true
            }

            Text {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: isDrawn.right
                anchors.leftMargin: 15
                text: model.ideaText
                font.pixelSize: Math.min(parent.width, parent.height) * 0.35
            }
        }

    }

    Button {
        id: backToMenuButton

        width: ideasList.width * 0.3
        height: width * 0.45
        anchors.left: root.left
        anchors.leftMargin: 15
        anchors.bottom: favouritesMenu.bottom
        anchors.bottomMargin: 15

        background: Rectangle {
            color: "#FA6800"
        }

        text: "Назад"
        font.pixelSize: Math.min(width, height) * 0.25

        onClicked: {
            root.currentWindow = "menu"
        }


    }


}
