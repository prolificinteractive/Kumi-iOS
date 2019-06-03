//
//  UIViewExtension.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON
import UIKit

public extension UIView {

    class func animate(withStyle style: UIViewAnimationStyle,
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

extension UIView.ContentMode {
    
    public init(string: String) {
        switch string {
        case "scaleToFill":
            self = .scaleToFill
        case "scaleAspectFit":
            self = .scaleAspectFit
        case "scaleAspectFill":
            self = .scaleAspectFill
        case "redraw":
            self = .redraw
        case "center":
            self = .center
        case "top":
            self = .top
        case "right":
            self = .right
        case "topLeft":
            self = .topLeft
        case "topRight":
            self = .topRight
        case "bottomLeft":
            self = .bottomLeft
        case "bottomRight":
            self = .bottomRight
        default:
            self = .scaleToFill
        }
    }
    
    init(json: JSON) {
        self = UIView.ContentMode(string: json.kumiValue.stringValue)
    }
}

