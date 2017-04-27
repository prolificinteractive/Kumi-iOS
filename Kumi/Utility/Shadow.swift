//
//  Shadow.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

/// Defines an interface for fonts used in the app.
public protocol Shadow {

    func by(elevation: CGFloat) -> ShadowStyle

    var none: ShadowStyle { get }

    var primary: ShadowStyle { get }

    var secondary: ShadowStyle { get }

    var tertiary: ShadowStyle { get }

}
