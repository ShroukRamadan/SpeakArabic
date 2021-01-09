import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {
    id:level2Base

    Audio{
     id:backgroundMusic
      source:"../../../assets/Img-sound/sound/music.mp3"

    }

    Rectangle{

        anchors.fill: parent.gameWindowAnchorItem
        color: "#f0f8ff"

        IconButton{
            width:50
            height: 30
            icon: IconType.arrowleft
            onClicked: {
             var components = Qt.createComponent("../../selectlevel.qml")
             var window = components.createObject(gameWindow)
             level2Base.visible = false
             window.show

         }
       }

        Column{

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 10

            Text {
                id: t1
                text: qsTr("Select Game ?")
                font.pixelSize: 30

            }



            AppButton{
                text: "Game One"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var c =Qt.createComponent("../../levels/level2/Level2Game.qml");
                        var w =c.createObject(gameWindow)
                    level2Base.visible=false
                    w.show
                    backgroundMusic.play();

                }
            }

                AppButton{
                    text: "Game Two"
                    anchors.horizontalCenter: parent.horizontalCenter

                    onClicked: {

                        var Component =Qt.createComponent("../../levels/level2/Gam2/gam2base.qml");
                            var window =Component.createObject(gameWindow);
                        level2Base.visible=false
                        window.show


                       }
                    }

                     }

        }

}
