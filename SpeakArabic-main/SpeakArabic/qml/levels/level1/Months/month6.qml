import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month6

    MediaPlayer{
        id:m6_a
        source: "../../../../assets/snd/a/6a.mp3"

    }

    MediaPlayer{
        id:m6_e
        source: "../../../../assets/snd/e/6e.mp3"

    }

    MediaPlayer{
        id:m7a
        source: "../../../../assets/snd/a/7a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month7.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m7a.play();

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
                id: m6
                width: 250
                height: 200
                source: "../../../../assets/img/months/6.jpg"
                MouseArea{
                    anchors.fill: m6
                    onClicked: {
                        m6_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "June"
                textSize: 20
                flat: true
                onClicked: {
                    m6_e.play();

                }

            }



        }


    }

}
