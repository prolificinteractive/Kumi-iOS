//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Marker

/// Text styles used throughout the app.
internal protocol FontTheme {

    // MARK: - Generic Text Styles
    /// Display text style.
    var displayTextStyle: TextStyle { get }

    /// Display Large text style.
    var displayLargeTextStyle: TextStyle { get }

    /// Display Small text style.
    var displaySmallTextStyle: TextStyle { get }

    /// Headline 1 text style.
    var headline1TextStyle: TextStyle { get }

    /// Headline 2 text style.
    var headline2TextStyle: TextStyle { get }

    /// Headline 3 text style.
    var headline3TextStyle: TextStyle { get }

    /// Headline 4 text style.
    var headline4TextStyle: TextStyle { get }

    /// Headline 5 text style.
    var headline5TextStyle: TextStyle { get }

    /// Headline 6 text style.
    var headline6TextStyle: TextStyle { get }

    /// Sub-headline text style.
    var subHeadlineTextStyle: TextStyle { get }

    /// Sub-headline Large text style.
    var subHeadlineLargeTextStyle: TextStyle { get }

    /// Sub-headline Small text style.
    var subHeadlineSmallTextStyle: TextStyle { get }

    /// Body text style.
    var bodyTextStyle: TextStyle { get }

    /// Body Large text style.
    var bodyLargeTextStyle: TextStyle { get }

    /// Body Small text style.
    var bodySmallTextStyle: TextStyle { get }

    /// Caption text style.
    var captionTextStyle: TextStyle { get }

    /// Caption Large text style.
    var captionLargeTextStyle: TextStyle { get }

    /// Caption Small text style.
    var captionSmallTextStyle: TextStyle { get }

    // MARK: - Element-related Text Styles
    /// Button Title text style.
    var buttonTitleTextStyle: TextStyle { get }

    /// Button Title Large text style.
    var buttonTitleLargeTextStyle: TextStyle { get }

    /// Button Title Small text style.
    var buttonTitleSmallTextStyle: TextStyle { get }

    /// Button Title Floating text style.
    var buttonFloatingTitleTextStyle: TextStyle { get }

    /// Button Title Floating Large text style.
    var buttonFloatingTitleLargeTextStyle: TextStyle { get }

    /// Button Title Floating Small text style.
    var buttonFloatingTitleSmallTextStyle: TextStyle { get }

    /// Top Item Prompt text style.
    var topItemPromptTextStyle: TextStyle { get }

    /// Top Item Title text style.
    var topItemTitleTextStyle: TextStyle { get }

    /// Top Item Button Item text style.
    var topItemButtonItemTextStyle: TextStyle { get }

    /// Tab Bar Item Title text style.
    var tabBarItemTitleTextStyle: TextStyle { get }

    /// Tab Bar Item Badge text style.
    var tabBarItemBadgeTextStyle: TextStyle { get }

    /// Segmented Title text style.
    var segmentedTitleTextStyle: TextStyle { get }

    /// Text Field Title text style.
    var textFieldTitleTextStyle: TextStyle { get }

    /// Text Field Title Large text style.
    var textFieldTitleLargeTextStyle: TextStyle { get }

    /// Text Field Title Small text style.
    var textFieldTitleSmallTextStyle: TextStyle { get }

}
