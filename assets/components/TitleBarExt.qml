import bb.cascades 1.4
import '../style'

TitleBar {
    id: root
    
    property string titleText
    property bool searchEnabled: false
    property bool actionEnabled: false
    property string actionImageSource
    
    signal searchRequest
    signal actionTriggered
    
    appearance: TitleBarAppearance.Plain
    kind: TitleBarKind.FreeForm
    
    kindProperties: FreeFormTitleBarKindProperties {
        content:
        Container {
//            background: Application.themeSupport.theme.colorTheme.primaryBase
            background: Color.White
            layout: DockLayout {}
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                margin.leftOffset: ui.du(2.0)
                
                text: qsTr(titleText)
                textStyle.base: museoTitleText.style
                textStyle.color: Color.Black
            }
            ImageView {
                filterColor: Color.Black
                imageSource: "asset:///img/ic_search.png"
                horizontalAlignment: HorizontalAlignment.Right
                verticalAlignment: VerticalAlignment.Center
                maxWidth: ui.du(7.0)
                maxHeight: ui.du(7.0)
                margin.rightOffset: ui.du(1.5)
                visible: root.searchEnabled
                
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            searchRequest();
                        }    
                    }
                ]
            }
            ImageView {
                imageSource: root.actionImageSource
                horizontalAlignment: HorizontalAlignment.Right
                verticalAlignment: VerticalAlignment.Center
                maxWidth: ui.du(7.0)
                maxHeight: ui.du(7.0)
                margin.rightOffset: ui.du(1.5)
                visible: actionEnabled
                
                gestureHandlers: [
                    TapHandler {
                        onTapped: {
                            actionTriggered();
                        }    
                    }
                ]
            }
            
            attachedObjects: [
                TitleTextStyle { id: museoTitleText }
            ]
        }
    }
}
