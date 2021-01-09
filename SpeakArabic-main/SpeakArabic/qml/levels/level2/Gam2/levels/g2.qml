import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
id:ss2
    Image {
        id:background
        anchors.fill: parent.gameWindowAnchorItem
        source: "../image/pngtree-children-s-day-outing-promotion-poster-image_227446.jpg"
    }

    Text {
        id: name
        text: qsTr ("اختر الاجابه الصحيحه عند سماع الصوت")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 30
        color: "black"
    }
    Flow{

        anchors.left:  parent.left
        anchors.right:  parent.right
        anchors.top:   parent.top
        anchors.centerIn:   parent.horizontalCenter
        anchors.margins:120
        spacing: 10
    GameButton{

id:label2
            text: " الاحد "
            onClicked: {
a2.start()
                audio5.play()
                audio4.pause()
            }


    }
    GameButton{


            text: " الثلاثاء"
            onClicked: {

                audio4.play()
                audio5.pause()
            }

    }
    GameButton{


            text: " السبت "
            onClicked: {

                audio4.play()
                audio5.pause()
            }

    }
    NumberAnimation{
        id:a2

    loops: Animation.paused
    target: label2
    property: "rotation"
    from: 0
    to:360
    duration: 1000



    }



        IconButton {
            width:30
            height: 30
           // Icon in default state
           icon: IconType.microphoneslash
           selectedIcon: IconType.microphone

           onClicked: {
                selectedIcon: IconType.microphone
                audio1.play()
           }



        }





        GameButton{
            text: "Back"

            onClicked: {

                var component = Qt.createComponent("../gam2base.qml")
                var window = component.createObject(gameWindow)
                ss2.visible = false
                window.show
                audio5.pause()
                audio4.pause()
            }
        }
    }

}
