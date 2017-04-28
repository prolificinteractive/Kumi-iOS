//
//  CABasicAnimationStyle.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Kumi CALayer animation style that encapsulates animation style information to be applied when animating CALayer.
public struct CABasicAnimationStyle {

    public let duration: TimeInterval
    public let delay: TimeInterval
    public let timingFunction: CAMediaTimingFunction
    public let isRemovedOnCompletion: Bool

    init(duration: TimeInterval,
         delay: TimeInterval = 0,
         timingFunction: CAMediaTimingFunction,
         isRemovedOnCompletion: Bool = false) {
        self.duration = duration
        self.delay = delay
        self.timingFunction = timingFunction
        self.isRemovedOnCompletion = isRemovedOnCompletion

    }

}
