//
//  Theme.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON

public struct Kumi {
    
    // private section
    /// Constant object
    fileprivate static var _constants = JSON({})
    
    /// Generics object.
    fileprivate static var _generics = Generics(json: JSON({}))
    
    // public
    
    public static var constants: JSON {
        return _constants
    }
    
    public static var generics: Generics {
        return _generics
    }
    
    public static func setup(withJSON json: JSON) {
        _constants = json["constants"]
        _generics = Generics(json: json["generics"])
    }
}
