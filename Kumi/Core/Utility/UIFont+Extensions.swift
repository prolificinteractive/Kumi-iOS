//
//  UIFont+Extensions.swift
//  Kumi
//
//  Created by Harlan Kellaway on 6/26/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

internal extension UIFont {
    
    /// Updates font size.
    ///
    /// - Parameter newSize: New size.
    /// - Returns: New font with updated value.
    func with(newSize: CGFloat) -> UIFont {
        return UIFont(name: fontName, size: newSize)!
    }
    
}
