//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

/// Color theme used throughout the app.
public protocol ColorTheme {

    /// Primary color.
    var primary: UIColor { get }

    /// Primary Muted color.
    var primaryMuted: UIColor { get }

    /// Primary Faded color.
    var primaryFaded: UIColor { get }

    /// Secondary color.
    var secondary: UIColor { get }

    /// Secondary Muted color.
    var secondaryMuted: UIColor { get }

    /// Secondary Faded color.
    var secondaryFaded: UIColor { get }

    /// Tertiary color.
    var tertiary: UIColor { get }

    /// Tertiary Muted color.
    var tertiaryMuted: UIColor { get }

    /// Tertiary Faded color.
    var tertiaryFaded: UIColor { get }

    /// Invert Primary color.
    var invertPrimary: UIColor { get }

    /// Invert Primary Muted color.
    var invertPrimaryMuted: UIColor { get }

    /// Invert Primary Faded color.
    var invertPrimaryFaded: UIColor { get }

    /// Invert Secondary color.
    var invertSecondary: UIColor { get }

    /// Invert Secondary Muted color.
    var invertSecondaryMuted: UIColor { get }

    /// Invert Secondary Faded color.
    var invertSecondaryFaded: UIColor { get }

    /// Invert Tertiary color.
    var invertTertiary: UIColor { get }

    /// Invert Tertiary Muted color.
    var invertTertiaryMuted: UIColor { get }

    /// Invert Tertiary Faded color.
    var invertTertiaryFaded: UIColor { get }

    /// Emphasis Primary color.
    var emphasisPrimary: UIColor { get }

    /// Emphasis Primary Muted color.
    var emphasisPrimaryMuted: UIColor { get }

    /// Emphasis Primary Faded color.
    var emphasisPrimaryFaded: UIColor { get }

    /// Emphasis Secondary color.
    var emphasisSecondary: UIColor { get }

    /// Emphasis Secondary Muted color.
    var emphasisSecondaryMuted: UIColor { get }

    /// Emphasis Secondary Faded color.
    var emphasisSecondaryFaded: UIColor { get }

    /// Emphasis Tertiary color.
    var emphasisTertiary: UIColor { get }

    /// Emphasis Tertiary Muted color.
    var emphasisTertiaryMuted: UIColor { get }

    /// Emphasis Tertiary Faded color.
    var emphasisTertiaryFaded: UIColor { get }

    /// Grayout Primary color.
    var grayoutPrimary: UIColor { get }

    /// Grayout Secondary color.
    var grayoutSecondary: UIColor { get }

    /// Grayout Tertiary color.
    var grayoutTertiary: UIColor { get }

    /// Error Primary color.
    var errorPrimary: UIColor { get }

    /// Error Secondary color.
    var errorSecondary: UIColor { get }

    /// Error Tertiary color.
    var errorTertiary: UIColor { get }

    /// Overlay Primary color.
    var overlayPrimary: UIColor { get }

    /// Overlay Secondary color.
    var overlaySecondary: UIColor { get }

    /// Overlay Tertiary color.
    var overlayTertiary: UIColor { get }

}
