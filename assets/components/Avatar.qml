import bb.cascades 1.4

Container {
    
    property string imageSource: 'http://img2-ak.lst.fm/i/u/300x300/2b7b44620dc040bda6b5305dd9bab5ed.png'
    
    minWidth: ui.du(12.0)
    minHeight: ui.du(12.0)
    maxWidth: ui.du(12.0)
    maxHeight: ui.du(12.0)
    WebView {
        id: webView
        minWidth: ui.du(12.0)
        minHeight: ui.du(12.0)
        maxWidth: ui.du(12.0)
        maxHeight: ui.du(12.0)
        scaleX: 0
        scaleY: 0
        html: 
        '<html><body><div style="width: 125px; height: 125px; overflow: hidden; border-radius: 50%; ">' + 
            '<img src="' +  imageSource + '" style="width: 125px; height: 125px; object-fit: cover;"/>' + 
            '</div></body></html>'
            
        onLoadingChanged: {
            if (loadRequest.status === WebLoadStatus.Succeeded) {
                scaleWebView.play();
            }
        }
    }
    
    animations: [
        ScaleTransition {
            id: scaleWebView
            duration: 500
            fromX: 0
            fromY: 0
            toX: 1.0
            toY: 1.0
            easingCurve: StockCurve.QuadraticIn
            target: webView
        }
    ]
}
