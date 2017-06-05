//
//  CABasicAnimationStyle+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension CABasicAnimationStyle {
    
    init?(json: JSON) {
        
        var duration: TimeInterval = 0.35
        var delay: TimeInterval = 0
        var timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(controlPoints: 0, 0, 1, 1)
        var isRemovedOnCompletion: Bool = false
        
        if let durationValue = json["duration"] as? TimeInterval {
            duration = durationValue
        }
        
        if let delayValue = json["delay"] as? TimeInterval {
            delay = delayValue
        }
        
        if let timingFunctionJSON = json["timingFunction"] as? JSON {
            if let timingFunctionValue = CAMediaTimingFunction(json: timingFunctionJSON) {
                timingFunction = timingFunctionValue
            }
        }
        
        if let isRemovedOnCompletionValue = json["isRemovedOnCompletion"] as? Bool {
            isRemovedOnCompletion = isRemovedOnCompletionValue
        }
    
        self.init(duration: duration,
                  delay: delay,
                  timingFunction: timingFunction,
                  isRemovedOnCompletion: isRemovedOnCompletion)
    }
    
}
