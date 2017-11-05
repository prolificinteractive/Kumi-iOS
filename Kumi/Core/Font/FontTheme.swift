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
    public var displayTextStyle: TextStyle?

    /// Display Large text style.
    public var displayLargeTextStyle: TextStyle?

    /// Display Small text style.
    public var displaySmallTextStyle: TextStyle?

    /// Headline 1 text style.
    public var headline1TextStyle: TextStyle?

    /// Headline 2 text style.
    public var headline2TextStyle: TextStyle?

    /// Headline 3 text style.
    public var headline3TextStyle: TextStyle?

    /// Headline 4 text style.
    public var headline4TextStyle: TextStyle?

    /// Headline 5 text style.
    public var headline5TextStyle: TextStyle?

    /// Headline 6 text style.
    public var headline6TextStyle: TextStyle?

    /// Sub-headline text style.
    public var subHeadlineTextStyle: TextStyle?

    /// Sub-headline Large text style.
    public var subHeadlineLargeTextStyle: TextStyle?

    /// Sub-headline Small text style.
    public var subHeadlineSmallTextStyle: TextStyle?

    /// Body text style.
    public var bodyTextStyle: TextStyle?

    /// Body Large text style.
    public var bodyLargeTextStyle: TextStyle?

    /// Body Small text style.
    public var bodySmallTextStyle: TextStyle?

    /// Caption text style.
    public var captionTextStyle: TextStyle?

    /// Caption Large text style.
    public var captionLargeTextStyle: TextStyle?

    /// Caption Small text style.
    public var captionSmallTextStyle: TextStyle?

    // MARK: - Element-related Text Styles

    /// Top Item Title Text Style.
    public var topItemTitleTextStyle: TextStyle?

    /// Top Item Subtitle Text Style.
    public var topItemSubtitleTextStyle: TextStyle?

    /// Top Item Button Text Style.
    public var topItemButtonTextStyle: TextStyle?

    /// Tab Bar Item Text Style.
    public var tabBarItemTextStyle: TextStyle?

    /// Tab Bar Badge Text Style.
    public var tabBarBadgeTextStyle: TextStyle?

    /// Button Text Style.
    public var buttonTextStyle: TextStyle?

    /// Button Large Text Style.
    public var buttonLargeTextStyle: TextStyle?

    /// Button Small Text Style.
    public var buttonSmallTextStyle: TextStyle?

    /// Button Flat Text Style.
    public var buttonFlatTextStyle: TextStyle?

    /// Button Flat Large Text Style.
    public var buttonFlatLargeTextStyle: TextStyle?

    /// Button Flat Small Text Style.
    public var buttonFlatSmallTextStyle: TextStyle?

    /// Segmented Text Style.
    public var segmentedTextStyle: TextStyle?

    /// Text Field Label Text Style.
    public var textFieldLabelTextStyle: TextStyle?

    /// Text Field Label Large Text Style.
    public var textFieldLabelLargeTextStyle: TextStyle?

    /// Text Field Label Small Text Style.
    public var textFieldLabelSmallTextStyle: TextStyle?

    /// Text Field Input Text Style.
    public var textFieldInputTextStyle: TextStyle?

    /// Text Field Input Large Text Style.
    public var textFieldInputLargeTextStyle: TextStyle?

    /// Text Field Input Small Text Style.
    public var textFieldInputSmallTextStyle: TextStyle?

    /// Text Field Hint Text Style.
    public var textFieldHintTextStyle: TextStyle?

    /// Text Field Hint Large Text Style.
    public var textFieldHintLargeTextStyle: TextStyle?

    /// Text Field Hint Small Text Style.
    public var textFieldHintSmallTextStyle: TextStyle?

    public init?(json: JSON) {
        
        displayTextStyle = TextStyle(json: json["display"])
        
        displayLargeTextStyle = TextStyle(json: json["displayLarge"])
        
        displaySmallTextStyle = TextStyle(json: json["displaySmall"])
        
        headline1TextStyle = TextStyle(json: json["headline1"])
        
        headline2TextStyle = TextStyle(json: json["headline2"])
    
        headline3TextStyle = TextStyle(json: json["headline3"])
    
        headline4TextStyle = TextStyle(json: json["headline4"])
    
        headline5TextStyle = TextStyle(json: json["headline5"])
    
        headline6TextStyle = TextStyle(json: json["headline6"])
    
        subHeadlineTextStyle = TextStyle(json: json["subHeadline"])
    
        subHeadlineLargeTextStyle = TextStyle(json: json["subHeadlineLarge"])
    
        subHeadlineSmallTextStyle = TextStyle(json: json["subHeadlineSmall"])
    
        bodyTextStyle = TextStyle(json: json["body"])
    
        bodyLargeTextStyle = TextStyle(json: json["bodyLarge"])
    
        bodySmallTextStyle = TextStyle(json: json["bodySmall"])
    
        captionTextStyle = TextStyle(json: json["caption"])
    
        captionLargeTextStyle = TextStyle(json: json["captionLarge"])
    
        captionSmallTextStyle = TextStyle(json: json["captionSmall"])
    
        topItemTitleTextStyle = TextStyle(json: json["topItemTitle"])
    
        topItemSubtitleTextStyle = TextStyle(json: json["topItemSubtitle"])
    
        topItemButtonTextStyle = TextStyle(json: json["topItemButton"])
    
        tabBarItemTextStyle = TextStyle(json: json["tabBarItem"])
    
        tabBarBadgeTextStyle = TextStyle(json: json["tabBarBadge"])
    
        buttonTextStyle = TextStyle(json: json["button"])
    
        buttonLargeTextStyle = TextStyle(json: json["buttonLarge"])
    
        buttonSmallTextStyle = TextStyle(json: json["buttonSmall"])
    
        buttonFlatTextStyle = TextStyle(json: json["buttonFlat"])
    
        buttonFlatLargeTextStyle = TextStyle(json: json["buttonFlatLarge"])
    
        buttonFlatSmallTextStyle = TextStyle(json: json["buttonFlatSmall"])
    
        segmentedTextStyle = TextStyle(json: json["segmented"])
    
        textFieldLabelTextStyle = TextStyle(json: json["textFieldLabel"])
    
        textFieldLabelLargeTextStyle = TextStyle(json: json["textFieldLabelLarge"])
    
        textFieldLabelSmallTextStyle = TextStyle(json: json["textFieldLabelSmall"])
    
        textFieldInputTextStyle = TextStyle(json: json["textFieldInput"])
    
        textFieldInputLargeTextStyle = TextStyle(json: json["textFieldInputLarge"])
    
        textFieldInputSmallTextStyle = TextStyle(json: json["textFieldInputSmall"])
    
        textFieldHintTextStyle = TextStyle(json: json["textFieldHint"])
    
        textFieldHintLargeTextStyle = TextStyle(json: json["textFieldHintLarge"])
    
        textFieldHintSmallTextStyle = TextStyle(json: json["textFieldHintSmall"])
    
    }

}
