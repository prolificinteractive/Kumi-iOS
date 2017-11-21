//
//  ColorSet+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

extension ColorSet {
    
    public init?(json: JSON?) {
        guard let json = json else {
            return nil
        }
        self.init(normal: UIColor(json: json["normal"] as? JSON) ?? .black,
                  dark: UIColor(json: json["dark"] as? JSON),
                  light: UIColor(json: json["light"] as? JSON),
                  faded: UIColor(json: json["faded"] as? JSON))
    }
    
    public init?(json: JSON?, defaultColor: UIColor) {
        guard let json = json else {
            return nil
        }
        self.init(normal: UIColor(json: json["normal"] as? JSON) ?? defaultColor,
                  dark: UIColor(json: json["dark"] as? JSON),
                  light: UIColor(json: json["light"] as? JSON),
                  faded: UIColor(json: json["faded"] as? JSON))
    }
}
