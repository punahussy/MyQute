import QtQuick 2.0

Item {
    id: button
    property string label: "Rename me"
    property int fontSize: 12

    Rectangle {
        id: buttonbg

        width: parent.width
        height: parent.height
        color: "#FA6800"
        opacity: 0.8

        MouseArea {
            id: marea

            width: parent.width
            height: parent.height
            anchors.fill: parent

            onClicked: buttonbg.opacity = 0.45;

            Text {
                width: parent.width
                height: parent.height

                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                fontSizeMode: Text.fit
                font.pixelSize: button.fontSize

                text: button.label
            }
        }
    }


}
