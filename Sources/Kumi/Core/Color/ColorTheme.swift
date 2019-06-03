//
//  ColorTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit
import SwiftyJSON

/// Kumi color theme.
public final class ColorTheme {

    /// Primary color.
    public var regularPrimary: ColorSet!

    /// Secondary color.
    public var regularSecondary: ColorSet!

    /// Tertiary color.
    public var regularTertiary: ColorSet!
    
    /// Invert Primary color.
    public var invertPrimary: ColorSet!

    /// Invert Secondary color.
    public var invertSecondary: ColorSet!

    /// Invert Tertiary color.
    public var invertTertiary: ColorSet!

    /// Emphasis Primary color.
    public var emphasisPrimary: ColorSet!

    /// Emphasis Secondary color.
    public var emphasisSecondary: ColorSet!

    /// Emphasis Tertiary color.
    public var emphasisTertiary: ColorSet!

    /// Invert Emphasis Primary color.
    public var invertEmphasisPrimary: ColorSet!

    /// Invert Emphasis Secondary color.
    public var invertEmphasisSecondary: ColorSet!

    /// Invert Emphasis Tertiary color.
    public var invertEmphasisTertiary: ColorSet!

    /// Grayout color.
    public var grayout: ColorSet!

    /// Destructive color.
    public var destructive: ColorSet!


    public init(json: JSON) {
        regularPrimary = ColorSet(json: json["regularPrimary"].kumiValue)
        regularSecondary = ColorSet(json: json["regularSecondary"].kumiValue, defaultColor: regularPrimary.normal)
        regularTertiary = ColorSet(json: json["regularTertiary"].kumiValue, defaultColor: regularSecondary.normal)
        invertPrimary = ColorSet(json: json["invertPrimary"].kumiValue, defaultColor: regularPrimary.normal)
        invertSecondary = ColorSet(json: json["invertSecondary"].kumiValue, defaultColor: invertPrimary.normal)
        invertTertiary = ColorSet(json: json["invertTertiary"].kumiValue, defaultColor: invertSecondary.normal)
        emphasisPrimary = ColorSet(json: json["emphasisPrimary"].kumiValue, defaultColor: regularPrimary.normal)
        emphasisSecondary = ColorSet(json: json["emphasisSecondary"].kumiValue, defaultColor: emphasisPrimary.normal)
        emphasisTertiary = ColorSet(json: json["emphasisTertiary"].kumiValue, defaultColor: emphasisSecondary.normal)
        invertEmphasisPrimary = ColorSet(json: json["invertEmphasisPrimary"].kumiValue, defaultColor: regularPrimary.normal)
        invertEmphasisSecondary = ColorSet(json: json["invertEmphasisSecondary"].kumiValue, defaultColor: invertEmphasisPrimary.normal)
        invertEmphasisTertiary = ColorSet(json: json["invertEmphasisTertiary"].kumiValue, defaultColor: invertEmphasisSecondary.normal)
        grayout = ColorSet(json: json["grayout"].kumiValue, defaultColor: regularPrimary.normal)
        destructive = ColorSet(json: json["destructive"].kumiValue, defaultColor: regularPrimary.normal)
        
        
    }

}
