//
//  ColorTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Kumi color theme.
public struct ColorTheme {

    /// Primary color.
    var primary: UIColor?

    /// Primary Muted color.
    var primaryMuted: UIColor?

    /// Primary Faded color.
    var primaryFaded: UIColor?

    /// Secondary color.
    var secondary: UIColor?

    /// Secondary Muted color.
    var secondaryMuted: UIColor?

    /// Secondary Faded color.
    var secondaryFaded: UIColor?

    /// Tertiary color.
    var tertiary: UIColor?

    /// Tertiary Muted color.
    var tertiaryMuted: UIColor?

    /// Tertiary Faded color.
    var tertiaryFaded: UIColor?

    /// Invert Primary color.
    var invertPrimary: UIColor?

    /// Invert Primary Muted color.
    var invertPrimaryMuted: UIColor?

    /// Invert Primary Faded color.
    var invertPrimaryFaded: UIColor?

    /// Invert Secondary color.
    var invertSecondary: UIColor?

    /// Invert Secondary Muted color.
    var invertSecondaryMuted: UIColor?

    /// Invert Secondary Faded color.
    var invertSecondaryFaded: UIColor?

    /// Invert Tertiary color.
    var invertTertiary: UIColor?

    /// Invert Tertiary Muted color.
    var invertTertiaryMuted: UIColor?

    /// Invert Tertiary Faded color.
    var invertTertiaryFaded: UIColor?

    /// Emphasis Primary color.
    var emphasisPrimary: UIColor?

    /// Emphasis Primary Muted color.
    var emphasisPrimaryMuted: UIColor?

    /// Emphasis Primary Faded color.
    var emphasisPrimaryFaded: UIColor?

    /// Emphasis Secondary color.
    var emphasisSecondary: UIColor?

    /// Emphasis Secondary Muted color.
    var emphasisSecondaryMuted: UIColor?

    /// Emphasis Secondary Faded color.
    var emphasisSecondaryFaded: UIColor?

    /// Emphasis Tertiary color.
    var emphasisTertiary: UIColor?

    /// Emphasis Tertiary Muted color.
    var emphasisTertiaryMuted: UIColor?

    /// Emphasis Tertiary Faded color.
    var emphasisTertiaryFaded: UIColor?

    /// Grayout Primary color.
    var grayoutPrimary: UIColor?

    /// Grayout Secondary color.
    var grayoutSecondary: UIColor?

    /// Grayout Tertiary color.
    var grayoutTertiary: UIColor?

    /// Error Primary color.
    var errorPrimary: UIColor?

    /// Error Secondary color.
    var errorSecondary: UIColor?

    /// Error Tertiary color.
    var errorTertiary: UIColor?

    /// Overlay Primary color.
    var overlayPrimary: UIColor?

    /// Overlay Secondary color.
    var overlaySecondary: UIColor?

    /// Overlay Tertiary color.
    var overlayTertiary: UIColor?

    public init?(json: JSON) {
        if let primaryJSON = json["primary"] as? JSON {
            if let normalJSON = primaryJSON["normal"] as? JSON {
                primary = UIColor(json: normalJSON)
            }
            if let mutedJSON = primaryJSON["muted"] as? JSON {
                primaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = primaryJSON["faded"] as? JSON {
                primaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let secondaryJSON = json["secondary"] as? JSON {
            if let normalJSON = secondaryJSON["normal"] as? JSON {
                secondary = UIColor(json: normalJSON)
            }
            if let mutedJSON = secondaryJSON["muted"] as? JSON {
                secondaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = secondaryJSON["faded"] as? JSON {
                secondaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let tertiaryJSON = json["tertiary"] as? JSON {
            if let normalJSON = tertiaryJSON["normal"] as? JSON {
                tertiary = UIColor(json: normalJSON)
            }
            if let mutedJSON = tertiaryJSON["muted"] as? JSON {
                tertiaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = tertiaryJSON["faded"] as? JSON {
                tertiaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let invertPrimaryJSON = json["invertPrimary"] as? JSON {
            if let normalJSON = invertPrimaryJSON["normal"] as? JSON {
                invertPrimary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertPrimaryJSON["muted"] as? JSON {
                invertPrimaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertPrimaryJSON["faded"] as? JSON {
                invertPrimaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let invertSecondaryJSON = json["invertSecondary"] as? JSON {
            if let normalJSON = invertSecondaryJSON["normal"] as? JSON {
                invertSecondary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertSecondaryJSON["muted"] as? JSON {
                invertSecondaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertSecondaryJSON["faded"] as? JSON {
                invertSecondaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let invertTertiaryJSON = json["invertTertiary"] as? JSON {
            if let normalJSON = invertTertiaryJSON["normal"] as? JSON {
                invertTertiary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertTertiaryJSON["muted"] as? JSON {
                invertTertiaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertTertiaryJSON["faded"] as? JSON {
                invertTertiaryFaded = UIColor(json: fadedJSON)
            }
        }

        if let emphasisPrimaryJSON = json["emphasisPrimary"] as? JSON {
            if let normalJSON = emphasisPrimaryJSON["normal"] as? JSON {
                emphasisPrimary = UIColor(json: normalJSON)
            }
            if let mutedJSON = emphasisPrimaryJSON["muted"] as? JSON {
                emphasisPrimaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = emphasisPrimaryJSON["faded"] as? JSON {
                emphasisPrimaryFaded = UIColor(json: fadedJSON)
            }
        }
    }

}
