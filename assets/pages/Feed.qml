import bb.cascades 1.4
import '../sheets'
import '../components'
import '../style'

Page {
    id: root
    
//    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
//    actionBarVisibility: ChromeVisibility.Overlay

    property variant defFeed: [{"date":"2016-07-29T05:41:28.28+0000","artist":{"created_at":"Jun 29, 2016 12:35:44 PM","followers":2,"id":1,"images":[{"artist_id":1,"height":1000,"id":1,"url":"http://img2-ak.lst.fm/i/u/cb92cc64a3394bc695106678cbe8a8a6.png","width":1000},{"artist_id":1,"height":500,"id":2,"url":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png","width":500}],"name":"Iron Maiden","the_index":0,"updated_at":"Jun 29, 2016 12:35:44 PM"},"link":"http://ironmaiden.com","id":28,"time":1469770888000,"type":1,"title":"hey ho!"},{"date":"2016-07-29T05:41:08.08+0000","artist":{"created_at":"Jun 29, 2016 12:47:00 PM","followers":1,"id":12,"images":[{"artist_id":12,"height":563,"id":28,"url":"https://i.scdn.co/image/6ad493ce30bf8e10e5a1de96125942155c605fa9","width":1000},{"artist_id":12,"height":360,"id":29,"url":"https://i.scdn.co/image/fd44fe09a3067ed73e1c82ad61bfb4641917f639","width":640},{"artist_id":12,"height":113,"id":30,"url":"https://i.scdn.co/image/23460c6bab11c13f0d819083cfc302e1aef60846","width":200},{"artist_id":12,"height":36,"id":31,"url":"https://i.scdn.co/image/1c1b9ec0a8d0a1a39f42a94b2cc2b1e509b3e706","width":64}],"name":"Gunship","the_index":11,"tracked_from":"Jul 29, 2016 5:21:17 AM","updated_at":"Jul 29, 2016 5:21:17 AM"},"link":"http://gunshipmusic.bandcamp.com/releases","id":27,"time":1469770868000,"type":1,"title":"hey ho!"}]    
        
    function feedLoaded(response, success) {
        if (success) {
            var feed = JSON.parse(response);
            if (feed.length !== 0) {
                feed.forEach(function(f) {
                    f.sortDate = Qt.formatDate(new Date(f.time), 'yyyy-MM-dd');
                    feedArray.insert(f);
                });
            }
        }
        loading.stop();
    }
    
    function loadFeed() {
        if (!loading.running) {
            loading.start();
            _app.feed.get();
        }
    }
    
    titleBar: FtlomTitleBar {
        titleText: 'FEED'
    }
    
    Container {
        layout: DockLayout {}
        ListView {
            id: feedList
            dataModel: GroupDataModel {
                id: feedArray
                sortingKeys: ['sortDate', 'time']
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
                        header: {
                            var dateParts = (ListItemData + '').split('-');
                            return Qt.formatDate(new Date(dateParts[0], dateParts[1] - 1, dateParts[2]), 'dddd, d MMM yyyy');
                        }
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
                }
            ]
            
            onCreationCompleted: {
                _app.feed.complete.connect(root.feedLoaded);
//                defFeed.forEach(function(f) {
//                    f.sortDate = Qt.formatDate(new Date(f.time), 'yyyy-MM-dd');
//                    feedArray.insert(f);
//                });
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
            verticalAlignment: VerticalAlignment.Center
            enabled: true
        }
    }
}
