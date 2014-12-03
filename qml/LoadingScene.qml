import QtQuick 2.0

Item {
    Image {
        source: "../image/splash.png"
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
        x: parent.width / 2 - 288 / 2
        y: parent.height / 2 - 512 / 2
    }
}
