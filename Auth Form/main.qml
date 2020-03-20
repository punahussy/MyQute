import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

Window {
    id: main
    visible: true
    width: 250
    height: 400
    title: qsTr("Sign up form")
    property int visibleFields: 0

    Text {
        id: myText
        text: "Sign in"
        color: "Black"
        width: 100
        height: 50
        font.pixelSize: 32
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        font.family: "Ubuntu"
    }

    Item {

        id: signInLayout
        visible: main.visibleFields == 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myText.bottom

        TextField {
            id: login
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            font.pixelSize: 18
            placeholderText: "Login"
        }

        TextField {
            id: password
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: login.bottom
            anchors.topMargin: 5
            font.pixelSize: 18
            echoMode: TextInput.Password
            placeholderText: "Password"
        }

        Button {
            width: 150
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: password.bottom
            anchors.topMargin: 15
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Sign in"
            }
        }

    }

    Item {

        id: signUpLayout
        visible: main.visibleFields == 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: myText.bottom

        TextField {
            id: loginSignUp
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 20
            font.pixelSize: 18
            placeholderText: "Login"
        }

        TextField {
            id: passwordSignUp
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: loginSignUp.bottom
            anchors.topMargin: 5
            font.pixelSize: 18
            echoMode: TextInput.Password
            placeholderText: "Password"
        }

        TextField {
            id: passwordRepeat
            width: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: passwordSignUp.bottom
            anchors.topMargin: 5
            font.pixelSize: 18
            echoMode: TextInput.Password
            placeholderText: "Password repeat"
        }

        Button {
            width: 150
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: passwordRepeat.bottom
            anchors.topMargin: 15
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                text: "Sign up"
            }
        }

    }



    Row {

        spacing: 10
        height: 75
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter


        Text {
            id: signIn
            text: "Sign in"
            color: "Gray"
            height: 50
            font.pixelSize: 16
            anchors.bottom: parent.bottom
            anchors.right: sign.left
            font.underline: true
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    console.log(login.text)
                    main.visibleFields = 0
                }
            }
        }

        Text {
            id: sign
            text: " / "
            color: "Gray"
            height: 50
            font.pixelSize: 16
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.underline: true
        }

        Text {
            id: signUp
            text: "Sign up"
            color: "Gray"
            height: 50
            font.pixelSize: 16
            anchors.bottom: parent.bottom
            anchors.left: sign.right
            font.underline: true
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    console.log(password.text)
                    main.visibleFields = 1
                }
            }
        }

    }



}
