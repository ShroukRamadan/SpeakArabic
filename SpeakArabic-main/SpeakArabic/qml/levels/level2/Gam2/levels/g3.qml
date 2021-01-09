import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
    id:sd1


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
        spacing: 20
    GameButton{

width: 30
            text: "يناير"
            onClicked: {

                audio4.play()
                audio5.pause()
            }

    }
    GameButton{
width: 30

            text: "فبراير"
            onClicked: {

                audio4.play()
                audio5.pause()
            }

    }
    GameButton{
width: 30
    id:label
            text: "مايو"
            onClicked: {
            a1.start()
                audio5.play()
                audio4.pause()
            }

    }
    NumberAnimation{
        id:a1

    loops: Animation.paused
    target: label
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
                audio3.play()
           }



        }





        GameButton{
            text: "Back"

            onClicked: {

                var component = Qt.createComponent("../gam2base.qml")
              var window = component.createObject(gameWindow)
              sd1 .visible = false
               window.show
                audio5.pause()
                audio4.pause()
           }
        }
    }


}
