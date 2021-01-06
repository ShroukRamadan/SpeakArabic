import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

Scene {
    id: mmm

    Rectangle{
            anchors.fill: parent.gameWindowAnchorItem
            color: "#f0f8ff"

        Image {
                id: neee
                anchors.fill: parent
                source: "../../../../../assets/img/imagges/الأرقام-العربية-حتى-10.jpg"
        }


        // back button
        IconButton{

            width:50
            height: 30

            icon: IconType.arrowleft
            onClicked: {

             var components = Qt.createComponent("../NumberBase.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show

            }
       }
        //next button
        IconButton{

            width:50
            height: 30
            anchors.right: parent.right
            icon: IconType.arrowright
            onClicked: {

             var components = Qt.createComponent("../nums/num1.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show
            audio11.play()
            }
       }







    }



    Audio{
    id:audio11
    source:"../../../../../assets/snd/sounds/num1.mp3"


    }
  }


