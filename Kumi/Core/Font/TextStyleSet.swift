//
//  TextStyleSet.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker

public struct TextStyleSet {
    
    public var regular: TextStyle
    
    public var strong: TextStyle
    
    public var emphasis: TextStyle
    
    public init(normal: TextStyle, strong: TextStyle?, emphasis: TextStyle?) {
        self.regular = normal
        self.strong = strong ?? normal
        self.emphasis = emphasis ?? normal
    }
    
}

