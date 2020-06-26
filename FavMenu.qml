import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import IdeaListModel 1.0

Item {
    id: favMenu
    width: root.width; height: root.height
    anchors.fill: parent

    IdeaListModel {
        id: idealistmodel
    }

    ListView {
        id: list
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: root.bottom
        model: idealistmodel
        orientation: Qt.Vertical
        layoutDirection: Qt.LeftToRight
        delegate:
            Rectangle {
                width: favMenu.width * 0.6
                height: width * 0.2
                color: "Cyan"

                Grid {
                    rows: 1
                    spacing: 20
                    horizontalItemAlignment: Grid.AlignHCenter

                    CheckBox {
                         checked: model.isDrawn
                         onClicked: model.isDrawn = true
                    }

                    Text {
                         text: model.ideaText
                         Layout.fillWidth: true
                    }
                }
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
