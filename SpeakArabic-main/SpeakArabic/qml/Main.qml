import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow
    activeScene: scene
    screenWidth: 960
    screenHeight: 640


    Scene {
        id: scene
        anchors.fill: parent
        Rectangle{

            id:rectangle
            anchors.fill: parent.gameWindowAnchorItem
            color: "#f0f8ff"



            FontLoader {
                id: efont;
                name: "Freestyle Script"
            }

            Column{

                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                spacing: 20
                Text {
                    id: textElement

                    font.pixelSize: 150
                    font.family: efont.name
                    text: qsTr("Speak Arabic")

                }

                AppButton{
                    text: "play"
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        var Component =Qt.createComponent("selectlevel.qml");
                            var window =Component.createObject(gameWindow);
                        scene.visible=false
                        window.show

                    }

                }//end AppButton
            }



        }//end Rectangle



    }
}
