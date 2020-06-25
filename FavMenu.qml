import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import IdeaListModel 1.0

Item {
    width: parent.width; height: parent.height
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top

    IdeaListModel {
        id: idealistmodel
    }

    ListView {
        id: list
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            width: parent.width * 1.2
            height: parent.height
            color: "Cyan"
        }

        CheckBox {
             checked: idealistmodel.isDrawn
             onClicked: idealistmodel.isDrawn = true
        }
        Text {
             text: idealistmodel.ideaText
             Layout.fillWidth: true
        }
    }

    Button {
        id: backButton

        width: parent.width * 0.2
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
