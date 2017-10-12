//
//  Element.swift
//  Marker
//
//  Created by Htin Linn on 5/8/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

internal typealias Index = String.CharacterView.Index

/// Markup element. Contains a symbol and the range it applies to.
internal struct Element {
    
    /// Markup symbol.
    let symbol: Symbol
    
    /// Range that the receiver applies to.
    let range: Range<Index>
    
}
