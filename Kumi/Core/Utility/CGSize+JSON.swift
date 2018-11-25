//
//  CGSize+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

extension CGSize {

    init(json: JSON) {
        guard let width = json["width"].kumiCGFloat,
            let height = json["height"].kumiCGFloat else {
                self.init(width: 0, height: 0)
                return
        }

        self.init(width: width, height: height)
    }

}
