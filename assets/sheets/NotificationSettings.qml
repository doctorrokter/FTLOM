import bb.cascades 1.4
import "../components"

Sheet {
    id: root
    
    Page {
        
        titleBar: FtlomTitleBar {
            titleText: qsTr("Edit Notification Settings")
        }
        
        Container {
            
            layout: StackLayout {
                orientation: orientation.TopToBottom
            }
            
            Container {
                margin.topOffset: ui.du(2.0)
                margin.leftOffset: ui.du(2.0)
                margin.rightOffset: ui.du(2.0)
                margin.bottomOffset: ui.du(2.0)
                horizontalAlignment: HorizontalAlignment.Fill
                
                Container {
                    horizontalAlignment: HorizontalAlignment.Fill
                    layout: DockLayout {}
                    
                    Label {
                        verticalAlignment: VerticalAlignment.Top
                        margin.topOffset: ui.du(1.0)
                        horizontalAlignment: HorizontalAlignment.Left
                        text: qsTr("Receive push notifications") + Retranslate.onLocaleOrLanguageChanged
                    }
                    
                    ToggleButton {
                        verticalAlignment: VerticalAlignment.Top
                        horizontalAlignment: HorizontalAlignment.Right
                        checked: true
                    }
                }
                
                Divider {}
            }
        }
        
        actions: [
            ActionItem {
                title: qsTr('Back')
                imageSource: 'asset:///img/ic_previous.png'
                ActionBar.placement: ActionBarPlacement.Signature
                onTriggered: {
                    root.close();
                }
            }
        ]
    }
}