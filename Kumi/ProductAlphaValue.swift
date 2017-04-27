//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit
internal struct ProductAlphaValue: AlphaValue {

    var opaque: CGFloat {
        let value: CGFloat = 1
        return value
    }

    var clear: CGFloat {
        let value: CGFloat = 0
        return value
    }

    var normal: CGFloat {
        let value: CGFloat = 1 / 2
        return value
    }

    var disabled: CGFloat {
        let value: CGFloat = 1 / 5
        return value
    }

    var darkOverlay: CGFloat {
        let value: CGFloat = 1 / 6
        return value
    }

    var lightOverlay: CGFloat {
        let value: CGFloat = 2 / 3
        return value
    }

    var shadow: CGFloat {
        let value: CGFloat = 1 / 5
        return value
    }

}
