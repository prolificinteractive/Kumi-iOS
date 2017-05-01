//
//  UIColor+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension UIColor {

    convenience init?(json: JSON) {
        guard let red = json["red"] as? CGFloat,
            let green = json["green"] as? CGFloat,
            let blue = json["blue"] as? CGFloat,
            let alpha = json["alpha"] as? CGFloat else {
                return nil
        }

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

}
