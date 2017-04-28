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
    }

}
