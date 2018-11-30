//
//  SwiftyJSONHelper.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 29/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

public extension JSON {
    public var cgFloat: CGFloat? {
        if let double = kumiValue.double {
            return CGFloat(double)
        }
        if let int = kumiValue.int {
            return CGFloat(int)
        }
        return nil
    }
    
    public var cgFloatValue: CGFloat {
        return CGFloat(kumiValue.floatValue)
    }
    
    private func path(from: String) -> [JSONSubscriptType] {
        var string = String(from)
        if string.first == "@" {
            string.removeFirst()
        }
        return string.split(separator: ".").map { String($0) }
    }
    
    public var kumiValue: JSON {
        if let val = self["@"].string {
            return try! Kumi._json[path(from: val)].kumiValue.merged(with: self)
        }
        if let string = string, string[0] == "@" {
            return Kumi._json[path(from: string)].kumiValue
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
    
    public var layerStyleValue: LayerStyle {
        return LayerStyle(json: kumiValue)
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
    
    public var stackViewAlignment: UIStackView.Alignment {
        return UIStackView.Alignment(json: kumiValue)
    }
    
    public var contentModeValue: UIView.ContentMode {
        return UIView.ContentMode(json: kumiValue)
    }
}
