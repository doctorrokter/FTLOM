import bb.cascades 1.4

TextStyleDefinition {
    base: SystemDefaults.TextStyles.TitleText
    fontSize: FontSize.Large
    fontWeight: FontWeight.W800
    color: Color.White
    rules: [
        FontFaceRule {
            source: 'asset:///fonts/MuseoSansCyrl_2.otf'
            fontFamily: 'MuseoSans'
        }
    ]
    fontFamily: 'MuseoSans'
}
