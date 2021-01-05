import QtQuick 2.0
import Felgo 3.0


Scene {
    id:alphabet

    Rectangle{

        id:rectangle
        anchors.fill: parent.gameWindowAnchorItem
        color: "#f0f8ff"

    IconButton{

        width: 50
        height: 30

        icon: IconType.arrowleft
        onClicked: {

             var components = Qt.createComponent("../AlphabetBase.qml")

             var window = components.createObject(gameWindow)

             selectlevel.visible = false

             window.show
        }
   }
}
    RoundedImage {

      radius: 20.0
       width: 200
       height: 200
       anchors.left: parent.gameWindowAnchorItem.left
       anchors.verticalCenter:   parent.gameWindowAnchorItem.verticalCenter
       anchors.margins: 25
       //crop the edgs to form a rounded image
       fillMode: Image.PreserveAspectCrop
       source: "../../../../../assets/img/alphabetImg/رمان.jpg"
    }
    Column{

        anchors.right: parent.gameWindowAnchorItem.right
        anchors.verticalCenter: parent.gameWindowAnchorItem.verticalCenter
        anchors.margins: 50
        spacing: 30

        Text {
            text: " رمان "
            color: "black"
            font.pixelSize: 50

        }
        Text {
            text: " Romaan "
            color: "#0073e6"
            font.pixelSize: 50

        }

    }

    IconButton {
        width:50
        height: 50
        anchors.horizontalCenter : parent.gameWindowAnchorItem.horizontalCenter
        anchors.verticalCenter: parent.gameWindowAnchorItem.verticalCenter

        // Icon in default state
        icon: IconType.bello
        //Icon after being clicked
        selectedIcon: IconType.bell
        onClicked: {
            selectedIcon: IconType.bell
            roman.play()
        }
}

}
