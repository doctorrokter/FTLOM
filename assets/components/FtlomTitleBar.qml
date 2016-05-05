import bb.cascades 1.4

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
                textStyle {
                    base: museoTitleText.style
                }
                textStyle.fontWeight: FontWeight.W800
                textStyle.color: Color.White
            }
            
            attachedObjects: [
                TextStyleDefinition {
                    id: museoTitleText
                    base: SystemDefaults.TextStyles.TitleText
                    fontSize: FontSize.Large
                    rules: [
                        FontFaceRule {
                            source: 'asset:///fonts/MuseoSansCyrl_2.otf'
                            fontFamily: 'MuseoSans'
                        }
                    ]
                    fontFamily: 'MuseoSans'
                }
            ]
        }
    }
}
