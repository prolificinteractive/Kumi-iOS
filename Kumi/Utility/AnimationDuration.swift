//
//  CornerRadius.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

/// Defines an interface for fonts used in the app.
public protocol AnimationDuration {

    var none: TimeInterval { get }

    var extraFast: TimeInterval { get }

    var fast: TimeInterval { get }

    var normal: TimeInterval { get }

    var slow: TimeInterval { get }

    var extraSlow: TimeInterval { get }

}
