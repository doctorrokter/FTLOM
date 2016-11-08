import bb.cascades 1.4
import '../style'

CustomListItem {
    
    property string header: 'Header'
    
    maxHeight: ui.du(6.0)
    Container {
        horizontalAlignment: HorizontalAlignment.Fill
        verticalAlignment: VerticalAlignment.Fill
        background: Color.create('#EFEFEF')
        layout: DockLayout {}
        Container {
            verticalAlignment: VerticalAlignment.Center
            margin.leftOffset: ui.du(3.0)
            margin.rightOffset: ui.du(3.0)
            Label {
                text: header
                textStyle.base: subtitleHeaderText.style
            }
        }
        
        attachedObjects: [
            SubtitleTextStyle { id: subtitleHeaderText }
        ]
    }
}
