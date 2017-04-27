//
//  UIViewAnimationStyle.swift
//  Prolific David Yurman Prototype
//
//  Created by VIRAKRI JINANGKUL on 3/26/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

public struct UIViewAnimationStyle {

    public var duration: TimeInterval

    public var delay: TimeInterval

    public var dampingRatio: CGFloat

    public var velocity: CGFloat

    public var options: UIViewAnimationOptions = []

    init(duration: TimeInterval,
         delay: TimeInterval = 0,
         dampingRatio: CGFloat = 1,
         velocity: CGFloat = 0,
         options: UIViewAnimationOptions = []) {

        self.duration = duration

        self.delay = delay

        self.dampingRatio = dampingRatio

        self.velocity = velocity

        self.options = options

    }

    public func withDuration(_ duration: TimeInterval) -> UIViewAnimationStyle {
        var animationStyle = self
        animationStyle.duration = duration
        return animationStyle
    }

    public func withDelay(_ delay: TimeInterval) -> UIViewAnimationStyle {
        var animationStyle = self
        animationStyle.delay = delay
        return animationStyle
    }

    public func withDampingRatio(_ dampingRatio: CGFloat) -> UIViewAnimationStyle {
        var animationStyle = self
        animationStyle.dampingRatio = dampingRatio
        return animationStyle
    }

    public func withVelocity(_ velocity: CGFloat) -> UIViewAnimationStyle {
        var animationStyle = self
        animationStyle.velocity = velocity
        return animationStyle
    }

    public func withAnimationOptions(_ options: UIViewAnimationOptions) -> UIViewAnimationStyle {
        var animationStyle = self
        animationStyle.options = options
        return animationStyle
    }

}
