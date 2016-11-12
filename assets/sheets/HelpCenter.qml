import bb.cascades 1.4

Sheet {
    id: root
    
    Page {
        Container {
            Label {
                text: "Help Center"
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