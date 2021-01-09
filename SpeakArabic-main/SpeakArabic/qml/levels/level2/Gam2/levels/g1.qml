import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
id:ss1

Image {
    id:background
    anchors.fill: parent.gameWindowAnchorItem
    source: "../image/pngtree-children-s-day-outing-promotion-poster-image_227446.jpg"
}

Row{

    spacing: 10

    anchors.horizontalCenter: parent.horizontalCenter

    Text {
        id: t
        text: qsTr ("Choose the correct answer after hearing the sound ")
        font.pixelSize: 10
        color: "black"
    }


    Text {
        id: name
        text: qsTr ("اختر الاجابه الصحيحه بعد سماع الصوت")
        font.pixelSize: 10
        color: "black"
    }




}
Flow{

    anchors.left:  parent.left
    anchors.right:  parent.right
    anchors.top:   parent.top
    anchors.centerIn:   parent.horizontalCenter
    anchors.margins:120
    spacing: 20
GameButton{


        text: " ث "
        onClicked: {

            audio4.play()
            audio5.pause()
        }
}
GameButton{


        text: " ت "
        onClicked: {

            audio4.play()
            audio5.pause()
        }
}
GameButton{

id:label
        text: " ب "
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
            audio7.play()
       }



    }





    GameButton{
        text: "Back"

        onClicked: {

            var component = Qt.createComponent("../gam2base.qml")
            var window = component.createObject(gameWindow)
            ss1.visible = false
            window.show
            audio5.pause()
            audio4.pause()
        }
    }
}


}


}
