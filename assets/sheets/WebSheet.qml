import bb.cascades 1.4
import '../components'

Sheet {
    id: sheet
    
    property string link
    property string titleText
    
    function defaultHTML() {
        return '<html><head><title>Loading...</title></head><body>Loading...</body></html>';
    }
    
    Page {
        
        titleBar: FtlomTitleBar {
            titleText: sheet.titleText
        }
        
        Container {
            layout: DockLayout {}
            ScrollView {
                scrollRole: ScrollRole.Main
                Container {
                    WebView {
                        id: webView
                        url: link
                        html: defaultHTML()
                        onLoadingChanged: {
                            if (loadRequest.status === WebLoadStatus.Succeeded) {
                                activityIndicator.running = false;
                            }
                            if (loadRequest.status === WebLoadStatus.Started) {
                                activityIndicator.running = true;
                            }
                        }    
                    }
                }
            }
            
            ActivityIndicator {
                id: activityIndicator
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                running: false
            }
        }
        
        actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
        actionBarVisibility: ChromeVisibility.Compact
        
        actions: [
            ActionItem {
                title: qsTr('Back')
                imageSource: 'asset:///img/ic_previous.png'
                ActionBar.placement: ActionBarPlacement.Signature
                onTriggered: {
                    sheet.close();
                }
            }
        ]
    }
    
    onClosed: {
        webView.html = defaultHTML();
    }
}