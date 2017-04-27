//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

/// Default Product font theme.
import UIKit
import Marker

internal struct ProductFontTheme: FontTheme {

    // MARK: - Internal properties.

    /// Fonts to use when defining text styles.
    let primaryFont: Font = PrimaryFont()

    /// Color theme to use when defining text styles.
    let colorTheme: ColorTheme = AppTheme.colorTheme

    // MARK: - Protocol conformance

    // MARK: FontTheme

    var displayTextStyle: TextStyle {

        let fontSize: CGFloat = 36
        let font: UIFont = primaryFont.romanExtrablackFont(ofSize: fontSize)
        let textColor = colorTheme.emphasisPrimary

        return TextStyle(font: font,
                         textColor: textColor,
                         lineBreakMode: .byTruncatingTail)
    }

    var displayLargeTextStyle: TextStyle {

        var textStyle = displayTextStyle
        let fontSize: CGFloat = 48
        textStyle.font = primaryFont.romanExtrablackFont(ofSize: fontSize)

        return textStyle
    }

    var displaySmallTextStyle: TextStyle {

        var textStyle = displayTextStyle
        let fontSize: CGFloat = 32
        textStyle.font = primaryFont.romanExtrablackFont(ofSize: fontSize)

        return textStyle

    }
    var headline1TextStyle: TextStyle {

        let fontSize: CGFloat = 24
        let font: UIFont = primaryFont.romanBlackFont(ofSize: fontSize)
        let textColor = colorTheme.primary

        return TextStyle(font: font,
                         textColor: textColor,
                         lineBreakMode: .byTruncatingTail)
    }

    var headline2TextStyle: TextStyle {

        var textStyle = headline1TextStyle
        let fontSize: CGFloat = 20
        textStyle.font = primaryFont.romanBlackFont(ofSize: fontSize)

        return textStyle

    }

    var headline3TextStyle: TextStyle {

        var textStyle = headline2TextStyle
        let fontSize: CGFloat = 18
        textStyle.font = primaryFont.romanHeavyFont(ofSize: fontSize)

        return textStyle

    }

    var headline4TextStyle: TextStyle {

        var textStyle = headline3TextStyle
        let fontSize: CGFloat = 16
        textStyle.font = primaryFont.romanBoldFont(ofSize: fontSize)

        return textStyle

    }

    var headline5TextStyle: TextStyle {

        var textStyle = headline4TextStyle
        let fontSize: CGFloat = 16
        textStyle.font = primaryFont.romanRegularFont(ofSize: fontSize)

        return textStyle

    }

    var headline6TextStyle: TextStyle {

        var textStyle = headline4TextStyle
        let fontSize: CGFloat = 14
        textStyle.font = primaryFont.romanRegularFont(ofSize: fontSize)

        return textStyle

    }

    var subHeadlineTextStyle: TextStyle {

        let fontSize: CGFloat = 12
        let font: UIFont = primaryFont.romanHeavyFont(ofSize: fontSize)
        let textColor = colorTheme.tertiary

        return TextStyle(font: font,
                         textColor: textColor,
                         lineBreakMode: .byTruncatingTail,
                         textTransform: .uppercased)

    }

    var subHeadlineLargeTextStyle: TextStyle {

        var textStyle = subHeadlineTextStyle
        let fontSize: CGFloat = 14
        textStyle.font = primaryFont.romanHeavyFont(ofSize: fontSize)

        return textStyle

    }

    var subHeadlineSmallTextStyle: TextStyle {

        var textStyle = subHeadlineTextStyle
        let fontSize: CGFloat = 10
        textStyle.font = primaryFont.romanHeavyFont(ofSize: fontSize)

        return textStyle

    }

    var bodyTextStyle: TextStyle {

        let fontSize: CGFloat = 14
        let font: UIFont = primaryFont.romanRegularFont(ofSize: fontSize)
        let emFont: UIFont = primaryFont.romanMediumFont(ofSize: fontSize)
        let strongFont: UIFont = primaryFont.romanBoldFont(ofSize: fontSize)
        let textColor = colorTheme.primary

        return TextStyle(font: font,
                         emFont: emFont,
                         strongFont: strongFont,
                         textColor: textColor,
                         lineBreakMode: .byTruncatingTail)

    }

    var bodyLargeTextStyle: TextStyle {

        var textStyle = bodyTextStyle
        let fontSize: CGFloat = 16

        textStyle.font = textStyle.font.withSize(fontSize)
        textStyle.emFont = textStyle.emFont.withSize(fontSize)
        textStyle.strongFont = textStyle.strongFont.withSize(fontSize)

        return textStyle

    }

    var bodySmallTextStyle: TextStyle {

        var textStyle = bodyTextStyle
        let fontSize: CGFloat = 12

        textStyle.font = textStyle.font.withSize(fontSize)
        textStyle.emFont = textStyle.emFont.withSize(fontSize)
        textStyle.strongFont = textStyle.strongFont.withSize(fontSize)

        return textStyle

    }

    var captionTextStyle: TextStyle {

        let fontSize: CGFloat = 14
        let font: UIFont = primaryFont.romanMediumFont(ofSize: fontSize)
        let strongFont: UIFont = primaryFont.romanBoldFont(ofSize: fontSize)
        let textColor = colorTheme.primary

        return TextStyle(font: font,
                         strongFont: strongFont,
                         textColor: textColor)
    }

    var captionLargeTextStyle: TextStyle {

        var textStyle = captionTextStyle
        let fontSize: CGFloat = 12
        let lineHeight: CGFloat = 16
        let lineSpacing: CGFloat = lineHeight - (fontSize * textStyle.font.lineHeight)

        textStyle.font = textStyle.font.withSize(fontSize)
        textStyle.emFont = textStyle.emFont.withSize(fontSize)
        textStyle.strongFont = textStyle.strongFont.withSize(fontSize)
        textStyle.lineSpacing = lineSpacing

        return textStyle
    }

    var captionSmallTextStyle: TextStyle {

        return captionTextStyle

    }

    var buttonTitleTextStyle: TextStyle {

        let fontSize: CGFloat = 17
        let font: UIFont = primaryFont.romanMediumFont(ofSize: fontSize)
        let strongFont: UIFont = primaryFont.romanBoldFont(ofSize: fontSize)
        let charactorSpacing: CGFloat = 1
        let textColor = colorTheme.primary

        return TextStyle(font: font,
                         strongFont: strongFont,
                         textColor: textColor,
                         characterSpacing: charactorSpacing,
                         textTransform: .uppercased)

    }

    var buttonTitleLargeTextStyle: TextStyle {

        return buttonTitleTextStyle

    }

    var buttonTitleSmallTextStyle: TextStyle {

        return buttonTitleTextStyle

    }

    var buttonFloatingTitleTextStyle: TextStyle {

        return buttonTitleTextStyle

    }

    var buttonFloatingTitleLargeTextStyle: TextStyle {

        return buttonFloatingTitleTextStyle

    }

    var buttonFloatingTitleSmallTextStyle: TextStyle {

        return buttonFloatingTitleTextStyle

    }

    var topItemPromptTextStyle: TextStyle {

        let fontSize: CGFloat = 12
        let font: UIFont = primaryFont.romanMediumFont(ofSize: fontSize)
        let textColor = colorTheme.primary
        let lineHeight: CGFloat = 16
        let lineSpacing: CGFloat = lineHeight - (fontSize * font.lineHeight)

        return TextStyle(font: font,
                         textColor: textColor,
                         lineSpacing: lineSpacing)
    }

    var topItemTitleTextStyle: TextStyle {

        let fontSize: CGFloat = 17
        let font: UIFont = primaryFont.romanMediumFont(ofSize: fontSize)
        let textColor = colorTheme.primary

        return TextStyle(font: font,
                         textColor: textColor)
    }

    var topItemButtonItemTextStyle: TextStyle {
        return bodyTextStyle
    }

    var tabBarItemTitleTextStyle: TextStyle {
        return bodyTextStyle
    }

    var tabBarItemBadgeTextStyle: TextStyle {
        return bodyTextStyle
    }

    var segmentedTitleTextStyle: TextStyle {

        let fontSize: CGFloat = 10
        let font: UIFont = primaryFont.romanRegularFont(ofSize: fontSize)
        let textColor = colorTheme.emphasisPrimary

        return TextStyle(font: font,
                         textColor: textColor)
    }

    var textFieldTitleTextStyle: TextStyle {
        return bodyTextStyle
    }

    var textFieldTitleLargeTextStyle: TextStyle {
        return bodyTextStyle
    }

    var textFieldTitleSmallTextStyle: TextStyle {
        return bodyTextStyle
    }

}
