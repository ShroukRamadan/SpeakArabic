import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12


    Scene {
        id: scene





        Rectangle {
            id: rectangle
             color: "#f0f8ff"
            anchors.fill: parent.gameWindowAnchorItem
            IconButton{


                       width:50

                       height: 30


                       icon: IconType.arrowleft

                       onClicked: {


                        var components = Qt.createComponent("../level1.qml")


                        var window = components.createObject(gameWindow)


                        selectlevel.visible = false


                        window.show

                       audio8.pause()
                    }

                  }


            Text {
                id: textElement
                 font.pixelSize:30
                text: qsTr("Week days")
                color: "black"
                anchors.horizontalCenter:  parent.horizontalCenter
            }

            Column{
            anchors.centerIn: parent
            spacing: 2

         GameButton{

           width: 100
         text:  "     Saturday    "
          onClicked: {
          var Component =Qt.createComponent("Days/day1.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio1.play()
              audio8.pause()
          }


         }


         GameButton{

         width: 100
         text: "      Sunday   "
          onClicked: {

          var Component =Qt.createComponent("Days/day2.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
         audio2.play()
              audio8.pause()

          }


         }
         GameButton{

         width: 100
         text: "     Monday    "
          onClicked: {
          var Component =Qt.createComponent("Days/day3.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio3.play()
              audio8.pause()
          }


         }
         GameButton{

         width: 100
         text: "      Tuesday    "
          onClicked: {
          var Component =Qt.createComponent("Days/day4.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
          audio4.play()
              audio8.pause()

          }


         }
         GameButton{

               width: 100
         text: "    Wednesday  "
          onClicked: {
          var Component =Qt.createComponent("Days/day5.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
          audio5.play()
              audio8.pause()

          }


         }
         GameButton{

         width: 100
         text: "    Thursday "
          onClicked: {
          var Component =Qt.createComponent("Days/day6.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show
         audio6.play()
              audio8.pause()

          }


         }
         GameButton{

         width: 100
         text: "    Friday    "
          onClicked: {
          var Component =Qt.createComponent("Days/day7.qml")
              var window =Component.createObject(gameWindow)
          scene.visible=false
          window.show

          audio7.play()
              audio8.pause()
          }


         }

        }

    }

        Audio{
        id:audio1
        source:"sounds/222.mp3"

        }
        Audio{
        id:audio2
        source:"sounds/3333.mp3"

        }
        Audio{
        id:audio3
        source:"sounds/444.mp3"

        }
        Audio{
        id:audio4
        source:"sounds/555.mp3"

        }
        Audio{
        id:audio5
        source:"sounds/1.mp3"

        }
        Audio{
        id:audio6
        source:"sounds/777.mp3"

        }Audio{
            id:audio7
            source:"sounds/888.mp3"



            }
}

