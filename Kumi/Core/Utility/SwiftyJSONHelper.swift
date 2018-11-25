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
    
    public var kumiValue: Any? {
        if let string = string, string[0] == "@" {
            var _path = string.split(separator: ".")
            let first = _path.removeFirst()
            let path: [JSONSubscriptType] = _path.map {
                String($0)
            }
            switch first {
            case "@constants":
                return Kumi.constants[path]
            case "@generices":
                return Kumi.generics[_path.joined(separator: ".")]
            default:
                return string
            }
        }
        return nil
    }
    
    public var kumiJSON: JSON? {
        return kumiValue as? JSON
    }
    
    public var kumiFloat: Float? {
        return kumiJSON?.float ?? float
    }
    
    public var kumiDouble: Double? {
        return kumiJSON?.double ?? double
    }
    
    public var kumiCGFloat: CGFloat? {
        return kumiJSON?.cgFloat ?? cgFloatValue
    }
    
    public var kumiString: String? {
        return kumiJSON?.string ?? string
    }
    
    public var kumiInt: Int? {
        return kumiJSON?.int ?? int
    }
}
