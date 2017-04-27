//
//  ProductLayerTheme.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/17/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

internal struct ProductAnimationTheme: AnimationTheme {

    let productAnimationDuration = ProductAnimationDuration()

    let defaultCAMediaTimingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 0, 1)

    var primaryCABasicAnimationStyle: CABasicAnimationStyle {

        return CABasicAnimationStyle(duration: productAnimationDuration.normal,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    var secondaryCABasicAnimationStyle: CABasicAnimationStyle {

        return CABasicAnimationStyle(duration: productAnimationDuration.slow,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    var tertiaryCABasicAnimationStyle: CABasicAnimationStyle {
        return CABasicAnimationStyle(duration: productAnimationDuration.fast,
                                     timingFunction: defaultCAMediaTimingFunction,
                                     isRemovedOnCompletion: false)
    }

    var primaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.normal)
    }

    var secondaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.slow)
    }

    var tertiaryUIViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(duration: productAnimationDuration.fast)
    }
}
