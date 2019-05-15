import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Item {
    visible: true
    property int hh: megaItem.height*0.1
    Item {
        id: knopki
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.hh
        ButtonMenu{
            id:colorEdit
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "Если 1, то..."
            onClicked: {
                megaItem.klav1=1
                loadCon.source=""
                kw.getState()
                loadCon.source="WaitEcran.qml"
            }
        }
        ButtonMenu{
            id:properties
            anchors.left: colorEdit.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "Стрелка вверх"
<<<<<<< HEAD
            onClicked: {
                megaItem.klav1=2
                loadCon.source=""
                loadCon.source="EcranUpArrowKey.qml"
=======
            onClicked: {/*
                loadCon.source=""
                mainSys.command = "cat /proc/cpuinfo"
                mainSys.execute()
                loadCon.source="ConsoleView.qml"*/
>>>>>>> 6c065764ec1e51f8f393c6073d6b976630dcfd7b
            }
        }
        ButtonMenu{
            id:dmesg
            anchors.left: properties.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: parent.width/3
            text: "Функциональная клавиша"
<<<<<<< HEAD
            onClicked: {
                megaItem.klav1=4
                loadCon.source=""
                loadCon.source="EcranFunc.qml"
=======
            onClicked: {/*
                loadCon.source=""
                mainSys.command = "cat /proc/meminfo"
                mainSys.execute()
                loadCon.source="ConsoleView.qml"*/
>>>>>>> 6c065764ec1e51f8f393c6073d6b976630dcfd7b
            }
        }
    }
    Item {
        id:content
        opacity: 1
        anchors.top: knopki.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        Rectangle{
            id:recCon
            anchors.fill: parent
            color: topMenu.backgr
            Loader {
                id: loadCon
                anchors.fill: parent
                source: ""
            }
        }
    }

    function l3wait(){
        loadCon.item.wait()
    }

    function l3stop(){
        loadCon.item.stop()
    }
<<<<<<< HEAD

    function l31press(){
        loadCon.item.press()
    }

    function l31thiskey(b){
        loadCon.item.thiskey(b)
    }

    function l33press(){
        loadCon.item.press()
    }
=======
>>>>>>> 6c065764ec1e51f8f393c6073d6b976630dcfd7b
}
