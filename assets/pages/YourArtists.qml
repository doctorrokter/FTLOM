import bb.cascades 1.4
import '../components'
import '../style'

Page {
    id: root
//    actionBarAutoHideBehavior: ActionBarAutoHideBehavior.HideOnScroll
//    actionBarVisibility: ChromeVisibility.Overlay
    
    property int page: 1
//    property variant artists: [{"created_at":"Jun 29, 2016 12:35:44 PM","id":5,"images":[{"artist_id":5,"height":1000,"id":9,"url":"http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png","width":1000},{"artist_id":5,"height":500,"id":10,"url":"http://img2-ak.lst.fm/i/u/174s/2b7b44620dc040bda6b5305dd9bab5ed.png","width":500}],"name":"Amaranthe","the_index":4,"updated_at":"Jun 29, 2016 12:35:44 PM"}, {"created_at":"Jun 29, 2016 12:45:52 PM","id":9,"images":[{"artist_id":9,"height":1000,"id":17,"url":"https://i.scdn.co/image/a370c003642050eeaec0bc604409aa585ca92297","width":1000},{"artist_id":9,"height":640,"id":18,"url":"https://i.scdn.co/image/79e91d3cd4a7c15e0c219f4e6c941d282fe87a3d","width":640},{"artist_id":9,"height":200,"id":19,"url":"https://i.scdn.co/image/18141db33353a7b84c311b7068e29ea53fad2326","width":200},{"artist_id":9,"height":64,"id":20,"url":"https://i.scdn.co/image/214f45121374d7298e58355bd4ef8c6e9a4710b1","width":64}],"name":"Beyoncé","the_index":8,"updated_at":"Jun 29, 2016 12:45:52 PM"}, {"created_at":"Jun 29, 2016 12:51:37 PM","id":28,"images":[{"artist_id":28,"height":1333,"id":86,"url":"https://i.scdn.co/image/181409237e2bb85b981a9218af384606efc99f5b","width":1000},{"artist_id":28,"height":853,"id":87,"url":"https://i.scdn.co/image/e8ea8fe7b8cbe77b13a1b03f95388a1291bc722f","width":640},{"artist_id":28,"height":267,"id":88,"url":"https://i.scdn.co/image/f607f2c3fe242cd4a299aea1f8db0b97073e59ab","width":200},{"artist_id":28,"height":85,"id":89,"url":"https://i.scdn.co/image/ca72a97d0ba53b436dd0b1dcf9201710389d89b2","width":64}],"name":"Black Sabbath","the_index":27,"updated_at":"Jun 29, 2016 12:51:37 PM"}, {"created_at":"Jun 29, 2016 12:48:48 PM","id":18,"images":[{"artist_id":18,"height":640,"id":49,"url":"https://i.scdn.co/image/ceca4d687f0282715390b8c269095001092d47bf","width":640},{"artist_id":18,"height":300,"id":50,"url":"https://i.scdn.co/image/3f7a95a02267ec8c8b08e794dc523a44bbb31d8e","width":300},{"artist_id":18,"height":64,"id":51,"url":"https://i.scdn.co/image/0085bea296f67a11a0dfe2d758dfba06ff3af9ab","width":64}],"name":"Blessed By A Broken Heart","the_index":17,"updated_at":"Jun 29, 2016 12:48:48 PM"}, {"created_at":"Jun 29, 2016 12:46:39 PM","id":10,"images":[{"artist_id":10,"height":751,"id":21,"url":"https://i.scdn.co/image/e52651f03da8c9bf264f75cdabf39cf039606ddc","width":999},{"artist_id":10,"height":481,"id":22,"url":"https://i.scdn.co/image/b96d08f790bf2be50fee0aa490a7d06d40ba36bb","width":640},{"artist_id":10,"height":150,"id":23,"url":"https://i.scdn.co/image/5bafab32f2eb71e881de73ec4b088e106feb9e3f","width":200},{"artist_id":10,"height":48,"id":24,"url":"https://i.scdn.co/image/809d6b89f4bb3f0f42f86c953a8b312234a31f31","width":64}],"name":"Daft Punk","the_index":9,"updated_at":"Jun 29, 2016 12:46:39 PM"}, {"created_at":"Jun 29, 2016 12:48:31 PM","id":17,"images":[{"artist_id":17,"height":640,"id":46,"url":"https://i.scdn.co/image/0203038cd3dbc1ae5f2b4b6d19cc62351051a181","width":640},{"artist_id":17,"height":300,"id":47,"url":"https://i.scdn.co/image/a4d179a631b14f7d69cf4886f0121150434218fc","width":300},{"artist_id":17,"height":64,"id":48,"url":"https://i.scdn.co/image/79f96bf2ebc83d08f8d81005deefd19102699e30","width":64}],"name":"Dance With the Dead","the_index":16,"updated_at":"Jun 29, 2016 12:48:31 PM"}, {"created_at":"Jun 29, 2016 12:50:36 PM","id":24,"images":[{"artist_id":24,"height":264,"id":71,"url":"https://i.scdn.co/image/217a1f23a33a6126909e68b44af12bd8d5a420cc","width":566},{"artist_id":24,"height":93,"id":72,"url":"https://i.scdn.co/image/f07e2fff1df89f0a12514453ef80cfff827d7174","width":199},{"artist_id":24,"height":30,"id":73,"url":"https://i.scdn.co/image/a491ae2773e16bec8f0577c14c0b60efd67dbe8c","width":64}],"name":"Dead by April","the_index":23,"updated_at":"Jun 29, 2016 12:50:36 PM"}, {"created_at":"Jun 29, 2016 12:48:58 PM","id":19,"images":[{"artist_id":19,"height":746,"id":52,"url":"https://i.scdn.co/image/735d7d9df5d42cde20956ea8a7b4156c0e5a1cd4","width":1000},{"artist_id":19,"height":477,"id":53,"url":"https://i.scdn.co/image/0d2cee7ba436d636690a7eaf0b4e6e8ae0b3d25a","width":639},{"artist_id":19,"height":149,"id":54,"url":"https://i.scdn.co/image/a03cf3b367c38caaf2bc44c47d1de7576a4345f7","width":200},{"artist_id":19,"height":48,"id":55,"url":"https://i.scdn.co/image/cf2086f6515300bd76508614f418afe5adff3bc7","width":64}],"name":"Glamour Of The Kill","the_index":18,"updated_at":"Jun 29, 2016 12:48:58 PM"}, {"created_at":"Jun 29, 2016 12:47:00 PM","id":12,"images":[{"artist_id":12,"height":563,"id":28,"url":"https://i.scdn.co/image/6ad493ce30bf8e10e5a1de96125942155c605fa9","width":1000},{"artist_id":12,"height":360,"id":29,"url":"https://i.scdn.co/image/fd44fe09a3067ed73e1c82ad61bfb4641917f639","width":640},{"artist_id":12,"height":113,"id":30,"url":"https://i.scdn.co/image/23460c6bab11c13f0d819083cfc302e1aef60846","width":200},{"artist_id":12,"height":36,"id":31,"url":"https://i.scdn.co/image/1c1b9ec0a8d0a1a39f42a94b2cc2b1e509b3e706","width":64}],"name":"Gunship","the_index":11,"updated_at":"Jun 29, 2016 12:47:00 PM"}, {"created_at":"Jun 29, 2016 12:35:44 PM","id":1,"images":[{"artist_id":1,"height":1000,"id":1,"url":"http://img2-ak.lst.fm/i/u/cb92cc64a3394bc695106678cbe8a8a6.png","width":1000},{"artist_id":1,"height":500,"id":2,"url":"http://img2-ak.lst.fm/i/u/174s/cb92cc64a3394bc695106678cbe8a8a6.png","width":500}],"name":"Iron Maiden","the_index":0,"updated_at":"Jun 29, 2016 12:35:44 PM"}, {"created_at":"Jun 29, 2016 12:51:10 PM","id":26,"images":[{"artist_id":26,"height":1500,"id":78,"url":"https://i.scdn.co/image/080183498389e920416d15d00b34f4c5dc4bbd0b","width":1000},{"artist_id":26,"height":960,"id":79,"url":"https://i.scdn.co/image/ac83b1e22aa158ce554f27b26751354c8b525dee","width":640},{"artist_id":26,"height":300,"id":80,"url":"https://i.scdn.co/image/a5f86ee01b063916de2b636f44f1dfccd540a786","width":200},{"artist_id":26,"height":96,"id":81,"url":"https://i.scdn.co/image/577c11dbd9c88cf8872c938d2ce85d0a699a7c02","width":64}],"name":"Jimi Hendrix","the_index":25,"updated_at":"Jun 29, 2016 12:51:10 PM"}, {"created_at":"Jun 29, 2016 12:50:58 PM","id":25,"images":[{"artist_id":25,"height":750,"id":74,"url":"https://i.scdn.co/image/b700754c80eae547154b526aa239fc8970088576","width":1000},{"artist_id":25,"height":480,"id":75,"url":"https://i.scdn.co/image/35df10de3d78ba4b452f0142668294173aaab637","width":640},{"artist_id":25,"height":150,"id":76,"url":"https://i.scdn.co/image/8e44c36cc5eda417c6ccb9384746bc7b912559f6","width":200},{"artist_id":25,"height":48,"id":77,"url":"https://i.scdn.co/image/b70b955222d6269dba87cf9fc15e262f1d87e6cb","width":64}],"name":"Joe Satriani","the_index":24,"updated_at":"Jun 29, 2016 12:50:58 PM"}, {"created_at":"Jun 29, 2016 12:49:14 PM","id":21,"images":[{"artist_id":21,"height":889,"id":60,"url":"https://i.scdn.co/image/4af8d8cf691ba42953031f62b53f91a730bb0810","width":1000},{"artist_id":21,"height":569,"id":61,"url":"https://i.scdn.co/image/3a2678a412ae6f2fca85c4baf13d2e2c38d0c411","width":640},{"artist_id":21,"height":178,"id":62,"url":"https://i.scdn.co/image/49d310e2345b1016f4d5c229d1333ccd65abdcbd","width":200},{"artist_id":21,"height":57,"id":63,"url":"https://i.scdn.co/image/ac5ca527432b7a81d78c769b9e74055d866ceaf5","width":64}],"name":"Jon Bon Jovi","the_index":20,"updated_at":"Jun 29, 2016 12:49:14 PM"}, {"created_at":"Jun 29, 2016 12:35:44 PM","id":2,"images":[{"artist_id":2,"height":1000,"id":3,"url":"http://img2-ak.lst.fm/i/u/300x300/6d0e140b791d43d4b70244c80b4aca94.png","width":1000},{"artist_id":2,"height":500,"id":4,"url":"http://img2-ak.lst.fm/i/u/174s/6d0e140b791d43d4b70244c80b4aca94.png","width":500}],"name":"Judas Priest","the_index":1,"updated_at":"Jun 29, 2016 12:35:44 PM"}, {"created_at":"Jun 29, 2016 12:47:39 PM","id":16,"images":[{"artist_id":16,"height":640,"id":43,"url":"https://i.scdn.co/image/97c80bbe400245f6c035cc571e98a4f5f9e022dd","width":640},{"artist_id":16,"height":320,"id":44,"url":"https://i.scdn.co/image/11811b02b41c8f20b411461dea7ac8eec359b1c9","width":320},{"artist_id":16,"height":160,"id":45,"url":"https://i.scdn.co/image/99ae0502df1217d4c41bf31bd0fdcebd95954874","width":160}],"name":"KAYTRANADA","the_index":15,"updated_at":"Jun 29, 2016 12:47:39 PM"}, {"created_at":"Jun 29, 2016 12:35:44 PM","id":8,"images":[{"artist_id":8,"height":1000,"id":15,"url":"http://img2-ak.lst.fm/i/u/300x300/8918f8ec553a4cdfb3e22aa2993e57cb.png","width":1000},{"artist_id":8,"height":500,"id":16,"url":"http://img2-ak.lst.fm/i/u/174s/8918f8ec553a4cdfb3e22aa2993e57cb.png","width":500}],"name":"Leningrad","the_index":7,"updated_at":"Jun 29, 2016 12:35:44 PM"}, {"created_at":"Jun 29, 2016 12:35:44 PM","id":3,"images":[{"artist_id":3,"height":1000,"id":5,"url":"http://img2-ak.lst.fm/i/u/300x300/3678be8979db483ebda032762e670777.png","width":1000},{"artist_id":3,"height":500,"id":6,"url":"http://img2-ak.lst.fm/i/u/174s/3678be8979db483ebda032762e670777.png","width":500}],"name":"Metallica","the_index":2,"updated_at":"Jun 29, 2016 12:35:44 PM"}, {"created_at":"Jun 29, 2016 12:51:18 PM","id":27,"images":[{"artist_id":27,"height":881,"id":82,"url":"https://i.scdn.co/image/738650ce127e119788a7bca020fbd054b5aa57b5","width":1000},{"artist_id":27,"height":564,"id":83,"url":"https://i.scdn.co/image/8675fae7dd68a7f8ee97d65106c2f68c8026498b","width":640},{"artist_id":27,"height":176,"id":84,"url":"https://i.scdn.co/image/e8f489fb953e2d1cb00d1c18c903d6149cb1196d","width":200},{"artist_id":27,"height":56,"id":85,"url":"https://i.scdn.co/image/06e195eaaa853b397ccaa971edaa25554dba3c05","width":64}],"name":"Michael Jackson","the_index":26,"updated_at":"Jun 29, 2016 12:51:18 PM"}, {"created_at":"Jun 29, 2016 12:50:09 PM","id":23,"images":[{"artist_id":23,"height":666,"id":67,"url":"https://i.scdn.co/image/e9be7ccb5b81147793c2ceb846c640cdb06dbdd7","width":1000},{"artist_id":23,"height":426,"id":68,"url":"https://i.scdn.co/image/b5dc01110a6b85262bb70817d0ada32e2e7e3cbc","width":640},{"artist_id":23,"height":133,"id":69,"url":"https://i.scdn.co/image/a4aa17a214ad22a31bada05401e893bef92719df","width":200},{"artist_id":23,"height":43,"id":70,"url":"https://i.scdn.co/image/1780d3dcf80bfefdec03f333ef0e9ffca5389baf","width":64}],"name":"Moby","the_index":22,"updated_at":"Jun 29, 2016 12:50:09 PM"}, {"created_at":"Jun 29, 2016 12:47:23 PM","id":15,"images":[{"artist_id":15,"height":1535,"id":39,"url":"https://i.scdn.co/image/6a9c1687529e0ae6935ae7b4c12c84c625827682","width":1000},{"artist_id":15,"height":982,"id":40,"url":"https://i.scdn.co/image/9ba6b40cae2f3545efa6011844703592d84b8db9","width":640},{"artist_id":15,"height":307,"id":41,"url":"https://i.scdn.co/image/1ecaa541f97575936b01d8f878c264f7c3f71b8d","width":200},{"artist_id":15,"height":98,"id":42,"url":"https://i.scdn.co/image/7a0c7fdb5552dc095d39b0003b5e6b6a3b969281","width":64}],"name":"Motörhead","the_index":14,"updated_at":"Jun 29, 2016 12:47:23 PM"}]
    property variant artists: []
    property int listPositionY: 0
    property bool subHeaderMinimized: false
    
    onSubHeaderMinimizedChanged: {
        subHeader.translationY = subHeaderMinimized ? ui.px(-30) : ui.px(30);
    }
    
    function artistsLoaded(response, success) {
        if (success) {
            var receivedArtists = JSON.parse(response);
            if (receivedArtists.length !== 0) {
                if (receivedArtists.length === 20) {
                    ++page;
                }
                var newArtists = artists.slice();
                receivedArtists.forEach(function(a) {
                    var isExists = newArtists.some(function(na) {
                        return na.id === a.id;
                    });
                    if (!isExists) {
                        newArtists.push(a);
                        artistsArray.append(a);
                    }
                });
                artists = newArtists;
            }
        }
        loading.stop();
    }
    
    function followed(response, success) {
        console.debug("FOLLOWED YOUR ARTISTS: ", response);
        if (success) {
            var artist = JSON.parse(response);
            artistsArray.append(artist);
        }
    }
    
    function unfollowed(response, success) {
        console.debug("UNFOLLOWED YOUR ARTISTS: ", response);
        if (success) {
            var artist = JSON.parse(response);
            for (var i = 0; i < artistsArray.size(); i++) {
                var a = artistsArray.value(i);
                if (a.id === artist.id) {
                    artistsArray.removeAt(i);
                }
            }
        }
    }
    
    function loadArtists() {
        if (!loading.running) {
            loading.start();
            _app.artists.get(page);
        }
    }
    
    titleBar: TitleBarExt {
        titleText: 'YOUR ARTISTS'
        searchEnabled: true
    }
    
    Container {
        layout: StackLayout {}
        Container {
            id: subHeader
            SegmentedControl {
                bottomMargin: ui.du(0)
                horizontalAlignment: HorizontalAlignment.Fill
                options: [
                    Option {
                        text: qsTr('TRACKING')
                        value: 'track'
                        selected: true
                    },
                    
                    Option {
                        text: qsTr('DEMANDING')
                        value: 'demand'
                    }
                ]
            }
            ListItemHeader {
                header: artists.length + ' ' + qsTr('Artists')
            }
        }
        ListView {
            id: artistsList
            dataModel: ArrayDataModel {
                id: artistsArray
            }
            
            scrollIndicatorMode: ScrollIndicatorMode.ProportionalBar
            scrollRole: ScrollRole.Main
            
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
                                    imageSource: ListItemData.images[0].url
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
                                        maxWidth: ui.du(35)
                                        Label {
                                            text: ListItemData.name
                                            multiline: true
                                            autoSize.maxLineCount: 10
                                            textStyle {
                                                base: bodyItemText.style
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Container {
                                horizontalAlignment: HorizontalAlignment.Right
                                verticalAlignment: VerticalAlignment.Center
                                maxWidth: ui.du(21.0)
                                minWidth: ui.du(21.0)
                                margin.rightOffset: ui.du(3.0)
                                
                                Button {
                                    text: qsTr('Untrack')
                                    onClicked: {
                                        _app.artists.unfollow(ListItemData.id);
                                    }
                                }
                            }
                        }
                    }
                }
            ]
                        
            attachedObjects: [
                ListScrollStateHandler {
                    onScrollingChanged: {
                        if (atEnd) {
                            loadArtists();
                        }
                    }
                }                
            ]
            
            onCreationCompleted: {
                _app.artists.trackedArtistsLoaded.connect(root.artistsLoaded);
                _app.artists.unfollowed.connect(root.unfollowed);
                _app.artists.followed.connect(root.followed);
                //                loadArtists();
//                artists.forEach(function(a) {
//                        artistsArray.append(a);
//                });
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
