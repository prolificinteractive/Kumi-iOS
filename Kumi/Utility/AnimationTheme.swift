//
//  ProductLayerTheme.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/17/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

public protocol AnimationTheme {

    var primaryCABasicAnimationStyle: CABasicAnimationStyle { get }

    var secondaryCABasicAnimationStyle: CABasicAnimationStyle { get }

    var tertiaryCABasicAnimationStyle: CABasicAnimationStyle { get }

    var primaryUIViewAnimationStyle: UIViewAnimationStyle { get }

    var secondaryUIViewAnimationStyle: UIViewAnimationStyle { get }

    var tertiaryUIViewAnimationStyle: UIViewAnimationStyle { get }

}
