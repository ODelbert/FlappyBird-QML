import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    id: mainWindow
    visible: true
    width: 576
    height: 1024

    Rectangle {
        id: root
        color: "black"
        width: parent.width
        height: parent.height

        WelcomeScene {
            id: welcomeScene
            width: parent.width
            height: parent.height
            visible: false
            opacity: 0.0
        }

        LoadingScene {
            id: loadingScene
            width: parent.width
            height: parent.height
            visible: true
            opacity: 0.0

            SequentialAnimation on opacity {
                PropertyAnimation { to: 1.0; easing {type: Easing.Linear; overshoot: 500} }
                PauseAnimation { duration: 500 }
                onStopped: transform.start()
            }
        }

        SequentialAnimation {
            id: transform
            PropertyAnimation {
                to: 0.0
                properties: "opacity"
                target: loadingScene
                easing {type: Easing.Linear; overshoot: 500}
            }
            PropertyAction { target: welcomeScene; property: "visible"; value: true }
            PropertyAction { target: loadingScene; property: "visible"; value: false }
            PropertyAnimation {
                to: 1.0
                properties: "opacity"
                target: welcomeScene
                easing {type: Easing.Linear; overshoot: 500}
            }
        }
    }
}
