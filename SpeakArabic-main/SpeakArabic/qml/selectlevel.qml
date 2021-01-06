import QtQuick 2.0
import Felgo 3.0

// EMPTY SCENE

Scene {
    id:selectlevel

    Rectangle{

        anchors.fill: parent.gameWindowAnchorItem
        color: "#f0f8ff"

        IconButton{
            width:50
            height: 30
            icon: IconType.arrowleft
            onClicked: {
             var components = Qt.createComponent("Main.qml")
             var window = components.createObject(gameWindow)
             selectlevel.visible = false
             window.show

         }
       }

        Column{

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 10

            Text {
                id: t1
                text: qsTr("Select level ?")
                font.pixelSize: 30

            }



            AppButton{
                text: "Level One"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var c =Qt.createComponent("levels/level1/level1.qml");
                        var w =c.createObject(gameWindow)
                    selectlevel.visible=false
                    w.show

                }
            }

                AppButton{
                    text: "Level Two"
                    anchors.horizontalCenter: parent.horizontalCenter

                    onClicked: {

                        var Component =Qt.createComponent("levels/level2/Level2Game");
                            var window =Component.createObject(gameWindow);
                        selectlevel.visible=false
                        window.show


                       }
                    }

                     }

        }

}
