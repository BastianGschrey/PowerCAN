var component;
var gauge;

function createVerticalGauge(setWidth) {
    component = Qt.createComponent("VerticalBarGauge.qml");
    if (component.status == Component.Ready)
        finishCreation(setWidth);
    else
        component.statusChanged.connect(finishCreation);
}

function finishCreation(setWidth) {
    if (component.status == Component.Ready) {
        gauge = component.createObject(root, {"x": 100, "y": 100});
        gauge.width = setWidth;
        if (gauge == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
