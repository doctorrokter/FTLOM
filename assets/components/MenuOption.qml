import bb.cascades 1.4

Container {
    id: root
    
    property string text
    
    signal tapped(variant event);
    
    background: Color.White
    horizontalAlignment: HorizontalAlignment.Fill
    minHeight: ui.du(10.0)
    layout: DockLayout {
    
    }
    Container {
        margin.leftOffset: ui.du(2.5)
        verticalAlignment: VerticalAlignment.Center
        Label {
            text: root.text
        }
    }
    
    gestureHandlers: [
        TapHandler {
            onTapped: {
                root.tapped(event);
            }
        }
    ]
}
