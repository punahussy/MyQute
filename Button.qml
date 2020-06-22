import QtQuick 2.0

    Rectangle {
        id: buttonbg

        color: "#FA6800"
        opacity: 0.8

        MouseArea {
            id: marea
            anchors.fill: parent

            onClicked: buttonbg.opacity = 0.45;
        }
    }
