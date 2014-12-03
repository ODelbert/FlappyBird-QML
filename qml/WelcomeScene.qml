import QtQuick 2.0

Item {
    Image {
        id: background
        source: "../image/background.png"
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
    }

    Cloud {
        x: 0
        y: 20
    }

    Ground {
        speed: 4000
        x: 0
        y: parent.height - height
    }

    Bird {
        speed: 100
        x: parent.width / 2 - 68 / 2
        y: parent.height / 2 - 48 / 2 - 50
    }
}
