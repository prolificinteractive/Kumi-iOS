//
//  SwiftyJSONHelper.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 29/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

public extension JSON {
    var cgFloat: CGFloat? {
        if let double = kumiValue.double {
            return CGFloat(double)
        }
        if let int = kumiValue.int {
            return CGFloat(int)
        }
        return nil
    }
    
    var cgFloatValue: CGFloat {
        return CGFloat(kumiValue.floatValue)
    }
    
    private func path(from: String) -> [JSONSubscriptType] {
        var string = String(from)
        if string.first == "@" {
            string.removeFirst()
        }
        return string.split(separator: ".").map { String($0) }
    }
    
    private var atBegins: JSON? {
        if let string = string, string[0] == "@" {
            return Kumi._json[path(from: string)].kumiValue
        }
        return nil
    }
    
    var kumiValue: JSON {
        if let val = self["@"].string {
             do {
                var result = try Kumi._json[path(from: val)].kumiValue.merged(with: self)
                result.dictionaryObject?.removeValue(forKey: "@")
                return result
             } catch {
                return Kumi._json[path(from: val)].kumiValue
            }
        }
        if let at = atBegins {
            return at
        }
        if self["="].exists() {
            return self["="].kumiValue
        }
        return self
    }
    
    var color: UIColor? {
        return UIColor(json: self)
    }
    
    var colorValue: UIColor {
        return color ?? .white
    }
    
    var textStyleSetValue: TextStyleSet {
        return TextStyleSet(json: kumiValue)
    }
    
    var textStyleValue: TextStyle {
        return TextStyle(json: kumiValue)
    }
    
    var layerStyleValue: LayerStyle {
        return LayerStyle(json: kumiValue)
    }
    
    var layerStyleSetValue: LayerStyleSet {
        return LayerStyleSet(json: kumiValue)
    }
    
    var caBasicAnimationStyleValue: CABasicAnimationStyle {
        return CABasicAnimationStyle(json: kumiValue)
    }
    
    var uiViewAnimationStyle: UIViewAnimationStyle {
        return UIViewAnimationStyle(json: kumiValue)
    }
    
    var sizeValue: CGSize {
        return CGSize(json: kumiValue)
    }
    
    var transform3DValue: CATransform3D {
        return CATransform3D(json: kumiValue)
    }
    
    var edgeInsetsValue: UIEdgeInsets {
        return UIEdgeInsets(json: kumiValue)
    }
    
    var stackViewAlignment: UIStackView.Alignment {
        return UIStackView.Alignment(json: kumiValue)
    }
    
    var contentModeValue: UIView.ContentMode {
        return UIView.ContentMode(json: kumiValue)
    }
    
    var textAlignmentValue: NSTextAlignment {
        return NSTextAlignment.fromString(string: kumiValue.stringValue)
    }
}
