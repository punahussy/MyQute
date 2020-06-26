import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15


Window {
    id: root
    visible: true
    width: 640
    height: 480
    minimumHeight: 300
    minimumWidth: 400
    title: qsTr("Artblock remover")

    property string currentWindow: "menu"

    color: "Light Yellow"

    MainMenu {
        id: menu
        visible: root.currentWindow === "menu"
    }  

    Favorites {
        id: idea

        visible: root.currentWindow === "favs"
    }

}
