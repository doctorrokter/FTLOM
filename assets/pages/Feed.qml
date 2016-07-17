import bb.cascades 1.4
import '../sheets'
import '../components'
import '../style'

Page {
    id: root
    
    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
    actionBarVisibility: ChromeVisibility.Overlay
    
    property int page: 1
    property variant defFeed: [{"id":20,"type":1,"title":"hey!","link":"http://onliner.by","date":"2016-07-15T17:55:05.05+0000","time":1468605305000,"artist":{"id":18,"name":"Blessed By A Broken Heart","avatar":"https://i.scdn.co/image/ceca4d687f0282715390b8c269095001092d47bf"}},{"id":19,"type":1,"title":"another release","link":"http://onliner.by","date":"2016-07-15T08:30:26.26+0000","time":1468571426000,"artist":{"id":18,"name":"Blessed By A Broken Heart","avatar":"https://i.scdn.co/image/ceca4d687f0282715390b8c269095001092d47bf"}},{"id":18,"type":1,"title":"new post","link":"http://daftpunk.com","date":"2016-07-15T08:28:13.13+0000","time":1468571293000,"artist":{"id":10,"name":"Daft Punk","avatar":"https://i.scdn.co/image/e52651f03da8c9bf264f75cdabf39cf039606ddc"}},{"id":17,"type":1,"title":"Test test","link":"http://google.com","date":"2016-07-06T15:30:05.05+0000","time":1467819005000,"artist":{"id":5,"name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png"}},{"id":16,"type":1,"title":"Textetxtxtxt","link":"https://waveshaper1.bandcamp.com/","date":"2016-07-04T13:58:47.47+0000","time":1467640727000,"artist":{"id":5,"name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png"}},{"id":15,"type":1,"title":"Neuntöter Tour 2016 - Tickets2","link":"http://www.eventim.de/unzucht-tickets.html?affiliate\u003dEVE","date":"2016-06-30T09:03:59.59+0000","time":1467277439000,"artist":{"id":31,"name":"Unzucht","avatar":"https://i.scdn.co/image/387de76226b68f76e9904369436696c7251a4afd"}},{"id":13,"type":1,"title":"hey!","link":"https://waveshaper1.bandcamp.com/","date":"2016-06-29T13:53:13.13+0000","time":1467208393000,"artist":{"id":11,"name":"Waveshaper","avatar":"https://i.scdn.co/image/ecdf7cae8244bd0662580bcfd5a91794e79b35d6"}},{"id":12,"type":1,"title":"New release!","link":"http://daftpunk.com","date":"2016-06-29T12:55:19.19+0000","time":1467204919000,"artist":{"id":10,"name":"Daft Punk","avatar":"https://i.scdn.co/image/e52651f03da8c9bf264f75cdabf39cf039606ddc"}},{"id":7,"type":1,"title":"AMARANTHE to return to NORTH AMERICA this fall!","link":"http://amaranthe.se/newsarchives/#62","date":"2016-06-29T12:35:46.46+0000","time":1467203746000,"artist":{"id":5,"name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png"}},{"id":9,"type":1,"title":"W.A.S.P. Golgotha Out Now on Napalm Records","link":"http://www.waspnation.com/waspnation.htm","date":"2016-06-29T12:35:46.46+0000","time":1467203746000,"artist":{"id":6,"name":"W.A.S.P.","avatar":"http://img2-ak.lst.fm/i/u/300x300/af002763bd5348fba8d7ec17b9e029c2.png"}},{"id":3,"type":1,"title":"Maiden will play Constitution Square, Bucharest on Saturday July 30th.","link":"http://ironmaiden.com/news/article/maiden-announce-romania-show","date":"2016-06-29T12:35:45.45+0000","time":1467203745000,"artist":{"id":1,"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/cb92cc64a3394bc695106678cbe8a8a6.png"}},{"id":6,"type":1,"title":"Metallica decided to play a gig at Rasputin Music in Berkeley to celebrate Record Store Day.","link":"https://metallica.com/blog/news/426363/and-here-we-are","date":"2016-06-29T12:35:45.45+0000","time":1467203745000,"artist":{"id":3,"name":"Metallica","avatar":"http://img2-ak.lst.fm/i/u/300x300/3678be8979db483ebda032762e670777.png"}},{"id":2,"type":1,"title":"The single is housed in a uniquely artworked sleeve...","link":"http://ironmaiden.com/news/article/empire-of-the-clouds-available-this-weekend-at-record-store-day","date":"2016-06-26T12:35:45.45+0000","time":1466944545000,"artist":{"id":1,"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/cb92cc64a3394bc695106678cbe8a8a6.png"}},{"id":5,"type":1,"title":"We are honored that our hometown baseball team has invited us back yet again...","link":"https://metallica.com/blog/news/357991/fourth-annual-metallica-night-with-the-san-francis","date":"2016-06-26T12:35:45.45+0000","time":1466944545000,"artist":{"id":3,"name":"Metallica","avatar":"http://img2-ak.lst.fm/i/u/300x300/3678be8979db483ebda032762e670777.png"}},{"id":8,"type":1,"title":"North American MASSIVE ADDICTIVE tour this spring, full list of dates!","link":"http://amaranthe.se/newsarchives/#61","date":"2016-06-24T12:35:46.46+0000","time":1466771746000,"artist":{"id":5,"name":"Amaranthe","avatar":"http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png"}},{"id":4,"type":1,"title":"We are revved up and ready to UNLEASH the PRIEST one more time for our metal fans.","link":"http://www.judaspriest.com/Redeemer-of-souls/","date":"2016-06-24T12:35:45.45+0000","time":1466771745000,"artist":{"id":2,"name":"Judas Priest","avatar":"http://img2-ak.lst.fm/i/u/300x300/6d0e140b791d43d4b70244c80b4aca94.png"}},{"id":1,"type":1,"title":"Maiden will headline Wednesday July 20th at Paleo Festival, near Geneva, Switzerland.","link":"http://ironmaiden.com/news/article/maiden-play-paleo-fest-2016","date":"2016-06-24T12:35:44.44+0000","time":1466771744000,"artist":{"id":1,"name":"Iron Maiden","avatar":"http://img2-ak.lst.fm/i/u/cb92cc64a3394bc695106678cbe8a8a6.png"}}] 
        
    function feedLoaded(response, success) {
        if (success) {
            var feed = JSON.parse(response);
            if (feed.length !== 0) {
                ++page;
                feed.forEach(function(f) {
                    f.sortDate = Qt.formatDate(new Date(f.time), 'yyyy-MM-dd');
                    feedArray.insert(f);
                });
            }
        }
        loading.stop();
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
                },
                
                ListScrollStateHandler {
                    onScrollingChanged: {
                        if (atEnd) {
                            loadFeed(1);
                        }
                    }
                }
            ]
            
            onCreationCompleted: {
                _app.feed.complete.connect(root.feedLoaded);
                loadFeed(1);
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
