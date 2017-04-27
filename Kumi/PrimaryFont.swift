//
//  SystemFont.Swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Proxima Nova font.
public struct PrimaryFont: Font {

    // MARK: - Protocol conformance

    // MARK: Font

    public func romanUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightUltraLight)
    }

    public func romanThinFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightThin)
    }

    public func romanLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightLight)
    }

    public func romanRegularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightRegular)
    }

    public func romanMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightMedium)
    }

    public func romanBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightSemibold)
    }

    public func romanHeavyFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBold)
    }

    public func romanBlackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightHeavy)
    }

    public func romanExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBlack)
    }

    public func italicUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    public func italicThinFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    public func italicLightFont(ofSize size: CGFloat) -> UIFont {
        return romanLightFont(ofSize: size)
    }

    public func italicRegularFont(ofSize size: CGFloat) -> UIFont {
        return romanRegularFont(ofSize: size)
    }

    public func italicMediumFont(ofSize size: CGFloat) -> UIFont {
        return romanMediumFont(ofSize: size)
    }

    public func italicBoldFont(ofSize size: CGFloat) -> UIFont {
        return romanBoldFont(ofSize: size)
    }

    public func italicHeavyFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    public func italicBlackFont(ofSize size: CGFloat) -> UIFont {
        return romanBlackFont(ofSize: size)
    }

    public func italicExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return romanExtrablackFont(ofSize: size)
    }

}
