import bb.cascades 1.4
import '../sheets'
import '../components'
import '../style'

Page {
    id: root
    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
    
    property int page: 1
    
    function feedLoaded(response, success) {
        loading.stop();
        if (success) {
            var feed = JSON.parse(response);
            if (feed.length !== 0) {
                ++page;
                feed.forEach(function(f) {
                        feedArray.insert(f);
                });
            }
        }
    }
    
    function loadFeed(userId) {
        if (!loading.running) {
            loading.start();
            _app.feed.get(userId, page);
        }
    }
    
    titleBar: FtlomTitleBar {
        titleText: 'FEED'
    }
    
    Container {
        ListView {
            id: feedList
            dataModel: GroupDataModel {
                id: feedArray
                sortingKeys: ['time']
                sortedAscending: false
                grouping: ItemGrouping.ByFullValue
                
            }
            
            scrollIndicatorMode: ScrollIndicatorMode.ProportionalBar
            scrollRole: ScrollRole.Main
            layout: StackListLayout {
                headerMode: ListHeaderMode.Sticky
            }
            
            function itemType(data, indexPath) {
                if (indexPath.length === 1) {
                    return 'header';
                } else {
                    return 'item';
                }
            }
            
            listItemComponents: [
                ListItemComponent {
                    type: 'header'
                    ListItemHeader {
                        header: Qt.formatDate(new Date(ListItemData), 'dddd, d MMM yyyy')
                    }
                },
                ListItemComponent {
                    type: 'item'
                    ListItemFeed {
                        feed: ListItemData
                    }
                }
            ]
            
            attachedObjects: [
                WebSheet {
                    id: webSheet
                },
                
                ListScrollStateHandler {
                    onScrollingChanged: {
                        if (atEnd) {
                            console.debug(atEnd);
                            loadFeed(1);
                        }
                    }
                }
            ]
            
            onCreationCompleted: {
                _app.feed.complete.connect(root.feedLoaded);
                loadFeed(1);
            }
                        
            onTriggered: {
                var data = feedArray.data(indexPath);
                if (data.type === 1) {
                    webSheet.link = data.link;
                    webSheet.titleText = data.artist.name
                    webSheet.open();
                }
            }
        }
        ActivityIndicator {
            id: loading
            horizontalAlignment: HorizontalAlignment.Center
            enabled: true
        }
    }
}
