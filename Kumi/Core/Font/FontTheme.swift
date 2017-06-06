//
//  FontTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Marker

/// Text styles used throughout the app.
public struct FontTheme {

    // MARK: - Generic Text Styles

    /// Display text style.
    var displayTextStyle: TextStyle?

    /// Display Large text style.
    var displayLargeTextStyle: TextStyle?

    /// Display Small text style.
    var displaySmallTextStyle: TextStyle?

    /// Headline 1 text style.
    var headline1TextStyle: TextStyle?

    /// Headline 2 text style.
    var headline2TextStyle: TextStyle?

    /// Headline 3 text style.
    var headline3TextStyle: TextStyle?

    /// Headline 4 text style.
    var headline4TextStyle: TextStyle?

    /// Headline 5 text style.
    var headline5TextStyle: TextStyle?

    /// Headline 6 text style.
    var headline6TextStyle: TextStyle?

    /// Sub-headline text style.
    var subHeadlineTextStyle: TextStyle?

    /// Sub-headline Large text style.
    var subHeadlineLargeTextStyle: TextStyle?

    /// Sub-headline Small text style.
    var subHeadlineSmallTextStyle: TextStyle?

    /// Body text style.
    var bodyTextStyle: TextStyle?

    /// Body Large text style.
    var bodyLargeTextStyle: TextStyle?

    /// Body Small text style.
    var bodySmallTextStyle: TextStyle?

    /// Caption text style.
    var captionTextStyle: TextStyle?

    /// Caption Large text style.
    var captionLargeTextStyle: TextStyle?

    /// Caption Small text style.
    var captionSmallTextStyle: TextStyle?

    // MARK: - Element-related Text Styles

    /// Top Item Title Text Style.
    var topItemTitleTextStyle: TextStyle?

    /// Top Item Subtitle Text Style.
    var topItemSubtitleTextStyle: TextStyle?

    /// Top Item Button Text Style.
    var topItemButtonTextStyle: TextStyle?

    /// Tab Bar Item Text Style.
    var tabBarItemTextStyle: TextStyle?

    /// Tab Bar Badge Text Style.
    var tabBarBadgeTextStyle: TextStyle?

    /// Button Text Style.
    var buttonTextStyle: TextStyle?

    /// Button Large Text Style.
    var buttonLargeTextStyle: TextStyle?

    /// Button Small Text Style.
    var buttonSmallTextStyle: TextStyle?

    /// Button Flat Text Style.
    var buttonFlatTextStyle: TextStyle?

    /// Button Flat Large Text Style.
    var buttonFlatLargeTextStyle: TextStyle?

    /// Button Flat Small Text Style.
    var buttonFlatSmallTextStyle: TextStyle?

    /// Segmented Text Style.
    var segmentedTextStyle: TextStyle?

    /// Text Field Label Text Style.
    var textFieldLabelTextStyle: TextStyle?

    /// Text Field Label Large Text Style.
    var textFieldLabelLargeTextStyle: TextStyle?

    /// Text Field Label Small Text Style.
    var textFieldLabelSmallTextStyle: TextStyle?

    /// Text Field Input Text Style.
    var textFieldInputTextStyle: TextStyle?

    /// Text Field Input Large Text Style.
    var textFieldInputLargeTextStyle: TextStyle?

    /// Text Field Input Small Text Style.
    var textFieldInputSmallTextStyle: TextStyle?

    /// Text Field Hint Text Style.
    var textFieldHintTextStyle: TextStyle?

    /// Text Field Hint Large Text Style.
    var textFieldHintLargeTextStyle: TextStyle?

    /// Text Field Hint Small Text Style.
    var textFieldHintSmallTextStyle: TextStyle?

    public init?(json: JSON) {
        if let displayJSON = json["display"] as? JSON {
            displayTextStyle = TextStyle(json: displayJSON)
        }

        if let displayLargeJSON = json["displayLarge"] as? JSON {
            displayLargeTextStyle = TextStyle(json: displayLargeJSON)
        }

        if let displaySmallJSON = json["displaySmall"] as? JSON {
            displaySmallTextStyle = TextStyle(json: displaySmallJSON)
        }

        if let headline1JSON = json["headline1"] as? JSON {
            headline1TextStyle = TextStyle(json: headline1JSON)
        }

        if let headline2JSON = json["headline2"] as? JSON {
            headline2TextStyle = TextStyle(json: headline2JSON)
        }

        if let headline3JSON = json["headline3"] as? JSON {
            headline3TextStyle = TextStyle(json: headline3JSON)
        }

        if let headline4JSON = json["headline4"] as? JSON {
            headline4TextStyle = TextStyle(json: headline4JSON)
        }

        if let headline5JSON = json["headline5"] as? JSON {
            headline5TextStyle = TextStyle(json: headline5JSON)
        }

        if let headline6JSON = json["headline6"] as? JSON {
            headline6TextStyle = TextStyle(json: headline6JSON)
        }

        if let subHeadlineJSON = json["subHeadline"] as? JSON {
            subHeadlineTextStyle = TextStyle(json: subHeadlineJSON)
        }

        if let subHeadlineLargeJSON = json["subHeadlineLarge"] as? JSON {
            subHeadlineLargeTextStyle = TextStyle(json: subHeadlineLargeJSON)
        }

        if let subHeadlineSmallJSON = json["subHeadlineSmall"] as? JSON {
            subHeadlineSmallTextStyle = TextStyle(json: subHeadlineSmallJSON)
        }

        if let bodyJSON = json["body"] as? JSON {
            bodyTextStyle = TextStyle(json: bodyJSON)
        }

        if let bodyLargeJSON = json["bodyLarge"] as? JSON {
            bodyLargeTextStyle = TextStyle(json: bodyLargeJSON)
        }

        if let bodySmallJSON = json["bodySmall"] as? JSON {
            bodySmallTextStyle = TextStyle(json: bodySmallJSON)
        }

        if let captionJSON = json["caption"] as? JSON {
            captionTextStyle = TextStyle(json: captionJSON)
        }

        if let captionLargeJSON = json["captionLarge"] as? JSON {
            captionLargeTextStyle = TextStyle(json: captionLargeJSON)
        }

        if let captionSmallJSON = json["captionSmall"] as? JSON {
            captionSmallTextStyle = TextStyle(json: captionSmallJSON)
        }

        if let topItemTitleJSON = json["topItemTitle"] as? JSON {
            topItemTitleTextStyle = TextStyle(json: topItemTitleJSON)
        }

        if let topItemSubtitleJSON = json["topItemSubtitle"] as? JSON {
            topItemSubtitleTextStyle = TextStyle(json: topItemSubtitleJSON)
        }

        if let topItemButtonJSON = json["topItemButton"] as? JSON {
            topItemButtonTextStyle = TextStyle(json: topItemButtonJSON)
        }

        if let tabBarItemJSON = json["tabBarItem"] as? JSON {
            tabBarItemTextStyle = TextStyle(json: tabBarItemJSON)
        }

        if let tabBarBadgeJSON = json["tabBarBadge"] as? JSON {
            tabBarBadgeTextStyle = TextStyle(json: tabBarBadgeJSON)
        }

        if let buttonJSON = json["button"] as? JSON {
            buttonTextStyle = TextStyle(json: buttonJSON)
        }

        if let buttonLargeJSON = json["buttonLarge"] as? JSON {
            buttonLargeTextStyle = TextStyle(json: buttonLargeJSON)
        }

        if let buttonSmallJSON = json["buttonSmall"] as? JSON {
            buttonSmallTextStyle = TextStyle(json: buttonSmallJSON)
        }

        if let buttonFlatJSON = json["buttonFlat"] as? JSON {
            buttonFlatTextStyle = TextStyle(json: buttonFlatJSON)
        }

        if let buttonFlatLargeJSON = json["buttonFlatLarge"] as? JSON {
            buttonFlatLargeTextStyle = TextStyle(json: buttonFlatLargeJSON)
        }

        if let buttonFlatSmallJSON = json["buttonFlatSmall"] as? JSON {
            buttonFlatSmallTextStyle = TextStyle(json: buttonFlatSmallJSON)
        }

        if let segmentedJSON = json["segmented"] as? JSON {
            segmentedTextStyle = TextStyle(json: segmentedJSON)
        }

        if let textFieldLabelJSON = json["textFieldLabel"] as? JSON {
            textFieldLabelTextStyle = TextStyle(json: textFieldLabelJSON)
        }

        if let textFieldLabelLargeJSON = json["textFieldLabelLarge"] as? JSON {
            textFieldLabelLargeTextStyle = TextStyle(json: textFieldLabelLargeJSON)
        }

        if let textFieldLabelSmallJSON = json["textFieldLabelSmall"] as? JSON {
            textFieldLabelSmallTextStyle = TextStyle(json: textFieldLabelSmallJSON)
        }

        if let textFieldInputJSON = json["textFieldInput"] as? JSON {
            textFieldInputTextStyle = TextStyle(json: textFieldInputJSON)
        }

        if let textFieldInputLargeJSON = json["textFieldInputLarge"] as? JSON {
            textFieldInputLargeTextStyle = TextStyle(json: textFieldInputLargeJSON)
        }

        if let textFieldInputSmallJSON = json["textFieldInputSmall"] as? JSON {
            textFieldInputSmallTextStyle = TextStyle(json: textFieldInputSmallJSON)
        }

        if let textFieldHintJSON = json["textFieldHint"] as? JSON {
            textFieldHintTextStyle = TextStyle(json: textFieldHintJSON)
        }

        if let textFieldHintLargeJSON = json["textFieldHintLarge"] as? JSON {
            textFieldHintLargeTextStyle = TextStyle(json: textFieldHintLargeJSON)
        }

        if let textFieldHintSmallJSON = json["textFieldHintSmall"] as? JSON {
            textFieldHintSmallTextStyle = TextStyle(json: textFieldHintSmallJSON)
        }
    }

}
