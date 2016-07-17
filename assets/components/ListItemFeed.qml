import bb.cascades 1.4
import '../style'

CustomListItem {
    
    property variant feed: {title: 'Title', time: 100000, artist: {name: 'Blessed By A Broken Heart', avatar: 'Avatar'}}
    
    attachedObjects: [
        SubtitleTextStyle { id: subtitleItemText },
        BodyTextStyle { id: bodyItemText },
        SmallTextStyle { id: smallItemText }
    ]
    
    Container {
        layout: DockLayout {}
        horizontalAlignment: HorizontalAlignment.Fill
        maxHeight: ui.du(50);
        
        
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            margin.leftOffset: ui.du(3.0)
            margin.rightOffset: ui.du(3.0)
            margin.bottomOffset: ui.du(3.0)
            margin.topOffset: ui.du(3.0)
            horizontalAlignment: HorizontalAlignment.Left
            verticalAlignment: VerticalAlignment.Center
            
            Avatar {
                imageSource: feed.artist.avatar
            }
            
            Container {
                id: infoContainer
                layout: StackLayout {}
                margin.leftOffset: ui.du(3.0)
                
                Label {
                    text: feed.artist.name
                    multiline: true
                    autoSize.maxLineCount: 10
                    maxWidth: ui.du(50)
                    textStyle {
                        base: bodyItemText.style
                    }
                    verticalAlignment: VerticalAlignment.Top
                }
                Label {
                    text: feed.title
                    multiline: true
                    textStyle.base: subtitleItemText.style
                    verticalAlignment: VerticalAlignment.Bottom
                    autoSize.maxLineCount: 10
                }
            }
        }
        
        Container {
            horizontalAlignment: HorizontalAlignment.Right
            verticalAlignment: VerticalAlignment.Top
            margin.rightOffset: ui.du(3.0)
            margin.topOffset: ui.du(3.0)
            Label {
                text: Qt.formatTime(new Date(feed.time), 'HH:mm')
                horizontalAlignment: HorizontalAlignment.Right
                verticalAlignment: VerticalAlignment.Top
                textStyle.base: smallItemText.style
            }
        }
    }
}
