import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12


    Scene {
        id: scene
        Rectangle{

            id: rectangle
            anchors.fill: parent.gameWindowAnchorItem
            color: "#f0f8ff"


            IconButton{


                       width:50

                       height: 30


                       icon: IconType.arrowleft

                       onClicked: {


                        var components = Qt.createComponent("../Level2Base.qml")


                        var window = components.createObject(gameWindow)


                        scene.visible = false


                        window.show


                    }

                  }
            Column{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20
                Text {
                    id: name
                    text: qsTr ("exercise")
                    font.pixelSize: 40
                   // anchors.horizontalCenter: parent.horizontalCenter

                    //color: "#191970"
                }
                GameButton{
                    width:170
                    height: 50
                    Text{
                        text: " Months "
                        font.pixelSize: 30
                        color: "white"
                        anchors.centerIn: parent
                    }
                    onClicked: {

                        var component = Qt.createComponent("levels/g3.qml")
                        var window = component.createObject(gameWindow)
                        scene.visible = false
                        window.show
                    }

                }
                GameButton{
                    width:170
                    height: 50
                    Text{
                        text: " Alphabet "
                        font.pixelSize: 30
                        color: "white"
                        anchors.centerIn: parent
                    }
                    onClicked: {

                        var component = Qt.createComponent("levels/g1.qml")
                        var window = component.createObject(gameWindow)
                        scene.visible = false
                        window.show
                    }

                }
                GameButton{
                    width:170
                    height: 50
                    Text{
                        text: " Days "
                        font.pixelSize: 30
                        color: "white"
                        anchors.centerIn: parent
                    }
                    onClicked: {

                        var component = Qt.createComponent("levels/g2.qml")
                        var window = component.createObject(gameWindow)
                        scene.visible = false
                        window.show
                    }

                }

}
//}
}
        Audio{
            id:audio7
            source:"sound/باء.mp3"



            }
        Audio{
            id:audio1
            source:"sound/3333.mp3"



            }
        Audio{
            id:audio3
            source:"sound/5a.mp3"



            }
        Audio{
            id:audio4
            source:"sound/إجابة_خاطئة(128kbps).mp3"



            }
        Audio{
            id:audio5
            source:"sound/اجابة_صحيحة(128kbps).mp3"



            }

     }





