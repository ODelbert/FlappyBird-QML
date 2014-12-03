import QtQuick 2.0

Item {
    width: parent.width
    height: 183

    property real speed: 10000

    Image {
        id: clouds1
        source: "../image/clouds.png"
        x: 0
        y: 0

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation {to: -748; duration: speed}
            PropertyAction {value: 0}
        }
    }

    Image {
        id: clouds2
        source: "../image/clouds.png"
        x: 748
        y: 0

        SequentialAnimation on x {
            loops: Animation.Infinite
            NumberAnimation {to: 0; duration: speed}
            PropertyAction {value: 748}
        }
    }
}
