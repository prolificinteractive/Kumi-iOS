//
//  ShadowStyle.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

/**
 *  Encapsulates style information to be applied when displaying or animating CALayer's shadow.
 */
public struct ShadowStyle {

    // MARK: - Properties

    /// Font for displaying regular text.
    public var shadowOpacity: Float

    /// Font for displaying regular text.
    public var shadowRadius: CGFloat

    /// Font for displaying regular text.
    public var shadowOffset: CGSize

    /// Font for displaying regular text.
    public var shadowColor: CGColor?

    public init(shadowOpacity: Float = 1.0,
                shadowRadius: CGFloat,
                shadowOffset: CGSize,
                shadowColor: CGColor? = nil) {
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
        self.shadowOffset = shadowOffset
        self.shadowColor = shadowColor
    }

    public func withShadowOpacity(_ shadowOpacity: Float) -> ShadowStyle {
        var shadowStyle = self
        shadowStyle.shadowOpacity = shadowOpacity
        return shadowStyle
    }

    public func withShadowRadius(_ shadowRadius: CGFloat) -> ShadowStyle {
        var shadowStyle = self
        shadowStyle.shadowRadius = shadowRadius
        return shadowStyle
    }

    public func withShadowOffset(_ shadowOffset: CGSize) -> ShadowStyle {
        var shadowStyle = self
        shadowStyle.shadowOffset = shadowOffset
        return shadowStyle
    }

    public func withsShadowColor(_ shadowColor: CGColor) -> ShadowStyle {
        var shadowStyle = self
        shadowStyle.shadowColor = shadowColor
        return shadowStyle
    }

}
