//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit
import Marker

/// Default Product Color theme.
internal struct ProductColorTheme: ColorTheme {

    // MARK: - Protocol conformance

    // MARK: ColorTheme

    // MARK: - Primary colors.
    //    let colors = ProductColors()

    let alphaValue = AppTheme.Definition.alphaValues

    var primary: UIColor {
        return ProductColors.black
    }
    var primaryMuted: UIColor {
        return primary.brighten(by: alphaValue.lightOverlay)
    }
    var primaryFaded: UIColor {
        return primary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Secondary hsnColors.

    var secondary: UIColor {
        return ProductColors.gray
    }
    var secondaryMuted: UIColor {
        return secondary.brighten(by: alphaValue.lightOverlay)
    }
    var secondaryFaded: UIColor {
        return secondary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Tertiary hsnColors.

    var tertiary: UIColor {
        return secondary
    }
    var tertiaryMuted: UIColor {
        return tertiary.brighten(by: alphaValue.lightOverlay)
    }
    var tertiaryFaded: UIColor {
        return tertiary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: Invert primary hsnColors.

    var invertPrimary: UIColor {
        return ProductColors.white
    }
    var invertPrimaryMuted: UIColor {
        return invertPrimary.darken(by: alphaValue.darkOverlay)
    }
    var invertPrimaryFaded: UIColor {
        return invertPrimary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: Invert secondary hsnColors.

    var invertSecondary: UIColor {
        return ProductColors.lightGray
    }
    var invertSecondaryMuted: UIColor {
        return invertSecondary.darken(by: alphaValue.darkOverlay)
    }
    var invertSecondaryFaded: UIColor {
        return invertSecondary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: Invert Tertiary hsnColors.

    var invertTertiary: UIColor {
        return invertSecondary
    }
    var invertTertiaryMuted: UIColor {
        return invertTertiary.darken(by: alphaValue.darkOverlay)
    }
    var invertTertiaryFaded: UIColor {
        return invertTertiary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Emphasis primary hsnColors.

    var emphasisPrimary: UIColor {
        return ProductColors.dodgerBlue
    }
    var emphasisPrimaryMuted: UIColor {
        return emphasisPrimary.brighten(by: alphaValue.lightOverlay)
    }
    var emphasisPrimaryFaded: UIColor {
        return emphasisPrimary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Emphasis secondary hsnColors.

    var emphasisSecondary: UIColor {
        return ProductColors.lemon
    }
    var emphasisSecondaryMuted: UIColor {
        return emphasisSecondary.brighten(by: alphaValue.lightOverlay)
    }
    var emphasisSecondaryFaded: UIColor {
        return emphasisSecondary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Emphasis Tertiary hsnColors.

    var emphasisTertiary: UIColor {
        return emphasisSecondary
    }
    var emphasisTertiaryMuted: UIColor {
        return emphasisTertiary.brighten(by: alphaValue.lightOverlay)
    }
    var emphasisTertiaryFaded: UIColor {
        return emphasisTertiary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Grayed out primary hsnColors.

    var grayoutPrimary: UIColor {
        return ProductColors.gray
    }
    var grayoutSecondary: UIColor {
        return grayoutPrimary.brighten(by: alphaValue.lightOverlay)
    }
    var grayoutTertiary: UIColor {
        return grayoutPrimary.withAlphaComponent(alphaValue.normal)
    }

    // MARK: - Error hsnColors.

    var errorPrimary: UIColor {
        return ProductColors.monza
    }
    var errorSecondary: UIColor {
        return errorPrimary
    }
    var errorTertiary: UIColor {
        return errorSecondary
    }

    // MARK: - Overlay hsnColors.

    var overlayPrimary: UIColor {
        return ProductColors.black.withAlphaComponent(alphaValue.darkOverlay)
    }
    var overlaySecondary: UIColor {
        return overlayPrimary
    }
    var overlayTertiary: UIColor {
        return overlaySecondary
    }

}
