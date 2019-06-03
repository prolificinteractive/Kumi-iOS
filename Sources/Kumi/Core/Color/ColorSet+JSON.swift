//
//  ColorSet+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON
import UIKit

extension ColorSet {
    
    public init(json: JSON) {
        self.init(normal: UIColor(json: json["normal"].kumiValue) ?? .clear,
                  dark: UIColor(json: json["dark"].kumiValue),
                  light: UIColor(json: json["light"].kumiValue),
                  faded: UIColor(json: json["faded"].kumiValue))
    }
    
    public init(json: JSON, defaultColor: UIColor) {
        self.init(normal: UIColor(json: json["normal"].kumiValue) ?? defaultColor ,
                  dark: UIColor(json: json["dark"].kumiValue),
                  light: UIColor(json: json["light"].kumiValue),
                  faded: UIColor(json: json["faded"].kumiValue))
    }
}
