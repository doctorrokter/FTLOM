import bb.cascades 1.4
import '../components'
import '../style'

Page {
    id: root
    
    titleBar: FtlomTitleBar {
        titleText: 'SETTINGS'
    }
    
    ScrollView {
        Container {
            attachedObjects: [
                TitleTextStyle { id: titleTextStyle }
            ]    
            horizontalAlignment: HorizontalAlignment.Fill
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
//                ImageView {
//                    minWidth: ui.du(20.0)
//                    minHeight: ui.du(20.0)
//                    maxWidth: ui.du(20.0)
//                    maxHeight: ui.du(20.0)
//                    imageSource: 'asset:///img/image.gif'
//                }
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
            Container {
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                    
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Your Artists')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(0.5)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Edit Notification Settings')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(5.0)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Share Us')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(0.5)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Rate On BlackBerry World')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(5.0)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Send Feedback')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(0.5)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Help Center')
                    }
                }
            }
            Container {
                margin.topOffset: ui.du(0.5)
                background: Color.White
                horizontalAlignment: HorizontalAlignment.Fill
                minHeight: ui.du(10.0)
                layout: DockLayout {
                
                }
                Container {
                    margin.leftOffset: ui.du(2.5)
                    verticalAlignment: VerticalAlignment.Center
                    Label {
                        text: qsTr('Privacy')
                    }
                }
            }
        }
    }
}
