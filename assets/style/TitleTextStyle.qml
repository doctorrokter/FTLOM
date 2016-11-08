import bb.cascades 1.4

TextStyleDefinition {
    base: SystemDefaults.TextStyles.TitleText
    fontSize: FontSize.Medium
    fontWeight: FontWeight.W600
    color: Color.White
    rules: [
        FontFaceRule {
            source: 'asset:///fonts/MuseoSansCyrl_2.otf'
            fontFamily: 'MuseoSans'
        }
    ]
    fontFamily: 'MuseoSans'
}
