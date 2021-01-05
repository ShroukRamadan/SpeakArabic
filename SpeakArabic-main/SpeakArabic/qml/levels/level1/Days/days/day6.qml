import QtQuick 2.0
import Felgo 3.0

// EMPTY SCENE

Scene {
id:s6
Image {
    id:background
    anchors.fill: parent.gameWindowAnchorItem
    source: "../image/pngtree-new-force-week-purple-gradient-geometric-new-in-autumn-image_14189.jpg"
}
    Text {
font.pixelSize: 50
        text: "الخميس"
        color: "black"

        anchors.centerIn: parent
    }
    Rectangle{
        IconButton{


                   width:50

                   height: 30

                    color: black
                   icon: IconType.arrowleft

                   onClicked: {


                    var components = Qt.createComponent("../DayBase.qml")


                    var window = components.createObject(gameWindow)


                    selectlevel.visible = false


                    window.show


                }

              }



    }
}
