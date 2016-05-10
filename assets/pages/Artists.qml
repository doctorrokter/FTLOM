import bb.cascades 1.4
import '../components'
import '../style'

Page {
    id: root
    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
    
    property variant artists: [
        {"id": 1, "name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png"},
        {"id": 2, "name":"Judas Priest","avatar":"http://img2-ak.lst.fm/i/u/174s/6d0e140b791d43d4b70244c80b4aca94.png"},
        {"id": 3, "name":"Metallica","avatar":"http://img2-ak.lst.fm/i/u/174s/3678be8979db483ebda032762e670777.png"},
        {"id": 4, "name":"Red","avatar":"http://img2-ak.lst.fm/i/u/174s/6753dbffb72947a2c75115dd0635e6c2.png"},
        {"id": 5, "name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/174s/2b7b44620dc040bda6b5305dd9bab5ed.png"},
        {"id": 6, "name":"Motorhead","avatar":"http://img2-ak.lst.fm/i/u/174s/66b03a4eeba745b79e8fb68c71dc260a.png"},
        {"id": 7, "name":"U2","avatar":"http://img2-ak.lst.fm/i/u/174s/7981dc23ab814bb3966e75bf3a2a76f2.png"},
        {"id": 8, "name":"Sting","avatar":"http://img2-ak.lst.fm/i/u/174s/e3a9f244a34249898090b0c1106d968a.png"}
    ]
    
    titleBar: FtlomTitleBar {
        titleText: 'TRACK ARTISTS'
    }
    
    Container {
        ListView {
            id: artistsList
            dataModel: ArrayDataModel {
                id: artistsArray
            }
            
            listItemComponents: [
                ListItemComponent {
                    CustomListItem {
                        attachedObjects: [
                            BodyTextStyle { id: bodyItemText },
                            SubtitleTextStyle { id: subtitleItemText }
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
                                    imageSource: ListItemData.avatar
                                }
                                
                                Container {
                                    id: infoContainer
                                    layout: DockLayout {}
                                    margin.leftOffset: ui.du(3.0)
                                    verticalAlignment: VerticalAlignment.Fill
                                    horizontalAlignment: HorizontalAlignment.Fill
                                    
                                    Container {
                                        verticalAlignment: VerticalAlignment.Center
                                        horizontalAlignment: HorizontalAlignment.Center
                                        Label {
                                            text: ListItemData.name
                                            textStyle.base: bodyItemText.style
                                        }
                                    }
                                }
                            }
                            
                            Container {
                                horizontalAlignment: HorizontalAlignment.Right
                                verticalAlignment: VerticalAlignment.Center
                                maxWidth: ui.du(20.0)
                                minWidth: ui.du(20.0)
                                minHeight: ui.du(7.0)
                                maxHeight: ui.du(7.0)
                                margin.rightOffset: ui.du(3.0)
                                background: Application.themeSupport.theme.colorTheme.primaryBase
                                
                                Container {
                                    id: button
                                    background: Color.White
                                    minWidth: ui.du(19.50)
                                    maxWidth: ui.du(19.50)
                                    minHeight: ui.du(6.50)
                                    maxHeight: ui.du(6.50)
                                    margin.topOffset: ui.du(0.25)
                                    margin.leftOffset: ui.du(0.25)
                                    layout: DockLayout {}
                                    
                                    Label {
                                        id: buttonLabel
                                        text: qsTr('TRACK')
                                        textStyle.base: subtitleItemText.style
                                        textStyle.color: Application.themeSupport.theme.colorTheme.primaryBase
                                        textStyle.fontWeight: FontWeight.W400
                                        verticalAlignment: VerticalAlignment.Center
                                        horizontalAlignment: HorizontalAlignment.Center
                                    }
                                }
                                
                                gestureHandlers: [
                                    TapHandler {
                                        onTapped: {
                                            button.background = Application.themeSupport.theme.colorTheme.primaryBase;
                                            buttonLabel.textStyle.color = Color.White;
                                        }
                                    }                              
                                ]
                            }
                        }
                    }
                }
            ]
            
            onCreationCompleted: {
                artistsArray.clear();
                artists.forEach(function(a) {
                    artistsArray.append(a);
                });
            }
        }    
    }
}
