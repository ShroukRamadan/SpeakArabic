import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12


Scene {
         id: scene

    Rectangle {
         anchors.fill: parent.gameWindowAnchorItem
         color: "#f0f8ff"


         //back button
         IconButton{

             width:50
             height: 30

             icon: IconType.arrowleft
             onClicked: {

              var components = Qt.createComponent("../level1.qml")

              var window = components.createObject(gameWindow)

              selectlevel.visible = false

              window.show

             }
        }

         Text {
              anchors.horizontalCenter: parent.horizontalCenter
              font.pixelSize: 30

                 id: tee
                 text: qsTr("الأرقام / NUMBERS")

         }

         Column {
               anchors.centerIn: parent
               spacing: 10

               GameButton{
                 text: "  الدرس/LESSON  "

                 onClicked: {
                       var Component =Qt.createComponent("nums/number.qml");
                           var window =Component.createObject(gameWindow);
                           scene.visible=false
                           window.show
                         audio0.play()


                 }


                }


         }

        }
            Audio{
                id:audio0
                source:"../../../../assets/SOUNNDS/first.mp3"

            }

           // Audio{
             //   id:audio11
               // source:"../souunds/num1.mp3"

//            }
}
