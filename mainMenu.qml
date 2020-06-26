import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

import IdeaGenerator 1.0

Item {
    id: menu
    width: parent.width
    height: parent.height

    IdeaGenerator {
        id: generator
    }

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

            width: ideaCard.width * 0.6
            height: ideaCard.height * 0.2

            background: Rectangle {
                color: "#FA6800"
            }

            text: "Сгенерировать!"
            font.pointSize: Math.min(generateButton.width, generateButton.height) * 0.25 + 1

            onClicked: {idea.text = generator.generate();}


        }

        Grid {
            columns: 2
            spacing: 5

            Button {
                id: saveButton

                width: ideaCard.width * 0.35
                height: ideaCard.height * 0.15

                background: Rectangle {
                    color: "#FA6800"
                }

                text: "Сохранить"
                font.pointSize: Math.min(saveButton.width, saveButton.height) * 0.25 + 1

            }


            Button {
                id: favouritesButton

                width: ideaCard.width * 0.35
                height: ideaCard.height * 0.15


                text: "Избранное"
                font.pointSize: Math.min(favouritesButton.width, favouritesButton.height) * 0.25 + 1

                onClicked: {
                    root.currentWindow = "favs";
                }
            }

        }

    }
}
