//
//  SwiftyJSONHelper.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 29/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON
import Marker

public extension JSON {
    public var cgFloat: CGFloat? {
        if let double = double {
            return CGFloat(double)
        }
        if let int = int {
            return CGFloat(int)
        }
        return nil
    }
    
    public var cgFloatValue: CGFloat {
        return CGFloat(floatValue)
    }
    
    var kumiValue: JSON {
        if var string = string, string[0] == "@" {
            string.removeFirst()
            let _path = string.split(separator: ".")
            let path: [JSONSubscriptType] = _path.map { String($0) }
            return Kumi._json[path].kumiValue
        }
        return self
    }
    
    public var color: UIColor? {
        return UIColor(json: self)
    }
    
    public var colorValue: UIColor {
        return color ?? .white
    }
    
    public var textStyleSetValue: TextStyleSet {
        return TextStyleSet(json: kumiValue)
    }
    
    public var textStyleValue: TextStyle {
        return TextStyle(json: kumiValue)
    }
    
    public var layerStyleSetValue: LayerStyleSet {
        return LayerStyleSet(json: kumiValue)
    }
    
    public var caBasicAnimationStyleValue: CABasicAnimationStyle {
        return CABasicAnimationStyle(json: kumiValue)
    }
    
    public var uiViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(json: kumiValue)
    }
    
    public var sizeValue: CGSize {
        return CGSize(json: kumiValue)
    }
    
    public var transform3DValue: CATransform3D {
        return CATransform3D(json: kumiValue)
    }
    
    public var edgeInsetsValue: UIEdgeInsets {
        return UIEdgeInsets(json: kumiValue)
    }
    
}
