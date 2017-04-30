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
    
    /// Invert Emphasis Primary color.
    var invertEmphasisPrimary: UIColor?
    
    /// Invert Emphasis Primary Muted color.
    var invertEmphasisPrimaryMuted: UIColor?
    
    /// Invert Emphasis Primary Faded color.
    var invertEmphasisPrimaryFaded: UIColor?
    
    /// Invert Emphasis Secondary color.
    var invertEmphasisSecondary: UIColor?
    
    /// Invert Emphasis Secondary Muted color.
    var invertEmphasisSecondaryMuted: UIColor?
    
    /// Invert Emphasis Secondary Faded color.
    var invertEmphasisSecondaryFaded: UIColor?
    
    /// Invert Emphasis Tertiary color.
    var invertEmphasisTertiary: UIColor?
    
    /// Invert Emphasis Tertiary Muted color.
    var invertEmphasisTertiaryMuted: UIColor?
    
    /// Invert Emphasis Tertiary Faded color.
    var invertEmphasisTertiaryFaded: UIColor?
    
    /// Grayout color.
    var grayout: UIColor?
    
    /// Grayout Muted color.
    var grayoutMuted: UIColor?
    
    /// Grayout Faded color.
    var grayoutFaded: UIColor?
    
    /// Destructive color.
    var destructive: UIColor?
    
    /// Destructive Muted color.
    var destructiveMuted: UIColor?
    
    /// Destructive Faded color.
    var destructiveFaded: UIColor?
    
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
        
        if let emphasisSecondaryJSON = json["emphasisSecondary"] as? JSON {
            if let normalJSON = emphasisSecondaryJSON["normal"] as? JSON {
                emphasisSecondary = UIColor(json: normalJSON)
            }
            if let mutedJSON = emphasisSecondaryJSON["muted"] as? JSON {
                emphasisSecondaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = emphasisSecondaryJSON["faded"] as? JSON {
                emphasisSecondaryFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let emphasisTertiaryJSON = json["emphasisTertiary"] as? JSON {
            if let normalJSON = emphasisTertiaryJSON["normal"] as? JSON {
                emphasisTertiary = UIColor(json: normalJSON)
            }
            if let mutedJSON = emphasisTertiaryJSON["muted"] as? JSON {
                emphasisTertiaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = emphasisTertiaryJSON["faded"] as? JSON {
                emphasisTertiaryFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let invertEmphasisPrimaryJSON = json["invertEmphasisPrimary"] as? JSON {
            if let normalJSON = invertEmphasisPrimaryJSON["normal"] as? JSON {
                invertEmphasisPrimary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertEmphasisPrimaryJSON["muted"] as? JSON {
                invertEmphasisPrimaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertEmphasisPrimaryJSON["faded"] as? JSON {
                invertEmphasisPrimaryFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let invertEmphasisSecondaryJSON = json["invertEmphasisSecondary"] as? JSON {
            if let normalJSON = invertEmphasisSecondaryJSON["normal"] as? JSON {
                invertEmphasisSecondary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertEmphasisSecondaryJSON["muted"] as? JSON {
                invertEmphasisSecondaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertEmphasisSecondaryJSON["faded"] as? JSON {
                invertEmphasisSecondaryFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let invertEmphasisTertiaryJSON = json["invertEmphasisTertiary"] as? JSON {
            if let normalJSON = invertEmphasisTertiaryJSON["normal"] as? JSON {
                invertEmphasisTertiary = UIColor(json: normalJSON)
            }
            if let mutedJSON = invertEmphasisTertiaryJSON["muted"] as? JSON {
                invertEmphasisTertiaryMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = invertEmphasisTertiaryJSON["faded"] as? JSON {
                invertEmphasisTertiaryFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let grayoutJSON = json["grayout"] as? JSON {
            if let normalJSON = grayoutJSON["normal"] as? JSON {
                grayout = UIColor(json: normalJSON)
            }
            if let mutedJSON = grayoutJSON["muted"] as? JSON {
                grayoutMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = grayoutJSON["faded"] as? JSON {
                grayoutFaded = UIColor(json: fadedJSON)
            }
        }
        
        if let destructiveJSON = json["destructive"] as? JSON {
            if let normalJSON = destructiveJSON["normal"] as? JSON {
                destructive = UIColor(json: normalJSON)
            }
            if let mutedJSON = destructiveJSON["muted"] as? JSON {
                destructiveMuted = UIColor(json: mutedJSON)
            }
            if let fadedJSON = destructiveJSON["faded"] as? JSON {
                destructiveFaded = UIColor(json: fadedJSON)
            }
        }
    }

}
