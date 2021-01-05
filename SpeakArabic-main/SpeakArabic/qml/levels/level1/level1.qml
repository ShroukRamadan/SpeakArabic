import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {
    id:level1

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
                text: qsTr("Select catrgory ?")
                font.pixelSize: 30

            }



           Row{

               anchors.horizontalCenter: parent.horizontalCenter

               AppButton{
                   text: "Alphabet"
                   onClicked: {
                       var c =Qt.createComponent("../../levels/level1/Alphabets/AlphabetBase.qml");
                           var w =c.createObject(gameWindow)
                       level1.visible=false
                       w.show



                   }
               }

                   AppButton{
                       text: "Numbers"
                       onClicked: {

                           var c =Qt.createComponent("../../levels/level1/Numbers/NumberBase.qml");
                               var w =c.createObject(gameWindow)
                           level1.visible=false
                           w.show


                       }
                   }





           }

           Row{
               anchors.horizontalCenter: parent.horizontalCenter


               AppButton{
                   text: "Days"
                   onClicked: {

                       var c =Qt.createComponent("../../levels/level1/Days/DayBase.qml");
                           var w =c.createObject(gameWindow)
                       level1.visible=false
                       w.show
               audio8.play()

                   }
               }
               AppButton{
                   text: "Months"
                   onClicked: {

                       var c =Qt.createComponent("../../levels/level1/Months/MonthBase.qml");
                           var w =c.createObject(gameWindow)
                       level1.visible=false
                       w.show


                   }
               }



           }

        }



}
Audio{
                id:audio8
                source:"../../levels/level1/Days/sounds/111.mp3"



                }
}
