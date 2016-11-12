import bb.cascades 1.4

Container {
    id: root
    
    property string imageSource: ''
    
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
        url: "local:///assets/html/avatar.html"            
        onLoadingChanged: {
            webView.evaluateJavaScript(
                'var img = document.getElementById("image");' +
                'img.src = "' + root.imageSource + '";'
            );
            
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
