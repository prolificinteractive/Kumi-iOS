//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit
internal struct ProductAnimationDuration: AnimationDuration {

    var none: TimeInterval {
        return 0
    }

    var extraFast: TimeInterval {
        return 1 / 8
    }

    var fast: TimeInterval {
        return 1 / 4
    }

    var normal: TimeInterval {
        return 1 / 2
    }

    var slow: TimeInterval {
        return 3 / 4
    }

    var extraSlow: TimeInterval {
        return 1 / 1
    }

}
