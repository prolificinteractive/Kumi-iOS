//
//  CABasicAnimationStyle.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

/**
 *  Encapsulates animation style information to be applied when animating CALayer.
 */
public struct CABasicAnimationStyle {

    public var duration: TimeInterval

    public var delay: TimeInterval

    public var timingFunction: CAMediaTimingFunction

    public var isRemovedOnCompletion: Bool

    init(duration: TimeInterval,
         delay: TimeInterval = 0,
         timingFunction: CAMediaTimingFunction,
         isRemovedOnCompletion: Bool = false) {
        self.duration = duration
        self.delay = delay
        self.timingFunction = timingFunction
        self.isRemovedOnCompletion = isRemovedOnCompletion

    }

    public func withDuration(_ duration: TimeInterval) -> CABasicAnimationStyle {
        var animationStyle = self
        animationStyle.duration = duration
        return animationStyle
    }

    public func withDelay(_ delay: TimeInterval) -> CABasicAnimationStyle {
        var animationStyle = self
        animationStyle.delay = delay
        return animationStyle
    }

    public func withTimingFunction(_ timingFunction: CAMediaTimingFunction) -> CABasicAnimationStyle {
        var animationStyle = self
        animationStyle.timingFunction = timingFunction
        return animationStyle
    }

    public func withRemoveOnCompletion(_ isRemovedOnCompletion: Bool) -> CABasicAnimationStyle {
        var animationStyle = self
        animationStyle.isRemovedOnCompletion = isRemovedOnCompletion
        return animationStyle
    }

}
