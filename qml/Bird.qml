import QtQuick 2.0

Item {
    width: 68
    height: 48

    property real speed: 200

    Image {
        source: "../image/fly1.png"
        visible: true

        SequentialAnimation on visible {
            loops: Animation.Infinite
            PauseAnimation {duration: speed}
            PropertyAction {value: false}
            PauseAnimation {duration: speed}
            PropertyAction {value: true}
        }
    }

    Image {
        source: "../image/fly2.png"
        visible: false

        SequentialAnimation on visible {
            loops: Animation.Infinite
            PauseAnimation {duration: speed}
            PropertyAction {value: true}
            PauseAnimation {duration: speed}
            PropertyAction {value: false}
        }
    }
}
