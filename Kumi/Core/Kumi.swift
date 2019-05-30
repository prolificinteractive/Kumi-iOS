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
    
    static var _json = JSON({})
    // private section
    /// Constant object
    fileprivate static var _constants = JSON({})
    
    /// Generics object.
    fileprivate static var _generics = Generics(json: JSON({}))
    
    /// Functionals object.
    fileprivate static var _functionals = JSON({})
    
    /// View source
    fileprivate static var _viewSource = JSON({})
    
    // public
    
    public static var constants: JSON {
        return _constants
    }
    
    public static var generics: Generics {
        return _generics
    }
    
    public static var functionals: JSON {
        return _functionals
    }
    
    public static var viewSource: JSON {
        return _viewSource
    }
    
    public static var root: JSON {
        return _json
    }
    
    public static func setup(withJSON json: JSON) {
        _json = json
        _constants = json["constants"]
        _generics = Generics(json: json["generics"])
        _functionals = json["functionals"]
        _viewSource = json["viewSource"]
    }
}

public protocol FunctionalProtocol {
    init (json: JSON)
}
