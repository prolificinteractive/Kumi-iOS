//
//  ShadowStyle+JSON.swift
//  Pods
//
//  Created by Prolific Interactive on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

extension ShadowStyle {
    
    public init?(json: Any?) {
        
        guard let json = json as? JSON else {
            return nil
        }
        
        guard let shadowStyle = ShadowStyle(json: json) else {
            return nil
        }
        
        self = shadowStyle
    }

    public init?(json: JSON) {
        var shadowOpacity: Float = 1.0
        var shadowRadius: CGFloat = 0
        var shadowOffset: CGSize = CGSize.zero
        var shadowColor: CGColor? = nil

        if let shadowOpacityValue = json["shadowOpacity"] as? Float {
            shadowOpacity = shadowOpacityValue
        }

        if let shadowRadiusValue = json["shadowRadius"] as? CGFloat {
            shadowRadius = shadowRadiusValue
        }

        if let shadowOffsetJSON = json["shadowOffset"] as? JSON {
            if let shadowOffsetValue = CGSize(json: shadowOffsetJSON) {
                shadowOffset = shadowOffsetValue
            }
        }

        if let shadowColorJSON = json["shadowColor"] as? JSON {
            shadowColor = UIColor(json: shadowColorJSON)?.cgColor
        }

        self.init(shadowOpacity: shadowOpacity,
                  shadowRadius: shadowRadius,
                  shadowOffset: shadowOffset,
                  shadowColor: shadowColor)
    }
}
