//
//  ShadowTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Defines an interface for fonts used in the app.
public struct ShadowTheme {

    let none: ShadowStyle
    let primary: ShadowStyle
    let secondary: ShadowStyle
    let tertiary: ShadowStyle

    // TODO: Figure out what the implementation should be based on the JSON
    func by(elevation: CGFloat) -> ShadowStyle {
        let shadowRadius = elevation * 1.5
        let shadowOffset = CGSize(width: 0, height: elevation)

        return ShadowStyle(shadowOpacity: 1,
                           shadowRadius: shadowRadius,
                           shadowOffset: shadowOffset)
    }

}
