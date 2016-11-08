import bb.cascades 1.4

Container {
    id: root
    
    property list<Option> options
    property string header
    
    SegmentedControl {
        bottomMargin: ui.du(0)
        horizontalAlignment: HorizontalAlignment.Fill
        options: root.options
    }
    ListItemHeader {
        header: root.header
    }
}
