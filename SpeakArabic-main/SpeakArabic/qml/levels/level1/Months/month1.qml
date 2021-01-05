import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month1

    MediaPlayer{
        id:m1_a
        source: "../../../../assets/snd/a/1a.mp3"

    }

    MediaPlayer{
        id:m1_e
        source: "../../../../assets/snd/e/1e.mp3"

    }

    MediaPlayer{
        id:m2a
        source: "../../../../assets/snd/a/2a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month2.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
             m2a.play();

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
                id: m1
                width: 250
                height: 200
                source: "../../../../assets/img/months/1.jpg"
                MouseArea{
                    anchors.fill: m1
                    onClicked: {
                        m1_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "January"
                textSize: 20
                flat: true
                onClicked: {
                    m1_e.play();

                }

            }



        }


    }

}
