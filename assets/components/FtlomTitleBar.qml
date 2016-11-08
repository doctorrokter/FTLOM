import bb.cascades 1.4
import '../style'

TitleBar {
    
    property string titleText
    
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
                
                text: qsTr(titleText)
                textStyle.base: museoTitleText.style
                textStyle.color: Color.Black
            }
            
            attachedObjects: [
                TitleTextStyle { id: museoTitleText }
            ]
        }
    }
}
