import QtQuick 2.8
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4



    Rectangle {
        id: rev
        width: 100
        height: 80
        color: "transparent"
        antialiasing: false
        anchors.left: parent.left
        anchors.top: parent.top

        Drag.active: parent.drag.active

        Gauge {
            id: revgauge
            anchors.fill: parent
            anchors.margins: 10
            orientation : Qt.Horizontal
            minorTickmarkCount: 4
            tickmarkStepSize : 5000
            //labelStepSize: 50
            minimumValue: 0
            maximumValue: 10000

            //value: Dashboard.revs
            Behavior on value {
                NumberAnimation {
                    duration: 5
                }
            }
            Text {
                //text:"RPM " + Dashboard.revs
                font.pixelSize: (parent.height / 3)
                anchors.top : parent.top
                // anchors.top : parent.top
                font.bold: true
                font.family: "Eurostile"
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
              style: GaugeStyle {
                valueBar: Rectangle {
                   implicitWidth:  rev.height /3
                    color: Qt.rgba(revgauge.value / revgauge.maximumValue, 0, 1 - revgauge.value / revgauge.maximumValue, 1)
                }
            }
      }
    }
