import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month8

    MediaPlayer{
        id:m8_a
        source: "../../../../assets/snd/a/8a.mp3"

    }

    MediaPlayer{
        id:m8_e
        source: "../../../../assets/snd/e/8e.mp3"

    }

    MediaPlayer{
        id:m9a
        source: "../../../../assets/snd/a/9a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month9.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m9a.play();

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
                id: m8
                width: 250
                height: 200
                source: "../../../../assets/img/months/8.jpg"
                MouseArea{
                    anchors.fill: m8
                    onClicked: {
                        m8_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "August"
                textSize: 20
                flat: true
                onClicked: {
                    m8_e.play();

                }

            }



        }


    }
}
