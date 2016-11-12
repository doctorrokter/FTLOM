import bb.cascades 1.4
import '../components'
import '../style'

Sheet {
    id: root
    
    Page {
        
        actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
        actionBarVisibility: ChromeVisibility.Overlay
        
        titleBar: FtlomTitleBar {
            titleText: "SETTINGS"
        }
        
        ScrollView {
            Container {
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Fill
                background: Color.create('#EFEFF4')
                Container {
                    horizontalAlignment: HorizontalAlignment.Center
                    background: parent.background
                    margin.topOffset: ui.du(7.5)
                    margin.bottomOffset: ui.du(3.0)
                    minWidth: ui.du(20.0)
                    minHeight: ui.du(20.0)
                    maxWidth: ui.du(20.0)
                    maxHeight: ui.du(20.0)
                    WebView {
                        minWidth: ui.du(20.0)
                        minHeight: ui.du(20.0)
                        maxWidth: ui.du(20.0)
                        maxHeight: ui.du(20.0)
                        // TODO: remove hardcoded color!!!
                        html: '<body style="background-color: #EFEFF4;"><img src="https://3.basecamp-static.com/3302743/people/2971716/avatars/avatar-e334a8eaf47d8fcfd09327c68e1d14a5-128-x1" 
                        width="100%" style="border-radius: 50%;"/></div></body>'
                    }
                }
                Container {
                    margin.bottomOffset: ui.du(7.5)
                    horizontalAlignment: HorizontalAlignment.Center
                    Label {
                        text: 'Mikhail Chachkouski'
                        textStyle {
                            base: titleTextStyle.style
                            color: Application.themeSupport.theme.colorTheme.primaryBase
                        }
                    }
                }
                MenuOption {
                    text: qsTr("Edit Notification Settings")
                    onTapped: {
                        notificationSettings.open();
                    }
                }
                MenuOption {
                    text: qsTr("Share Us")
                    margin.topOffset: ui.du(5.0)
                }
                MenuOption {
                    margin.topOffset: ui.du(0.5)
                    text: qsTr("Rate In BlackBerry World")
                }
                MenuOption {
                    text: qsTr("Send Feedback")
                    margin.topOffset: ui.du(5.0)
                }
                MenuOption {
                    text: qsTr("Privacy")
                    margin.topOffset: ui.du(0.5)
                }
                Container {
                    margin.topOffset: ui.du(5.0)
                    minHeight: ui.du(5.0)
                }
            }
            
            attachedObjects: [
                TitleTextStyle { id: titleTextStyle }
            ]
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
        
        attachedObjects: [
            NotificationSettings { id: notificationSettings }
        ]
    }
}