import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
    id:month5

    MediaPlayer{
        id:m5_a
        source: "../../../../assets/snd/a/5a.mp3"

    }

    MediaPlayer{
        id:m5_e
        source: "../../../../assets/snd/e/5e.mp3"

    }

    MediaPlayer{
        id:m6a
        source: "../../../../assets/snd/a/6a.mp3"

    }

    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
        color: "#f0f8ff"

        IconButton{
            anchors.right: parent.right
            width:50
            height: 30
            icon: IconType.arrowright
            onClicked: {
                var components = Qt.createComponent("../../../levels/level1/Months/month6.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m6a.play();

         }
       }

        IconButton{
            width:50
            height: 30
            icon: IconType.arrowleft
            onClicked: {
                var components = Qt.createComponent("../../../levels/level1/Months/MonthBase.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show

         }
       }

        Row{

            spacing: 30

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter




            Image {
                id: m5
                width: 250
                height: 200
                source: "../../../../assets/img/months/5.jpg"
                MouseArea{
                    anchors.fill: m5
                    onClicked: {
                        m5_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "May"
                textSize: 20
                flat: true
                onClicked: {
                    m5_e.play();

                }

            }



        }


    }


}
