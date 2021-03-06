import QtQuick.Extras 1.4
import QtQuick.Controls 1.4
import QtQuick 2.8
import "CreateVerticalGauge.js" as CreateVerticalGaugeScript

Rectangle {
    width: parent.width
    height: parent.height
    color: "black"

    id: dashboard
    anchors.fill: parent

    DropArea {
        width: parent.width
        height: parent.height
    }

    MouseArea {
        id: touchArea
        anchors.fill: parent


        onClicked: pieMenu.popup(mouseX, mouseY), console.log("clicked")
       }

    PieMenu {
        id: pieMenu

        MenuItem {
            text: "Add vertial bar"
            onTriggered: CreateVerticalGaugeScript.createVerticalGauge(300);
        }
        MenuItem {
            text: "Add horizontal bar"
            onTriggered: print("Action 2")
        }
        MenuItem {
            text: "Add dial gauge"
            onTriggered: print("Action 3")
        }

    }



}
