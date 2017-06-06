//
//  CGSize+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension CGSize {

    init?(json: JSON) {
        guard let width = json["width"] as? CGFloat,
            let height = json["height"] as? CGFloat else {
                return nil
        }

        self.init(width: width, height: height)
    }

}
