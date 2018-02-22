import QtQuick 2.6
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import com.PowerCAN.can 1.0


ApplicationWindow {
    id: root
    width: 800
    height: 480
    minimumWidth: 800
    minimumHeight: 480
    visible: true
    color: "black"
    title: qsTr("PowerCAN")

    CAN {
        id: can
    }

    SwipeView {
        id: swipeView

        currentIndex: 0
        anchors.fill: parent

        Loader {
            id: firstPageLoader
            source: "qrc:/dashBoard.qml"

        }

        Loader {
            id: secondPageLoader

        }
        Loader {
            id: thirdPageLoader

         }

    }



    PageIndicator {
        id: indicator

        count: swipeView.count
        currentIndex: swipeView.currentIndex

        anchors.bottom: swipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }




}
