//
//  FontStyle.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Kumi font styles.
public struct FontStyle {

    /// Roman Ultra Light Font (Linotype Numbering System: 130) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightUltraLight)
    }

    /// Roman Thin Font (Linotype Numbering System: 230) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanThinFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightThin)
    }

    /// Roman Light Font (Linotype Numbering System: 330) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightLight)
    }

    /// Roman Regular Font (Linotype Numbering System: 430) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanRegularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightRegular)
    }

    /// Roman Medium Font (Linotype Numbering System: 530) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightMedium)
    }

    /// Roman Bold Font (Linotype Numbering System: 630) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightSemibold)
    }

    /// Roman Heavy Font (Linotype Numbering System: 730) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanHeavyFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBold)
    }

    /// Roman Black Font (Linotype Numbering System: 830) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanBlackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightHeavy)
    }

    /// Roman ExtraBlack Font (Linotype Numbering System: 930) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func romanExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBlack)
    }

    /// Italic Ultra Light Font (Linotype Numbering System: 131) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    /// Italic Thin Font (Linotype Numbering System: 231) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicThinFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    /// Italic Light Font (Linotype Numbering System: 331) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicLightFont(ofSize size: CGFloat) -> UIFont {
        return romanLightFont(ofSize: size)
    }

    /// Italic Regular Font (Linotype Numbering System: 431) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicRegularFont(ofSize size: CGFloat) -> UIFont {
        return romanRegularFont(ofSize: size)
    }

    /// Italic Medium Font (Linotype Numbering System: 531) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicMediumFont(ofSize size: CGFloat) -> UIFont {
        return romanMediumFont(ofSize: size)
    }

    /// Italic Bold Font (Linotype Numbering System: 631) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicBoldFont(ofSize size: CGFloat) -> UIFont {
        return romanBoldFont(ofSize: size)
    }

    /// Italic Heavy Font (Linotype Numbering System: 731) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicHeavyFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    /// Italic Black Font (Linotype Numbering System: 831) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicBlackFont(ofSize size: CGFloat) -> UIFont {
        return romanBlackFont(ofSize: size)
    }

    /// Italic ExtraBlack Font (Linotype Numbering System: 931) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    public func italicExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return romanExtrablackFont(ofSize: size)
    }

}
