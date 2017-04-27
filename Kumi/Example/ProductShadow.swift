//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit
internal struct ProductShadow: Shadow {

    func by(elevation: CGFloat) -> ShadowStyle {

        let shadowRadius = elevation * 1.5

        let shadowOffset = CGSize(width: 0, height: elevation)

        return ShadowStyle(shadowOpacity: 1,
                           shadowRadius: shadowRadius,
                           shadowOffset: shadowOffset)
    }

    var none: ShadowStyle {
        var shadowStyle = by(elevation: 0)
        shadowStyle.shadowOpacity = 0
        return shadowStyle
    }

    var primary: ShadowStyle {
        return by(elevation: 4)
    }

    var secondary: ShadowStyle {
        return by(elevation: 6)
    }

    var tertiary: ShadowStyle {
        return by(elevation: 2)
    }

}
