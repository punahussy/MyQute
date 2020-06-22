import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    minimumHeight: 300
    minimumWidth: 400
    title: qsTr("Artblock remover")

    color: "Light Yellow"

    MainMenu {
        id: menu
    }
}
