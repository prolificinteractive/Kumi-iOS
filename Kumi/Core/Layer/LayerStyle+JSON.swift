//
//  LayerStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/3/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

extension LayerStyle {
    
    init?(json: JSON) {
        var opacity: Float = 1
        var masksToBounds: Bool = false
        var isDoubleSided: Bool = true
        var cornerRadius: CGFloat = 0
        var borderWidth: CGFloat = 0
        var borderColor: CGColor?
        var backgroundColor: CGColor?
        var shadowStyle: ShadowStyle?
        var shadowColor: CGColor?
        var transform: CATransform3D = CATransform3DIdentity
        
        if let opacityValue = json["opacity"] as? Float {
            opacity = opacityValue
        }
        
        if let masksToBoundsValue = json["masksToBounds"] as? Bool {
            masksToBounds = masksToBoundsValue
        }
        
        if let isDoubleSidedValue = json["isDoubleSided"] as? Bool {
            isDoubleSided = isDoubleSidedValue
        }
        
        if let cornerRadiusValue = json["cornerRadius"] as? CGFloat {
            cornerRadius = cornerRadiusValue
        }
        
        if let borderWidthValue = json["borderWidth"] as? CGFloat {
            borderWidth = borderWidthValue
        }
        
        if let borderColorJSON = json["borderColor"] as? JSON {
            borderColor = UIColor(json: borderColorJSON)?.cgColor
        }
        
        if let backgroundColorJSON = json["backgroundColor"] as? JSON {
            backgroundColor = UIColor(json: backgroundColorJSON)?.cgColor
        }
        
        if let shadowStyleJSON = json["shadowStyle"] as? JSON {
            shadowStyle = ShadowStyle(json: shadowStyleJSON)
        }
        
        if let shadowColorJSON = json["shadowColor"] as? JSON {
            shadowColor = UIColor(json: shadowColorJSON)?.cgColor
        }
        
        if let transformJSON = json["transform"] as? JSON {
            if let transformValue = CATransform3D(json: transformJSON) {
                transform = transformValue
            }
        }
        
        self.init(opacity: opacity,
                  masksToBounds: masksToBounds,
                  isDoubleSided: isDoubleSided,
                  cornerRadius: cornerRadius,
                  borderWidth: borderWidth,
                  borderColor: borderColor,
                  backgroundColor: backgroundColor,
                  shadowStyle: shadowStyle,
                  shadowColor: shadowColor,
                  transform: transform)
    }
}
