import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:month12

    MediaPlayer{
        id:m12_a
        source: "../../../../assets/snd/a/12a.mp3"

    }

    MediaPlayer{
        id:m12_e
        source: "../../../../assets/snd/e/12e.mp3"

    }

    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
        color: "#f0f8ff"

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
                id: m12
                width: 250
                height: 200
                source: "../../../../assets/img/months/12.jpg"
                MouseArea{
                    anchors.fill: m12
                    onClicked: {
                        m12_a.play();
                    }

                    }


            }

            AppButton{
                anchors.verticalCenter: parent.verticalCenter
                text: "December"
                textSize: 20
                flat: true
                onClicked: {
                    m12_e.play();

                }

            }



        }


    }

}
