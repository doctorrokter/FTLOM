import bb.cascades 1.4
import '../style'

TitleBar {
    
    property string titleText
    
    appearance: TitleBarAppearance.Plain
    kind: TitleBarKind.FreeForm

    
    kindProperties: FreeFormTitleBarKindProperties {
        content:
        Container {
            background: Application.themeSupport.theme.colorTheme.primaryBase
            layout: DockLayout {}
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                
                text: qsTr(titleText)
                textStyle.base: museoTitleText.style
            }
            
            attachedObjects: [
                TitleTextStyle { id: museoTitleText }
            ]
        }
    }
}
