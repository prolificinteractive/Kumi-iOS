//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit
internal struct ProductCornerRadius: CornerRadius {

    var none: CGFloat {
        return 0
    }

    var extraSmall: CGFloat {
        let value: CGFloat = 2
        return value
    }

    var small: CGFloat {
        let value: CGFloat = 4
        return value
    }

    var regular: CGFloat {
        let value: CGFloat = 8
        return value
    }

    var large: CGFloat {
        let value: CGFloat = 12
        return value
    }

    var extraLarge: CGFloat {
        let value: CGFloat = 16
        return value
    }

    var rounded: CGFloat {
        let value: CGFloat = 30
        return value
    }
}
