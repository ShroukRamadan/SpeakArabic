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
            source: "../../../../../assets/img/imagges/five-for-kids-number.jpg"
            anchors.fill: parent
    }
        //next button
        IconButton{

            width:50
            height: 30
            anchors.right: parent.right
            icon: IconType.arrowright
            onClicked: {

             var components = Qt.createComponent("../nums/num6.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show
             audio6.play()
            }
       }

    }


Audio{
id:audio6
source:"../../../../../assets/snd/souunds/num6.mp3"

}
}



