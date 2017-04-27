//
//  SystemFont.Swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Proxima Nova font.
internal struct PrimaryFont: Font {

    // MARK: - Protocol conformance

    // MARK: Font

    func romanUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightUltraLight)
    }

    func romanThinFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightThin)
    }

    func romanLightFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightLight)
    }

    func romanRegularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightRegular)
    }

    func romanMediumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightMedium)
    }

    func romanBoldFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightSemibold)
    }

    func romanHeavyFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBold)
    }

    func romanBlackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightHeavy)
    }

    func romanExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFontWeightBlack)
    }

    func italicUltraLightFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    func italicThinFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    func italicLightFont(ofSize size: CGFloat) -> UIFont {
        return romanLightFont(ofSize: size)
    }

    func italicRegularFont(ofSize size: CGFloat) -> UIFont {
        return romanRegularFont(ofSize: size)
    }

    func italicMediumFont(ofSize size: CGFloat) -> UIFont {
        return romanMediumFont(ofSize: size)
    }

    func italicBoldFont(ofSize size: CGFloat) -> UIFont {
        return romanBoldFont(ofSize: size)
    }

    func italicHeavyFont(ofSize size: CGFloat) -> UIFont {
        return romanUltraLightFont(ofSize: size)
    }

    func italicBlackFont(ofSize size: CGFloat) -> UIFont {
        return romanBlackFont(ofSize: size)
    }

    func italicExtrablackFont(ofSize size: CGFloat) -> UIFont {
        return romanExtrablackFont(ofSize: size)
    }

}
