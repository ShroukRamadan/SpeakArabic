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
    width: 640
    height: 480



    Audio{
         id:falseSound
         source: "../../../assets/Img-sound/sound/false.mp3"

   }

    Audio{
         id:trueSound
         source: "../../../assets/Img-sound/sound/balloonPop-true.wav"

    }
    Audio{
     id:backgroundMusic
      source:"../../../assets/Img-sound/sound/music.mp3"

    }




        Image {
                id: background
                anchors.fill: parent.gameWindowAnchorItem
                source: "../../../assets/Img-sound/simple-background-backgrounds-passion-simple-1-5c9b95c3a34f9.png"
            }


        Rectangle{


            Row{
                spacing: 100
                Text{
                    id: scoreId
                    color: "black"
                    font.bold: true
                    font.pixelSize: 50
                    text: "Score : " + score
                }

                Text{
                    id: timeId
                    color: "black"
                    font.bold: true
                    font.pixelSize: 50
                    text: "time : " + time
                }
        }
                Timer{
                    id:balloon_timer
                    interval: 3000
                    running:true
                    repeat:true

                    onTriggered: {
                    var object=Qt.createComponent("../../levels/level2/balloons.qml")
                        if (object.status === Component.Ready){
                            backgroundMusic.play()
                            time --

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
                        var object=Qt.createComponent("../../levels/level2/falseballoons.qml")
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
                        var object=Qt.createComponent("../../levels/level2/falseballoons2.qml")
                            if (object.status === Component.Ready){
                                //root is the id of window
                                var e=object.createObject( root , {"x" :Math.random() * root.width  ,"y" : 1000 })

                            }
                        }


                   }
        Timer{

            id:resetTheGame
            interval: 4000
            running:true
            repeat:true

            onTriggered: {
                if(time==0){
                    backgroundMusic.restart()
                    score.restart()
                    time.restart()
                    balloon_timer.restart()
                    falseballoon_timer.restart()
                    falseballoon2_timer.restart()



                }


            }




        }

        }









}
