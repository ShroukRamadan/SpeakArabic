import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene{
    /*Text {
        id: nn
        text: qsTr("mm")
    }*/
    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem


        Image {
            id: jjh
            source: "../../../../../assets/img/imagges/six-for-kids-number.jpg"
            anchors.fill: parent
        }
        IconButton{

            width:50
            height: 30
            anchors.right: parent.right
            icon: IconType.arrowright
            onClicked: {

             var components = Qt.createComponent("../nums/num7.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show
             audio7.play()
            }
       }

    }



Audio{
id:audio7
source:"../../../../../assets/snd/souunds/num7.mp3"

}
}


