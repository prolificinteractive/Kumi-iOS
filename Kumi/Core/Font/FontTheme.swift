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

    /// Button Title text style.
    var buttonTitleTextStyle: TextStyle?

    /// Button Title Large text style.
    var buttonTitleLargeTextStyle: TextStyle?

    /// Button Title Small text style.
    var buttonTitleSmallTextStyle: TextStyle?

    /// Button Title Floating text style.
    var buttonFloatingTitleTextStyle: TextStyle?

    /// Button Title Floating Large text style.
    var buttonFloatingTitleLargeTextStyle: TextStyle?

    /// Button Title Floating Small text style.
    var buttonFloatingTitleSmallTextStyle: TextStyle?

    /// Top Item Prompt text style.
    var topItemPromptTextStyle: TextStyle?

    /// Top Item Title text style.
    var topItemTitleTextStyle: TextStyle?

    /// Top Item Button Item text style.
    var topItemButtonItemTextStyle: TextStyle?

    /// Tab Bar Item Title text style.
    var tabBarItemTitleTextStyle: TextStyle?

    /// Tab Bar Item Badge text style.
    var tabBarItemBadgeTextStyle: TextStyle?

    /// Segmented Title text style.
    var segmentedTitleTextStyle: TextStyle?

    /// Text Field Title text style.
    var textFieldTitleTextStyle: TextStyle?

    /// Text Field Title Large text style.
    var textFieldTitleLargeTextStyle: TextStyle?

    /// Text Field Title Small text style.
    var textFieldTitleSmallTextStyle: TextStyle?

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

        if let buttonTitleJSON = json["buttonTitle"] as? JSON {
            buttonTitleTextStyle = TextStyle(json: buttonTitleJSON)
        }

        if let buttonTitleLargeJSON = json["buttonTitleLarge"] as? JSON {
            buttonTitleLargeTextStyle = TextStyle(json: buttonTitleLargeJSON)
        }

        if let buttonTitleSmallJSON = json["buttonTitleSmall"] as? JSON {
            buttonTitleSmallTextStyle = TextStyle(json: buttonTitleSmallJSON)
        }

        if let buttonTitleFloatingJSON = json["buttonTitleFloating"] as? JSON {
            buttonFloatingTitleTextStyle = TextStyle(json: buttonTitleFloatingJSON)
        }

        if let buttonTitleFloatingLargeJSON = json["buttonTitleFloatingLarge"] as? JSON {
            buttonFloatingTitleLargeTextStyle = TextStyle(json: buttonTitleFloatingLargeJSON)
        }

        if let buttonTitleFloatingSmallJSON = json["buttonTitleFloatingSmall"] as? JSON {
            buttonFloatingTitleSmallTextStyle = TextStyle(json: buttonTitleFloatingSmallJSON)
        }

        if let textFieldTitleJSON = json["textFieldTitle"] as? JSON {
            textFieldTitleTextStyle = TextStyle(json: textFieldTitleJSON)
        }

        if let textFieldTitleLargeJSON = json["textFieldTitleLarge"] as? JSON {
            textFieldTitleLargeTextStyle = TextStyle(json: textFieldTitleLargeJSON)
        }

        if let textFieldTitleSmallJSON = json["textFieldTitleSmall"] as? JSON {
            textFieldTitleSmallTextStyle = TextStyle(json: textFieldTitleSmallJSON)
        }

        if let topItemPromptJSON = json["topItemPrompt"] as? JSON {
            topItemPromptTextStyle = TextStyle(json: topItemPromptJSON)
        }

        if let topItemTitleJSON = json["topItemTitle"] as? JSON {
            topItemTitleTextStyle = TextStyle(json: topItemTitleJSON)
        }

        if let topItemButtonItemJSON = json["topItemButtonItem"] as? JSON {
            topItemButtonItemTextStyle = TextStyle(json: topItemButtonItemJSON)
        }

        if let tabBarItemTitleJSON = json["tabBarItemTitle"] as? JSON {
            tabBarItemTitleTextStyle = TextStyle(json: tabBarItemTitleJSON)
        }

        if let tabBarItemBadgeJSON = json["tabBarItemBadge"] as? JSON {
            tabBarItemBadgeTextStyle = TextStyle(json: tabBarItemBadgeJSON)
        }

        if let segmentedTitleJSON = json["SegmentedTitle"] as? JSON {
            segmentedTitleTextStyle = TextStyle(json: segmentedTitleJSON)
        }
    }

}
