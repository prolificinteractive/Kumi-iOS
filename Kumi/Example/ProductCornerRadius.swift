//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
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
