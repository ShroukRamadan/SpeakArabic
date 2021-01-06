import QtQuick 2.0
import Felgo 3.0


Rectangle {
    id:falseballoonId2

        width:150
        height:150
        color: "Transparent"


        Image {
            id: falsevioletBalloon
            anchors.fill: parent
            source: "Img-sound/f837e87fa5aff86c8c9461d08fdea948.png"

            Text{
                text:" ت "
                color: "white"
                font.pixelSize: 50
                anchors.horizontalCenter:  parent.horizontalCenter
            }
        }
        NumberAnimation on y {
            from: y
            to : -100
            duration: 4500
            running: true
        }


        onYChanged: {
             if( y < -5 ){
                falseballoonId2.destroy()
             }
        }

        MouseArea {
            anchors.fill: falseballoonId2
            onPressed: {
                score = score -1; falseSound.play()
            }


}





}
