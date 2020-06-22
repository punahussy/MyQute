import QtQuick 2.0

    Rectangle {
        id: buttonbg

        width: parent.width
        height: parent.height

        color: "black"
        opacity: 0.3

        MouseArea {
            id: marea
            anchors.fill: parent
            onEntered: buttonbg.opacity = 0.35;
            onExited: buttonbg.opacity = 0.1;
        }
    }
