//
//  Shadow.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
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
