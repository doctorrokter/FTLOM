import bb.cascades 1.4
import "../style"

TitleBar {
    
    signal search(variant textParts)
    signal cancelSearch
    
    function setFocus() {
        textField.requestFocus();
    }
    
    kind: TitleBarKind.FreeForm
    kindProperties: FreeFormTitleBarKindProperties {
        Container {
            background: Application.themeSupport.theme.colorTheme.primaryBase
            leftPadding: ui.du(1)
            rightPadding: ui.du(1)
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight           
            }
            TextField {
                id: textField
                
                verticalAlignment: VerticalAlignment.Center
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 3
                }
                
                hintText: qsTr("Enter text") + Retranslate.onLocaleOrLanguageChanged
                inputMode: TextFieldInputMode.Text
                input.keyLayout: KeyLayout.Text
                maximumLength: 40
                textStyle.base: {
                    subtitleTextStyle.style
                }
                
                onTextChanging: {
                    search(text.split(" ", 2));
                }
            }
            Button {
                text: qsTr("Cancel") + Retranslate.onLocaleOrLanguageChanged
                color: Application.themeSupport.theme.colorTheme.primaryBase
                verticalAlignment: VerticalAlignment.Center
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                
                onClicked: {
                    cancelSearch();
                }
            }            
        }
    }
    
    attachedObjects: [
        SubtitleTextStyle { id: subtitleTextStyle }
    ]   
}