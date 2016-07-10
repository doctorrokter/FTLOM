import bb.cascades 1.4

Container {
    
    property string imageSource: ''
    
    minWidth: ui.du(10.0)
    minHeight: ui.du(10.0)
    maxWidth: ui.du(10.0)
    maxHeight: ui.du(10.0)
    WebView {
        minWidth: ui.du(10.0)
        minHeight: ui.du(10.0)
        maxWidth: ui.du(10.0)
        maxHeight: ui.du(10.0)
        html: '<div style="overflow: hidden;"><img src="' +  imageSource + '" style="border-radius: 50%; object-fit: cover;" width="100%"/></div>'
    }
}
