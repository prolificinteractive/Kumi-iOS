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
    
    var kumiValue: JSON {
        if var string = string, string[0] == "@" {
            string.removeFirst()
            let _path = string.split(separator: ".")
            let path: [JSONSubscriptType] = _path.map { String($0) }
            return Kumi._json[path].kumiValue
        }
        return self
    }
}
