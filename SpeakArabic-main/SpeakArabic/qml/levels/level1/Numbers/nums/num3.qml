import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12





Scene{
  /*  Text {
        id: nn
        text: qsTr("mm")
    }*/

    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem


        Image {
            id: jjh
            source: "../../../../../assets/img/imagges/three-for-kids.jpg"
            anchors.fill: parent
        }
        //next button
        IconButton{

            width:50
            height: 30
            anchors.right: parent.right
            icon: IconType.arrowright
            onClicked: {

             var components = Qt.createComponent("../nums/num4.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show
             audio4.play()
            }
       }

    }


Audio{
id:audio4
source:"../../../../../assets/snd/souunds/num4.mp3"

}
}


