//
//  UIColor+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON
import UIKit

extension UIColor {

    convenience init?(json _json: JSON) {
        let json = _json.kumiValue
        if let hex = json.string {
            var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
            if (cString.hasPrefix("#")) {
                cString.remove(at: cString.startIndex)
            }
    
            if ((cString.count) != 8 && (cString.count) != 6) {
                return nil
            }
            
            var rgbValue:UInt64 = 0
            Scanner(string: cString).scanHexInt64(&rgbValue)
            if cString.count == 8 {
                let r = CGFloat((rgbValue & 0x00FF0000) >> 16) / 255.0
                let g = CGFloat((rgbValue & 0x0000FF00) >> 8) / 255.0
                let b = CGFloat(rgbValue & 0x000000FF) / 255.0
                let a = CGFloat((rgbValue & 0xFF000000) >> 24) / 255.0
                self.init(red: r, green: g, blue: b, alpha: a)
            }else{
                let r = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
                let g = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
                let b = CGFloat(rgbValue & 0x0000FF) / 255.0
                let a = CGFloat(1)
                self.init(red: r, green: g, blue: b, alpha: a)
            }
            return
            
        }
        guard let red = json["red"].kumiValue.cgFloat,
        let green = json["green"].kumiValue.cgFloat,
        let blue = json["blue"].kumiValue.cgFloat else {
                return nil
        }
        let alpha: CGFloat = json["alpha"].kumiValue.cgFloat ?? 1
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    func toHexString() -> String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let argb:UInt64 = (UInt64)(a*255)<<24 | (UInt64)(r*255)<<16 | (UInt64)(g*255)<<8 | (UInt64)(b*255)<<0
        
        return String(format:"#%08x", argb)
    }
}
