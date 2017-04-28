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

    public let duration: TimeInterval
    public let delay: TimeInterval
    public let dampingRatio: CGFloat
    public let velocity: CGFloat
    public let options: UIViewAnimationOptions

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

}
