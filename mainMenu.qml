import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    width: parent.width
    height: parent.height
    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15

        width: 200
        height: 100

        Text {

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            font.pixelSize: Math.min(parent.width, parent.height) * 0.8
            anchors.fill: parent
            text: "Hello"
        }
    }
}
