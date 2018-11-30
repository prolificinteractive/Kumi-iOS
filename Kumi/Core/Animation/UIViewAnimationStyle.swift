//
//  UIViewAnimationStyle.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Kumi UIView animation style that encapsulates animation style information to be applied when animating UIView.
public struct UIViewAnimationStyle {

    /// The view animation duration.
    public var duration: TimeInterval

    /// The view animation delay.
    public var delay: TimeInterval

    /// The view animation damping ratio.
    public var dampingRatio: CGFloat

    /// The view animation velocity.
    public var velocity: CGFloat
    
    /// The view animation options.
    #if swift(>=4.2)
    public var options: UIView.AnimationOptions
    #else
    public var options: UIViewAnimationOptions
    #endif
    
    /// Initializes the view animation style.
    ///
    /// - Parameters:
    ///   - duration: The duration to use.
    ///   - delay: The delay to use.
    ///   - dampingRatio: The damping ratio to use.
    ///   - velocity: The velocity to use.
    ///   - options: The options to use.
    #if swift(>=4.2)
    public init(duration: TimeInterval = 0.35,
    delay: TimeInterval = 0,
    dampingRatio: CGFloat = 1,
    velocity: CGFloat = 0,
    options: UIView.AnimationOptions = [.allowUserInteraction]) {
    self.duration = duration
    self.delay = delay
    self.dampingRatio = dampingRatio
    self.velocity = velocity
    self.options = options
    }
    #else
    public init(duration: TimeInterval = 0.35,
                delay: TimeInterval = 0,
                dampingRatio: CGFloat = 1,
                velocity: CGFloat = 0,
                options: UIViewAnimationOptions = [.allowUserInteraction]) {
        self.duration = duration
        self.delay = delay
        self.dampingRatio = dampingRatio
        self.velocity = velocity
        self.options = options
    }
    #endif
    
}
