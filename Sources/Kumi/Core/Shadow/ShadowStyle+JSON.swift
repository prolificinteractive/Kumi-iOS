//
//  ShadowStyle+JSON.swift
//  Pods
//
//  Created by Prolific Interactive on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON
import QuartzCore
import UIKit

extension ShadowStyle {

    public init(json: JSON) {
        var shadowOpacity: Float = 1.0
        var shadowRadius: CGFloat = 0
        var shadowOffset: CGSize = CGSize.zero
        var shadowColor: CGColor? = nil

        if let shadowOpacityValue = json["shadowOpacity"].double {
            shadowOpacity = Float(shadowOpacityValue)
        }

        if let shadowRadiusValue = json["shadowRadius"].cgFloat {
            shadowRadius = shadowRadiusValue
        }

        shadowOffset = CGSize(json: json["shadowOffset"])

        shadowColor = UIColor(json: json["shadowColor"])?.cgColor

        self.init(shadowOpacity: shadowOpacity,
                  shadowRadius: shadowRadius,
                  shadowOffset: shadowOffset,
                  shadowColor: shadowColor)
    }
}
