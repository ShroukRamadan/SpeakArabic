import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
// EMPTY SCENE

Scene {


    //for the true score
    property int score : 0
    //for the duration of the game
    property int time: 20

    id:root
    visible: true




    Audio{
         id:falseSound
         source: "../../../assets/Img-sound/sound/false.mp3"

   }

    Audio{
         id:trueSound
         source: "../../../assets/Img-sound/sound/balloonPop-true.wav"

    }





        Image {
                id: background
                anchors.fill: parent.gameWindowAnchorItem
                source: "../../../assets/Img-sound/simple-background-backgrounds-passion-simple-1-5c9b95c3a34f9.png"


                IconButton{
                   width:50
                   height: 30

                   icon: IconType.arrowleft
                   onClicked: {
                   var components = Qt.createComponent("Level2Base.qml")
                     var window = components.createObject(gameWindow)
                     root.visible = false
                     window.show
                     backgroundMusic.pause();
                   }
               }

            }



        Rectangle{

           anchors.horizontalCenter: parent



            Row{
                spacing: 50





                Text{
                    id: scoreId
                    color: "black"
                    font.bold: true
                    font.pixelSize: 30
                    text: "Score : " + score
                }


                Text{

                     id: textid
                     color: "black"
                     font.bold: true
                     font.pixelSize: 30
                     text: " Chosse Letter 'أ' "


                }





        }
               Timer{
                    id:balloon_timer
                    interval: 3000
                    running:true
                    repeat:true

                    onTriggered: {
                    var object=Qt.createComponent("balloons.qml")
                        if (object.status === Component.Ready){

                            //root is the id of window
                            var t=object.createObject( root , {"x" :Math.random() *root.width ,"y" : 1000 })

                        }

                }
        }
                    Timer{
                        id:falseballoon_timer
                        interval: 3500
                        running:true
                        repeat:true

                        onTriggered: {
                        var object=Qt.createComponent("falseballoons.qml")
                            if (object.status === Component.Ready){
                                //root is the id of window
                                var e=object.createObject( root , {"x" :Math.random() * root.width  ,"y" : 1000 })

                            }
                        }

                   }

                   Timer{
                        id:falseballoon2_timer
                        interval: 4500
                        running:true

                        repeat:true

                        onTriggered: {
                        var object=Qt.createComponent("falseballoons2.qml")
                            if (object.status === Component.Ready){
                                //root is the id of window
                                var e=object.createObject( root , {"x" :Math.random() * root.width  ,"y" : 1000 })

                            }
                        }


                   }


        }

}

