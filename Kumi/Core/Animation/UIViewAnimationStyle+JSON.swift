//
//  UIViewAnimationStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension UIViewAnimationStyle {
    
    public init?(json: Any?) {
        
        guard let json = json as? JSON else {
            return nil
        }
        
        guard let animationStyle = UIViewAnimationStyle(json: json) else {
            return nil
        }
        
        self = animationStyle
    }

    public init?(json: JSON) {

        var duration: TimeInterval = 0.35
        var delay: TimeInterval = 0
        var dampingRatio: CGFloat = 1
        var velocity: CGFloat = 0

        if let durationValue = json["duration"] as? TimeInterval {
            duration = durationValue
        }

        if let delayValue = json["delay"] as? TimeInterval {
            delay = delayValue
        }

        if let dampingRatioValue = json["dampingRatio"] as? CGFloat {
            dampingRatio = dampingRatioValue
        }

        if let velocityValue = json["velocity"] as? CGFloat {
            velocity = velocityValue
        }

        self.init(duration: duration,
                  delay: delay,
                  dampingRatio: dampingRatio,
                  velocity: velocity)
    }

}
