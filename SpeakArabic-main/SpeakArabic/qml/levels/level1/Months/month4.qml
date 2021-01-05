import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month4

    MediaPlayer{
        id:m4_a
        source: "../../../../assets/snd/a/4a.mp3"

    }

    MediaPlayer{
        id:m4_e
        source: "../../../../assets/snd/e/4e.mp3"

    }

    MediaPlayer{
        id:m5a
        source: "../../../../assets/snd/a/5a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month5.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m5a.play();

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
                id: m4
                width: 250
                height: 200
                source: "../../../../assets/img/months/4.jpg"
                MouseArea{
                    anchors.fill: m4
                    onClicked: {
                        m4_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "April"
                textSize: 20
                flat: true
                onClicked: {
                    m4_e.play();

                }

            }



        }


    }

}
