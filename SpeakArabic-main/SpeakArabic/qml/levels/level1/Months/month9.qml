import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
    id:month9

    MediaPlayer{
        id:m9_a
        source: "../../../../assets/snd/a/9a.mp3"

    }

    MediaPlayer{
        id:m9_e
        source: "../../../../assets/snd/e/9e.mp3"

    }

    MediaPlayer{
        id:m10a
        source: "../../../../assets/snd/a/10a.mp3"

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
                var components = Qt.createComponent("../../../levels/level1/Months/month10.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show
                m10a.play();

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
                id: m9
                width: 250
                height: 200
                source: "../../../../assets/img/months/9.jpg"
                MouseArea{
                    anchors.fill: m9
                    onClicked: {
                        m9_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "September"
                textSize: 20
                flat: true
                onClicked: {
                    m9_e.play();

                }

            }



        }


    }

}
