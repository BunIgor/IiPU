import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Item {
    visible: true
    property int hh: megaItem.height*0.1
    Item {
        id: knopkiii
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.hh
        ButtonMenu{
            id:ccc
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/2
            text: "SETSERIAL"
            onClicked: {
                loadConn.source=""
                mainSys.command="cat proverka.txt"
                mainSys.execute()
                loadConn.source="ConsoleView.qml"
            }
        }
        ButtonMenu{
            id:ppp
            anchors.left: ccc.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/2
            text: "Алгоритм"
            onClicked: {
                loadConn.source=""
                mainSys.command="cat al.txt"
                mainSys.execute()
                loadConn.source="ConsoleView.qml"
            }
        }
    }
    Item {
        id:contentt
        opacity: 1
        anchors.top: knopkiii.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle{
            id:recConn
            anchors.fill: parent
            color: topMenu.backgr
            Loader {
                id: loadConn
                anchors.fill: parent
                source: ""
            }
        }
    }
}
