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
            color: "#A20025"
            opacity: 0.75

            Text {
                id: idea

                width: parent.width
                height: parent.height
                anchors.fill: parent.fit

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.underline: true
                font.pixelSize: Math.sqrt(Math.min(width, height))

                text: "Idea idea idea ikea ikea ikea ikea"
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
                font.pixelSize: Math.min(width, height) * 0.2


                text: "Generate"
            }
        }

        Grid {
            columns: 2
            spacing: 5

            Button {
                id: saveButton

                width: generateButton.width * 0.6
                height: generateButton.height * 0.6


                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                    font.pixelSize: Math.min(width, height) * 0.2

                    text: "Сохранить"
                }
            }


            Button {
                id: favouritesButton

                width: generateButton.width * 0.6
                height: generateButton.height * 0.6

                Text {
                    id: favButtonLabel
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                    font.pixelSize: Math.min(width, height) * 0.2

                    text: "Избранное"
                }
            }

        }

    }
}
