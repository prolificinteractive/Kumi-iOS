//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public struct ProductAnimationDuration: AnimationDuration {

    public var none: TimeInterval {
        return 0
    }

    public var extraFast: TimeInterval {
        return 1 / 8
    }

    public var fast: TimeInterval {
        return 1 / 4
    }

    public var normal: TimeInterval {
        return 1 / 2
    }

    public var slow: TimeInterval {
        return 3 / 4
    }

    public var extraSlow: TimeInterval {
        return 1 / 1
    }

}
