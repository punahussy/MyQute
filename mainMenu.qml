import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: menu
    width: parent.width
    height: parent.height
    Grid {
        rows: 3
        spacing: 5
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalItemAlignment: Grid.AlignHCenter

        Rectangle {
            id: ideaCard

            width: menu.width * 0.6
            height: menu.height * 0.6
            color: "Light Yellow"

            Text {
                id: idea

                anchors.fill: parent.fit
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.underline: true
                font.pixelSize: idea.text.length

                text: "Idea idea idea ikea"
            }

        }

        Button {
            id: generateButton

            width: ideaCard.width * 0.5
            height: ideaCard.width * 0.25

            Text {
                width: parent.width
                height: parent.height

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                fontSizeMode: Text.fit
                font.pixelSize: Math.min(width, height) * 0.5


                text: "Generate"
            }
        }

        Button {
            id: saveButton

            width: generateButton.width * 0.8
            height: generateButton.height * 0.5

            Text {
                text: "to fav"
            }
        }

    }
}
