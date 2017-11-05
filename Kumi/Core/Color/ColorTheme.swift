//
//  ColorTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public struct ColorStyle {
    public var normal: UIColor?
    public var muted: UIColor?
    public var faded: UIColor?
    
    private init(normal: UIColor?, muted: UIColor?, faded: UIColor?) {
        self.normal = normal
        self.muted = muted
        self.faded = faded
    }
    
    public init?(json: Any?) {
        guard let json = json as? JSON else {
            return nil
        }
        guard let color = ColorStyle(json: json) else {
            return nil
        }
        self = color
    }
    
    public init?(json: JSON?) {
        guard let json = json else {
            return nil
        }
        self = ColorStyle(normal: UIColor(json: json["normal"] as? JSON),
                  muted: UIColor(json: json["muted"] as? JSON),
                  faded: UIColor(json: json["faded"] as? JSON))
    }
}

/// Kumi color theme.
public struct ColorTheme {

    /// Primary color.
    public var primary: ColorStyle?

    /// Secondary color.
    public var secondary: ColorStyle?

    /// Tertiary color.
    public var tertiary: ColorStyle?
    
    /// Invert Primary color.
    public var invertPrimary: ColorStyle?

    /// Invert Secondary color.
    public var invertSecondary: ColorStyle?

    /// Invert Tertiary color.
    public var invertTertiary: ColorStyle?

    /// Emphasis Primary color.
    public var emphasisPrimary: ColorStyle?

    /// Emphasis Secondary color.
    public var emphasisSecondary: ColorStyle?

    /// Emphasis Tertiary color.
    public var emphasisTertiary: ColorStyle?

    /// Invert Emphasis Primary color.
    public var invertEmphasisPrimary: ColorStyle?

    /// Invert Emphasis Secondary color.
    public var invertEmphasisSecondary: ColorStyle?

    /// Invert Emphasis Tertiary color.
    public var invertEmphasisTertiary: ColorStyle?

    /// Grayout color.
    public var grayout: ColorStyle?

    /// Destructive color.
    public var destructive: ColorStyle?


    public init?(json: JSON) {
        primary = ColorStyle(json: json["primary"])
        secondary = ColorStyle(json: json["secondary"])
        tertiary = ColorStyle(json: json["tertiary"])
        invertPrimary = ColorStyle(json: json["invertPrimary"])
        invertSecondary = ColorStyle(json: json["invertSecondary"])
        invertTertiary = ColorStyle(json: json["invertTertiary"])
        emphasisPrimary = ColorStyle(json: json["emphasisPrimary"])
        emphasisSecondary = ColorStyle(json: json["emphasisSecondary"])
        emphasisTertiary = ColorStyle(json: json["emphasisTertiary"])
        invertEmphasisPrimary = ColorStyle(json: json["invertEmphasisPrimary"])
        invertEmphasisSecondary = ColorStyle(json: json["invertEmphasisSecondary"])
        invertEmphasisTertiary = ColorStyle(json: json["invertEmphasisTertiary"])
        grayout = ColorStyle(json: json["grayout"])
        destructive = ColorStyle(json: json["destructive"])
    }

}
