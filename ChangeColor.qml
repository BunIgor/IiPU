import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
//import "./ButtonForColor.qml"

Item {
    id: window
    visible: true

    ButtonForColor{
        id:col1
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width/3
        color: "#333333"
        onClicked: {
            mainWin.setClr("#333333")
        }
    }
    ButtonForColor{
        id:col2
        anchors.left: col1.right
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width/3

        color: "#CD5C5C"

        onClicked: {
            mainWin.setClr("#CD5C5C")
        }
    }
    ButtonForColor{
        id:col3
        anchors.left: col2.right
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width/3
        color: "#000066"
        onClicked: {
            mainWin.setClr("#000066")

        }
    }
}
