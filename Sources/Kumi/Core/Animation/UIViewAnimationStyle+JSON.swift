//
//  UIViewAnimationStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//
import SwiftyJSON
import QuartzCore

extension UIViewAnimationStyle {

    public init(json _json: JSON) {
        let json = _json.kumiValue
        var duration: TimeInterval = 0.35
        var delay: TimeInterval = 0
        var dampingRatio: CGFloat = 1
        var velocity: CGFloat = 0

        if let durationValue = json["duration"].kumiValue.double {
            duration = durationValue
        }

        if let delayValue = json["delay"].kumiValue.double {
            delay = delayValue
        }

        if let dampingRatioValue = json["dampingRatio"].kumiValue.cgFloat {
            dampingRatio = dampingRatioValue
        }

        if let velocityValue = json["velocity"].kumiValue.cgFloat {
            velocity = velocityValue
        }

        self.init(duration: duration,
                  delay: delay,
                  dampingRatio: dampingRatio,
                  velocity: velocity)
    }

}
