import QtQuick 2.0

Item {
    width: parent.width
    height: 224

    property real speed: 5000

    Image {
        id: ground1
        source: "../image/ground.png"
        x: 0
        y: 0

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation {to: -924; duration: speed}
            PropertyAction {value: 0}
        }
    }

    Image {
        id: ground2
        source: "../image/ground.png"
        x: 924
        y: 0

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation {to: 0; duration: speed}
            PropertyAction {value: 924}
        }
    }
}
