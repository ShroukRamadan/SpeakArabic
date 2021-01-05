import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month11

    MediaPlayer{
        id:m11_a
        source: "../../../../assets/snd/a/11a.mp3"

    }

    MediaPlayer{
        id:m11_e
        source: "../../../../assets/snd/e/11e.mp3"

    }

    MediaPlayer{
        id:m12a
        source: "../../../../assets/snd/a/12a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month12.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m12a.play();

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
                id: m11
                width: 250
                height: 200
                source: "../../../../assets/img/months/11.jpg"
                MouseArea{
                    anchors.fill: m11
                    onClicked: {
                        m11_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "November"
                textSize: 20
                flat: true
                onClicked: {
                    m11_e.play();

                }

            }



        }


    }


}
