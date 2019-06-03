//
//  LayerStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/3/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON
import QuartzCore
import UIKit

extension LayerStyle {

    public init(json _json: JSON) {
        let json = _json.kumiValue
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

        if let opacityValue = json["opacity"].kumiValue.double {
            opacity = Float(opacityValue)
        }

        if let masksToBoundsValue = json["masksToBounds"].kumiValue.bool {
            masksToBounds = masksToBoundsValue
        }

        if let isDoubleSidedValue = json["isDoubleSided"].kumiValue.bool {
            isDoubleSided = isDoubleSidedValue
        }

        if let cornerRadiusValue = json["cornerRadius"].kumiValue.cgFloat {
            cornerRadius = cornerRadiusValue
        }

        if let borderWidthValue = json["borderWidth"].kumiValue.cgFloat {
            borderWidth = borderWidthValue
        }

        
        borderColor = UIColor(json: json["borderColor"].kumiValue)?.cgColor

        backgroundColor = UIColor(json: json["backgroundColor"].kumiValue)?.cgColor

        shadowStyle = ShadowStyle(json: json["shadowStyle"].kumiValue)
        
        shadowColor = UIColor(json: json["shadowColor"].kumiValue)?.cgColor

        transform = CATransform3D(json: json["transform"].kumiValue)
    

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
