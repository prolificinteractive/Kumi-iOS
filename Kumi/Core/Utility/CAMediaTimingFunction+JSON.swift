//
//  CAMediaTimingFunction+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension CAMediaTimingFunction {
    convenience init?(json: JSON) {
        guard let c1x = json["c1x"] as? Float,
            let c1y = json["c1y"] as? Float,
            let c2x = json["c2x"] as? Float,
            let c2y = json["c2y"] as? Float else {
                return nil
        }
        
        self.init(controlPoints: c1x, c1y, c2x, c2y)
    }
}
