import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.12

Item {
    id: elem

    property string ideaText: "Hello"

    Rectangle {
        width: elem.width
        height: elem.height
        color: "#FA6800"
        opacity: 0.8

        Grid {
            columns: 2
            spacing: 5

            Text {
                width: parent.width
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                text: elem.ideaText
            }

            CheckBox {
                id: check

            }
        }
    }

}
