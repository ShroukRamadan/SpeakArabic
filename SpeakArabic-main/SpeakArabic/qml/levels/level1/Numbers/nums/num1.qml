import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

Scene{
    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem

        Image {
                    id: jjh
                    source: "../../../../../assets/img/imagges/one-for-kids.jpg"
                    anchors.fill: parent
                }

        //back button
        IconButton{

            width:50
            height: 30

            icon: IconType.arrowleft
            onClicked: {

                 var components = Qt.createComponent("../nums/number.qml")

                 var window = components.createObject(gameWindow)

                 selectlevel.visible = false

                 window.show
                 audio11.play()

            }
       }

            //next button
            IconButton{

                width:50
                height: 30
                anchors.right: parent.right
                icon: IconType.arrowright
                onClicked: {

                 var components = Qt.createComponent("../nums/num2.qml")

                 var window = components.createObject(gameWindow)

                 selectlevel.visible = false

                 window.show
                audio2.play()
                }
           }

    }

    /*
        Text {
            id: nn
            text: qsTr("mm")
         }
      */
    Audio{
    id:audio2
    source:"../../../../../assets/snd/souunds/num2.mp3"

    }
    Audio{
    id:audio11
    source:"../../../../../assets/snd/souunds/first.mp3"

    }
}
