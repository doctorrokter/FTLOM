import bb.cascades 1.4

Container {
    
    property string imageSource: 'http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png'
    
    minWidth: ui.du(12.0)
    minHeight: ui.du(12.0)
    maxWidth: ui.du(12.0)
    maxHeight: ui.du(12.0)
    WebView {
        minWidth: ui.du(12.0)
        minHeight: ui.du(12.0)
        maxWidth: ui.du(12.0)
        maxHeight: ui.du(12.0)
        html: 
        '<html><body><div style="overflow: hidden; border-radius: 50%; ">' + 
            '<img src="' +  imageSource + '" style="width: 125px; height: 125px; object-fit: cover;"/>' + 
            '</div></body></html>'
    }
}
