//
//  UIViewExtension.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public extension UIView {

    public class func animate(withStyle style: UIViewAnimationStyle,
                              delay: TimeInterval = 0,
                              animations: @escaping () -> Swift.Void,
                              completion: ((Bool) -> Swift.Void)? = nil) {

        animate(withDuration: style.duration,
                delay: delay,
                usingSpringWithDamping: style.dampingRatio,
                initialSpringVelocity: style.velocity,
                options: style.options,
                animations: animations,
                completion: completion)

    }

}
