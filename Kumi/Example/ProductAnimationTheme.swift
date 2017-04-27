//
//  ProductLayerTheme.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/17/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public struct ProductAnimationTheme: AnimationTheme {

    let productAnimationDuration = ProductAnimationDuration()

    let defaultCAMediaTimingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 0, 1)

    public var primaryCABasicAnimationStyle: CABasicAnimationStyle {

        return CABasicAnimationStyle(duration: productAnimationDuration.normal,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    public var secondaryCABasicAnimationStyle: CABasicAnimationStyle {

        return CABasicAnimationStyle(duration: productAnimationDuration.slow,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    public var tertiaryCABasicAnimationStyle: CABasicAnimationStyle {
        return CABasicAnimationStyle(duration: productAnimationDuration.fast,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    public var primaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.normal)
    }

    public var secondaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.slow)
    }

    public var tertiaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.fast)
    }
}
