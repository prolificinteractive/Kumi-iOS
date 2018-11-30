//
//  FontTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

/// Text styles used throughout the app.
public final class FontTheme {

    /// Tab Bar Badge Text Style.
    public var tabBarBadgeTextStyle: TextStyleSet!

    /// Tab Bar Item Inactive Text Style.
    public var tabBarItemInactiveTextStyle: TextStyleSet!

    /// Tab Bar Item Text Style.
    public var tabBarItemTextStyle: TextStyleSet!

    /// Snackbar Text Text Style.
    public var snackbarTextTextStyle: TextStyleSet!

    /// Snackbar Action Button Title Text Style.
    public var snackbarActionButtonTitleTextStyle: TextStyleSet!

    /// Segmented Title Text Style.
    public var segmentedTitleTextStyle: TextStyleSet!

    /// Menu Text Style.
    public var menuTextStyle: TextStyleSet!

    /// Chip Text Style.
    public var chipTextStyle: TextStyleSet!

    /// Tooltips Text Style.
    public var tooltipsTextStyle: TextStyleSet!

    /// Top Item Subtitle Text Style.
    public var topItemSubtitleTextStyle: TextStyleSet!

    /// Top Item Button Title Text Style.
    public var topItemButtonTitleTextStyle: TextStyleSet!

    /// Top Item Title Small Text Style.
    public var topItemTitleSmallTextStyle: TextStyleSet!

    /// Top Item Title Large Text Style.
    public var topItemTitleLargeTextStyle: TextStyleSet!

    /// Top Item Title Normal Text Style.
    public var topItemTitleNormalTextStyle: TextStyleSet!

    /// Text Field Hint Small Text Style.
    public var textFieldHintSmallTextStyle: TextStyleSet!

    /// Text Field Hint Large Text Style.
    public var textFieldHintLargeTextStyle: TextStyleSet!

    /// Text Field Hint Normal Text Style.
    public var textFieldHintNormalTextStyle: TextStyleSet!

    /// Text Field Label Small Text Style.
    public var textFieldLabelSmallTextStyle: TextStyleSet!

    /// Text Field Label Large Text Style.
    public var textFieldLabelLargeTextStyle: TextStyleSet!

    /// Text Field Label Normal Text Style.
    public var textFieldLabelNormalTextStyle: TextStyleSet!

    /// Text Field Input Small Text Style.
    public var textFieldInputSmallTextStyle: TextStyleSet!

    /// Text Field Input Large Text Style.
    public var textFieldInputLargeTextStyle: TextStyleSet!

    /// Text Field Input Normal Text Style.
    public var textFieldInputNormalTextStyle: TextStyleSet!

    /// Button Title Small Text Style.
    public var buttonTitleSmallTextStyle: TextStyleSet!

    /// Button Title Large Text Style.
    public var buttonTitleLargeTextStyle: TextStyleSet!

    /// Button Title Normal Text Style.
    public var buttonTitleNormalTextStyle: TextStyleSet!

    /// Button Flat Title Small Text Style.
    public var buttonFlatTitleSmallTextStyle: TextStyleSet!

    /// Button Flat Title Large Text Style.
    public var buttonFlatTitleLargeTextStyle: TextStyleSet!

    /// Button Flat Title Normal Text Style.
    public var buttonFlatTitleNormalTextStyle: TextStyleSet!

    /// Caption Small Text Style.
    public var captionSmallTextStyle: TextStyleSet!

    /// Caption Large Text Style.
    public var captionLargeTextStyle: TextStyleSet!

    /// Caption Normal Text Style.
    public var captionNormalTextStyle: TextStyleSet!
//
    /// Body Small Text Style.
    public var bodySmallTextStyle: TextStyleSet!

    /// Body Large Text Style.
    public var bodyLargeTextStyle: TextStyleSet!

    /// Body Normal Text Style.
    public var bodyNormalTextStyle: TextStyleSet

    /// Sub Headline Small Text Style.
    public var subHeadlineSmallTextStyle: TextStyleSet!

    /// Sub Headline Large Text Style.
    public var subHeadlineLargeTextStyle: TextStyleSet!

    /// Sub Headline Normal Text Style.
    public var subHeadlineNormalTextStyle: TextStyleSet!

    /// Headline6 Text Style.
    public var headline6TextStyle: TextStyleSet!

    /// Headline5 Text Style.
    public var headline5TextStyle: TextStyleSet!

    /// Headline4 Text Style.
    public var headline4TextStyle: TextStyleSet!

    /// Headline3 Text Style.
    public var headline3TextStyle: TextStyleSet!

    /// Headline2 Text Style.
    public var headline2TextStyle: TextStyleSet!

    /// Headline1 Text Style.
    public var headline1TextStyle: TextStyleSet!

    /// Display Small Text Style.
    public var displaySmallTextStyle: TextStyleSet!

    /// Display Large Text Style.
    public var displayLargeTextStyle: TextStyleSet!

    /// Display Normal Text Style.
    public var displayNormalTextStyle: TextStyleSet!

    public init(json: JSON) {
        
        let bodyNormalTextStyle = TextStyleSet(json: json["bodyNormal"].kumiValue)

        self.bodyNormalTextStyle = bodyNormalTextStyle

        bodySmallTextStyle = TextStyleSet(json: json["bodySmall"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        bodyLargeTextStyle = TextStyleSet(json: json["bodyLarge"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)

        headline1TextStyle = TextStyleSet(json: json["headline1"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        headline2TextStyle = TextStyleSet(json: json["headline2"].kumiValue, defaultStyle: headline1TextStyle.regular)
//        headline3TextStyle = TextStyleSet(json: json["headline3"].kumiValue, defaultStyle: headline2TextStyle.regular)
//        headline4TextStyle = TextStyleSet(json: json["headline4"].kumiValue, defaultStyle: headline3TextStyle.regular)
//        headline5TextStyle = TextStyleSet(json: json["headline5"].kumiValue, defaultStyle: headline4TextStyle.regular)
//        headline6TextStyle = TextStyleSet(json: json["headline6"].kumiValue, defaultStyle: headline5TextStyle.regular)
//
//        displayNormalTextStyle = TextStyleSet(json: json["displayNormal"].kumiValue, defaultStyle: headline1TextStyle.regular)
//        displaySmallTextStyle = TextStyleSet(json: json["displaySmall"].kumiValue, defaultStyle: displayNormalTextStyle.regular)
//        displayLargeTextStyle = TextStyleSet(json: json["displayLarge"].kumiValue, defaultStyle: displayNormalTextStyle.regular)
//
//        captionNormalTextStyle = TextStyleSet(json: json["captionNormal"].kumiValue, defaultStyle: headline1TextStyle.regular)
//        captionSmallTextStyle = TextStyleSet(json: json["captionSmall"].kumiValue, defaultStyle: captionNormalTextStyle.regular)
//        captionLargeTextStyle = TextStyleSet(json: json["captionLarge"].kumiValue, defaultStyle: captionNormalTextStyle.regular)
//
//        tabBarItemTextStyle = TextStyleSet(json: json["tabBarItem"].kumiValue, defaultStyle: captionNormalTextStyle.regular)
//        tabBarItemInactiveTextStyle = TextStyleSet(json: json["tabBarItemInactive"].kumiValue, defaultStyle: tabBarItemTextStyle.regular)
//        tabBarBadgeTextStyle = TextStyleSet(json: json["tabBarBadge"].kumiValue, defaultStyle: tabBarItemTextStyle.regular)
//
//        topItemSubtitleTextStyle = TextStyleSet(json: json["topItemSubtitle"].kumiValue, defaultStyle: captionNormalTextStyle.regular)
//
//        subHeadlineNormalTextStyle = TextStyleSet(json: json["subHeadlineNormal"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        subHeadlineSmallTextStyle = TextStyleSet(json: json["subHeadlineSmall"].kumiValue, defaultStyle: subHeadlineNormalTextStyle.regular)
//        subHeadlineLargeTextStyle = TextStyleSet(json: json["subHeadlineLarge"].kumiValue, defaultStyle: subHeadlineNormalTextStyle.regular)
//
//
//        buttonTitleNormalTextStyle = TextStyleSet(json: json["buttonTitleNormal"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        buttonTitleSmallTextStyle = TextStyleSet(json: json["buttonTitleSmall"].kumiValue, defaultStyle: buttonTitleNormalTextStyle.regular)
//        buttonTitleLargeTextStyle = TextStyleSet(json: json["buttonTitleLarge"].kumiValue, defaultStyle: buttonTitleNormalTextStyle.regular)
//
//        buttonFlatTitleNormalTextStyle = TextStyleSet(json: json["buttonFlatTitleNormal"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        buttonFlatTitleSmallTextStyle = TextStyleSet(json: json["buttonFlatTitleSmall"].kumiValue, defaultStyle: buttonFlatTitleNormalTextStyle.regular)
//        buttonFlatTitleLargeTextStyle = TextStyleSet(json: json["buttonFlatTitleLarge"].kumiValue, defaultStyle: buttonFlatTitleNormalTextStyle.regular)
//
//        textFieldInputNormalTextStyle = TextStyleSet(json: json["textFieldInputNormal"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        textFieldInputSmallTextStyle = TextStyleSet(json: json["textFieldInputSmall"].kumiValue, defaultStyle: textFieldInputNormalTextStyle.regular)
//        textFieldInputLargeTextStyle = TextStyleSet(json: json["textFieldInputLarge"].kumiValue, defaultStyle: textFieldInputNormalTextStyle.regular)
//
//        textFieldLabelNormalTextStyle = TextStyleSet(json: json["textFieldLabelNormal"].kumiValue, defaultStyle: textFieldInputNormalTextStyle.regular)
//        textFieldLabelSmallTextStyle = TextStyleSet(json: json["textFieldLabelSmall"].kumiValue, defaultStyle: textFieldLabelNormalTextStyle.regular)
//        textFieldLabelLargeTextStyle = TextStyleSet(json: json["textFieldLabelLarge"].kumiValue, defaultStyle: textFieldLabelNormalTextStyle.regular)
//
//        textFieldHintNormalTextStyle = TextStyleSet(json: json["textFieldHintNormal"].kumiValue, defaultStyle: textFieldInputNormalTextStyle.regular)
//        textFieldHintSmallTextStyle = TextStyleSet(json: json["textFieldHintSmall"].kumiValue, defaultStyle: textFieldHintNormalTextStyle.regular)
//        textFieldHintLargeTextStyle = TextStyleSet(json: json["textFieldHintLarge"].kumiValue, defaultStyle: textFieldHintNormalTextStyle.regular)
//
//
//        topItemTitleNormalTextStyle = TextStyleSet(json: json["topItemTitleNormal"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
//        topItemTitleSmallTextStyle = TextStyleSet(json: json["topItemTitleSmall"].kumiValue, defaultStyle: topItemTitleNormalTextStyle.regular)
//        topItemTitleLargeTextStyle = TextStyleSet(json: json["topItemTitleLarge"].kumiValue, defaultStyle: topItemTitleNormalTextStyle.regular)
//        topItemButtonTitleTextStyle = TextStyleSet(json: json["topItemButtonTitle"].kumiValue, defaultStyle: topItemTitleNormalTextStyle.regular)

        tooltipsTextStyle = TextStyleSet(json: json["tooltips"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        chipTextStyle = TextStyleSet(json: json["chip"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        menuTextStyle = TextStyleSet(json: json["menu"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        segmentedTitleTextStyle = TextStyleSet(json: json["segmentedTitle"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        snackbarTextTextStyle = TextStyleSet(json: json["snackbarText"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)
        snackbarActionButtonTitleTextStyle = TextStyleSet(json: json["snackbarActionButtonTitle"].kumiValue, defaultStyle: bodyNormalTextStyle.regular)

    }

}
