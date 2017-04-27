//
//  AppTheme.swift
//  Kumi
//
//  Created by Prolific Interactive on 3/26/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit
import Marker

struct AppTheme {
    static let colorTheme = ProductColorTheme()
    static let fontTheme =  ProductFontTheme()
    static let layerTheme = ProductLayerTheme()
    static let animationTheme = ProductAnimationTheme()

    struct Definition {

        static let colors = ProductColors()

        static let alphaValues = ProductAlphaValue()

        static let cornerRadius = ProductCornerRadius()

        static let strokeWidthValues = ProductBorderWidth()

        static let shadowStyles = ProductShadow()

        static let animationDuration = ProductAnimationDuration()

        //Timing Fuctions

        //Spring Functions

    }
}

struct AppThemeValues {
    static let colorTheme: [ColorStyleValueStruct] = [ColorStyleValueStruct(styleName: "Primary",
                                                                            styleRegular: AppTheme.colorTheme.primary,
                                                                            styleMuted: AppTheme.colorTheme.primaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.primaryFaded),
                                                      ColorStyleValueStruct(styleName: "Secondary",
                                                                            styleRegular: AppTheme.colorTheme.secondary,
                                                                            styleMuted: AppTheme.colorTheme.secondaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.secondaryFaded),
                                                      ColorStyleValueStruct(styleName: "Tertiary",
                                                                            styleRegular: AppTheme.colorTheme.tertiary,
                                                                            styleMuted: AppTheme.colorTheme.tertiaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.tertiaryFaded),
                                                      ColorStyleValueStruct(styleName: "Invert Primary",
                                                                            styleRegular: AppTheme.colorTheme.invertPrimary,
                                                                            styleMuted: AppTheme.colorTheme.invertPrimaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.invertPrimaryFaded),
                                                      ColorStyleValueStruct(styleName: "Invert Secondary",
                                                                            styleRegular: AppTheme.colorTheme.invertSecondary,
                                                                            styleMuted: AppTheme.colorTheme.invertSecondaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.invertSecondaryFaded),
                                                      ColorStyleValueStruct(styleName: "Invert Tertiary",
                                                                            styleRegular: AppTheme.colorTheme.invertTertiary,
                                                                            styleMuted: AppTheme.colorTheme.invertTertiaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.invertTertiaryFaded),
                                                      ColorStyleValueStruct(styleName: "Emphasis Primary",
                                                                            styleRegular: AppTheme.colorTheme.emphasisPrimary,
                                                                            styleMuted: AppTheme.colorTheme.emphasisPrimaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.emphasisPrimaryFaded),
                                                      ColorStyleValueStruct(styleName: "Emphasis Secondary",
                                                                            styleRegular: AppTheme.colorTheme.emphasisSecondary,
                                                                            styleMuted: AppTheme.colorTheme.emphasisSecondaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.emphasisSecondaryFaded),
                                                      ColorStyleValueStruct(styleName: "Emphasis Tertiary",
                                                                            styleRegular: AppTheme.colorTheme.emphasisTertiary,
                                                                            styleMuted: AppTheme.colorTheme.emphasisTertiaryMuted,
                                                                            styleFaded: AppTheme.colorTheme.emphasisTertiaryFaded)]

    static let fontTheme: [TextStyleValueStruct] = [TextStyleValueStruct(styleName: "Display Text Style", style: AppTheme.fontTheme.displayTextStyle),
                                                    TextStyleValueStruct(styleName: "Display Large Text Style", style: AppTheme.fontTheme.displayLargeTextStyle),
                                                    TextStyleValueStruct(styleName: "Display Small Text Style", style: AppTheme.fontTheme.displaySmallTextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 1 Text Style", style: AppTheme.fontTheme.headline1TextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 2 Text Style", style: AppTheme.fontTheme.headline2TextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 3 Text Style", style: AppTheme.fontTheme.headline3TextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 4 Text Style", style: AppTheme.fontTheme.headline4TextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 5 Text Style", style: AppTheme.fontTheme.headline5TextStyle),
                                                    TextStyleValueStruct(styleName: "Headline 6 Text Style", style: AppTheme.fontTheme.headline6TextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Large Text Style", style: AppTheme.fontTheme.subHeadlineLargeTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Small Text Style", style: AppTheme.fontTheme.subHeadlineSmallTextStyle),
                                                    TextStyleValueStruct(styleName: "Body Text Style", style: AppTheme.fontTheme.bodyTextStyle),
                                                    TextStyleValueStruct(styleName: "Body Large Text Style", style: AppTheme.fontTheme.bodyLargeTextStyle),
                                                    TextStyleValueStruct(styleName: "Body Small Text Style", style: AppTheme.fontTheme.bodySmallTextStyle),
                                                    TextStyleValueStruct(styleName: "Caption Text Style", style: AppTheme.fontTheme.captionTextStyle),
                                                    TextStyleValueStruct(styleName: "Caption Large Text Style", style: AppTheme.fontTheme.captionLargeTextStyle),
                                                    TextStyleValueStruct(styleName: "Caption Small Text Style", style: AppTheme.fontTheme.captionSmallTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle),
                                                    TextStyleValueStruct(styleName: "Subheadline Text Style", style: AppTheme.fontTheme.subHeadlineTextStyle)]
}

struct TextStyleValueStruct {
    var styleName: String
    var style: TextStyle
}

struct ColorStyleValueStruct {
    var styleName: String
    var styleRegular: UIColor
    var styleMuted: UIColor
    var styleFaded: UIColor
}

enum DesignPreviewType {
    case colorTheme
    case fontTheme
    case layerTheme
    case animationTheme

}

let designNavigation: [String: [String: DesignPreviewType]] = ["Definition": ["1": .animationTheme,
                                                                              "2": .colorTheme],
                                                               "Theme": ["Color Theme": .colorTheme,
                                                                         "Font Theme": .fontTheme,
                                                                         "Layer Theme": .layerTheme,
                                                                         "Animation Theme": .animationTheme],
                                                               "Example": ["1": .colorTheme,
                                                                           "2": .colorTheme,
                                                                           "3": .colorTheme]]
