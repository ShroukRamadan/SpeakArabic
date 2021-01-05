import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month2

    MediaPlayer{
        id:m2_a
        source: "../../../../assets/snd/a/2a.mp3"

    }

    MediaPlayer{
        id:m2_e
        source: "../../../../assets/snd/e/2e.mp3"

    }

    MediaPlayer{
        id:m3a
        source: "../../../../assets/snd/a/3a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month3.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m3a.play();

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
                id: m2
                width: 250
                height: 200
                source: "../../../../assets/img/months/2.jpg"
                MouseArea{
                    anchors.fill: m2
                    onClicked: {
                        m2_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "February"
                textSize: 20
                flat: true
                onClicked: {
                    m2_e.play();

                }

            }



        }


    }
}
