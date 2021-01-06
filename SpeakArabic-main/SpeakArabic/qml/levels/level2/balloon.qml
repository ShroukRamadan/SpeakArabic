import QtQuick 2.0
import Felgo 3.0

Rectangle {
    id:balloonId

        width:150
        height:150
        color: "Transparent"


        Image {
            id: yellowBalloon
            anchors.fill:parent
            source: "Img-sound/f837e87fa5aff86c8c9461d08fdea948.png"
        }
MouseArea{
    anchors.fill: parent
    drag.target:parent
    drag.axis :Drag.XAndYAxis
    drag.maximumX: root.width - parent.width
    drag.minimumX: 0
    drag.maximumY: root.height - parent.height

}




        NumberAnimation on y {
            from: y
            to : -100
            duration: 2000
            running: true
        }

}

