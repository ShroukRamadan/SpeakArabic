import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

// EMPTY SCENE

Scene {

   id:monthbase

   MediaPlayer{
       id:m1
       source: "../../../../assets/snd/a/1a.mp3"
   }
   MediaPlayer{
       id:m2
       source: "../../../../assets/snd/a/2a.mp3"
   }

   MediaPlayer{
       id:m3
       source: "../../../../assets/snd/a/3a.mp3"
   }

   MediaPlayer{
       id:m4
       source: "../../../../assets/snd/a/4a.mp3"
   }

   MediaPlayer{
       id:m5
       source: "../../../../assets/snd/a/5a.mp3"
   }

   MediaPlayer{
       id:m6
       source: "../../../../assets/snd/a/6a.mp3"
   }

   MediaPlayer{
       id:m7
       source: "../../../../assets/snd/a/7a.mp3"
   }

   MediaPlayer{
       id:m8
       source: "../../../../assets/snd/a/8a.mp3"
   }

   MediaPlayer{
       id:m9
       source: "../../../../assets/snd/a/9a.mp3"
   }

   MediaPlayer{
       id:m10
       source: "../../../../assets/snd/a/10a.mp3"
   }

   MediaPlayer{
       id:m11
       source: "../../../../assets/snd/a/11a.mp3"
   }

   MediaPlayer{
       id:m12
       source: "../../../../assets/snd/a/12a.mp3"
   }


   Rectangle{
       anchors.fill: parent.gameWindowAnchorItem
       color: "#f0f8ff"


       IconButton{
           width:50
           height: 30
           icon: IconType.arrowleft
           onClicked: {
            var components = Qt.createComponent("../../../levels/level1/level1.qml")
            var window = components.createObject(gameWindow)
            selectlevel.visible = false
            window.show

        }
      }

       Column{

           spacing: 20
           anchors.horizontalCenter: parent.horizontalCenter
           anchors.verticalCenter: parent.verticalCenter

           Flow{
               spacing: 30
               anchors.horizontalCenter: parent.horizontalCenter
               //anchors.verticalCenter: parent.verticalCenter

               Text {
                   id: t
                   text: qsTr("Months")
                   font.pixelSize: 30
               }

               Text {
                   id: te
                   text: qsTr("الشهور الميلادية")
                   font.pixelSize: 30

               }

           }

               Row{

                   AppButton{
                       text: "January"
                       //flat: true

                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month1.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m1.play();

                       }

                   }

                   AppButton{
                       text: "February"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month2.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m2.play();

                       }

                   }

                   AppButton{
                       text: "March"
                      // flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month3.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m3.play();

                       }

                   }

                   AppButton{
                       text: "April"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month4.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m4.play();


                       }

                   }

               }//end Row


               Row{

                   AppButton{
                       text: "May"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month5.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m5.play();


                       }

                   }

                   AppButton{
                       text: "June"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month6.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m6.play();


                       }

                   }

                   AppButton{
                       text: "July"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month7.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m7.play();


                       }

                   }

                   AppButton{
                       text: "August"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month8.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m8.play();


                       }

                   }

               }//end Row

               Row{

                   AppButton{
                       text: "September"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month9.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m9.play();


                       }

                   }

                   AppButton{
                       text: "October"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month10.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m10.play();

                       }

                   }

                   AppButton{
                       text: "November"
                       //flat: true
                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month11.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m11.play();


                       }

                   }

                   AppButton{
                       text: "December"
                       //flat: true

                       onClicked: {
                           var c =Qt.createComponent("../../../levels/level1/Months/month12.qml");
                               var w =c.createObject(gameWindow);
                           monthbase.visible=false
                           w.show
                           m12.play();

                       }
                   }

               }//end Row



       }

       }




   }


