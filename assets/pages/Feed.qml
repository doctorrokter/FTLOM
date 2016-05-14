import bb.cascades 1.4
import '../sheets'
import '../components'
import '../style'

Page {
    id: root
    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
    
    property variant feed: [
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-03T18:25:24.880+0000", "time":1462299924880, "artist":{"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-03T18:25:24.880+0000", "time":1462299924880,"artist":{"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-03T18:25:24.880+0000", "time":1462299924880,"artist":{"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-04T18:25:24.880+0000", "time":1462386324880,"artist":{"name":"Judas Priest","avatar":"http://img2-ak.lst.fm/i/u/174s/6d0e140b791d43d4b70244c80b4aca94.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-04T18:25:24.880+0000", "time":1462386324880,"artist":{"name":"Judas Priest","avatar":"http://img2-ak.lst.fm/i/u/174s/6d0e140b791d43d4b70244c80b4aca94.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-04T18:25:24.880+0000", "time":1462386324880,"artist":{"name":"Judas Priest","avatar":"http://img2-ak.lst.fm/i/u/174s/6d0e140b791d43d4b70244c80b4aca94.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-02T18:25:24.880+0000", "time":1462213524880,"artist":{"name":"Metallica","avatar":"http://img2-ak.lst.fm/i/u/174s/3678be8979db483ebda032762e670777.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-02T18:25:24.880+0000", "time":1462213524880,"artist":{"name":"Red","avatar":"http://img2-ak.lst.fm/i/u/174s/6753dbffb72947a2c75115dd0635e6c2.png"}},
        {"type":1,"title":"Lorem ipsum...","link":"http://onliner.by","date":"2016-05-02T18:25:24.880+0000", "time":1462213524880,"artist":{"name":"Red","avatar":"http://img2-ak.lst.fm/i/u/174s/6753dbffb72947a2c75115dd0635e6c2.png"}},
        {"type":1,"title":"AMARANTHE to return to NORTH AMERICA this fall!","link":"http://amaranthe.se/newsarchives/#62","date":"2016-05-05T18:25:24.880+0000", "time":1462475049514,"artist":{"name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/174s/2b7b44620dc040bda6b5305dd9bab5ed.png"}},
        {"type":1,"title":"We intend to keep the memory of Lemmy and the band alive and well for many years to come.","link":"http://imotorhead.com","date":"2016-05-05T18:25:24.880+0000", "time":1462475049514,"artist":{"name":"Motorhead","avatar":"http://img2-ak.lst.fm/i/u/174s/66b03a4eeba745b79e8fb68c71dc260a.png"}},
        {"type":1,"title":"Edge has become the first rock star to play in the Sistine Chapel in Rome!","link":"http://www.u2.com/news/title/vatican-adventure/news/","date":"2016-05-05T18:25:24.880+0000", "time":1462475049514,"artist":{"name":"U2","avatar":"http://img2-ak.lst.fm/i/u/174s/7981dc23ab814bb3966e75bf3a2a76f2.png"}},
        {"type":1,"title":"Sting Surprises Fans in New York as he guests with Pearl Jam and The Last Bandoleros...","link":"http://www.sting.com/news/title/sting-surprises-at-rockwood-music-hall-with-the-last-bandoleros/","date":"2016-05-05T18:25:24.880+0000", "time":1462475049514,"artist":{"name":"Sting","avatar":"http://img2-ak.lst.fm/i/u/174s/e3a9f244a34249898090b0c1106d968a.png"}}
    ]
    
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
                            console.debug('end');
//                            feed.forEach(function(f) {
//                                feedArray.insert(f);
//                            });
                        }
                    }
                }
            ]
            
            onCreationCompleted: {
                feedArray.clear();
                feed.forEach(function(f) {
                    feedArray.insert(f);
                });
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
    }
}
