import QtQuick 2.0
import Felgo 3.0


Rectangle {

    id:falseballoonId

        width:150
        height:150
        color: "Transparent"


        Image {
            id: falsevioletBalloon
            anchors.fill:parent
            source: "../../../assets/Img-sound/f837e87fa5aff86c8c9461d08fdea948.png"

            Text{
                text:" ب "
                color: "white"
                font.pixelSize: 50
                anchors.horizontalCenter:  parent.horizontalCenter
            }
        }
        NumberAnimation on y {
            from: y
            to : -100
            duration: 6000
            running: true
        }

        onYChanged: {
             if( y < -5 ){
                falseballoonId.destroy()
             }
        }

        MouseArea {
            anchors.fill: falseballoonId
            onPressed: {
               score = score -1 ; falseSound.play()
            }


}

}
