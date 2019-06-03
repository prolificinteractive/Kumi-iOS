//
//  AnimationTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit
import SwiftyJSON
import QuartzCore

/// Animation theme.
public final class AnimationTheme {

    /// Extra Fast CABasic Animation Style.
    public var extraFastCABasicAnimationStyle: CABasicAnimationStyle

    /// Fast CABasic Animation Style.
    public var fastCABasicAnimationStyle: CABasicAnimationStyle

    /// Normal CABasic Animation Style.
    public var normalCABasicAnimationStyle: CABasicAnimationStyle

    /// Slow CABasic Animation Style.
    public var slowCABasicAnimationStyle: CABasicAnimationStyle

    /// Extra Slow CABasic Animation Style.
    public var extraSlowCABasicAnimationStyle: CABasicAnimationStyle

    /// Extra Fast UIView Animation Style.
    public var extraFastUIViewAnimationStyle: UIViewAnimationStyle

    /// Fast UIView Animation Style.
    public var fastUIViewAnimationStyle: UIViewAnimationStyle

    /// Normal UIView Animation Style.
    public var normalUIViewAnimationStyle: UIViewAnimationStyle

    /// Slow UIView Animation Style.
    public var slowUIViewAnimationStyle: UIViewAnimationStyle

    /// Extra Slow UIView Animation Style.
    public var extraSlowUIViewAnimationStyle: UIViewAnimationStyle

    public init(json: JSON) {

        let CABasicAnimationsJSON = json["CABasicAnimations"]
        
        extraFastCABasicAnimationStyle = CABasicAnimationStyle(json: CABasicAnimationsJSON["extraFast"].kumiValue)

        fastCABasicAnimationStyle = CABasicAnimationStyle(json: CABasicAnimationsJSON["fast"].kumiValue)

        normalCABasicAnimationStyle = CABasicAnimationStyle(json: CABasicAnimationsJSON["normal"].kumiValue)

        slowCABasicAnimationStyle = CABasicAnimationStyle(json: CABasicAnimationsJSON["slow"].kumiValue)

        extraSlowCABasicAnimationStyle = CABasicAnimationStyle(json: CABasicAnimationsJSON["extraSlow"].kumiValue)
        


        let UIViewAnimationsJSON = json["UIViewAnimations"]
            
        extraFastUIViewAnimationStyle = UIViewAnimationStyle(json: UIViewAnimationsJSON["extraFast"].kumiValue)
        
        fastUIViewAnimationStyle = UIViewAnimationStyle(json: UIViewAnimationsJSON["fast"].kumiValue)
    
        normalUIViewAnimationStyle = UIViewAnimationStyle(json: UIViewAnimationsJSON["normal"].kumiValue)
    
        slowUIViewAnimationStyle = UIViewAnimationStyle(json: UIViewAnimationsJSON["slow"].kumiValue)
    
        extraSlowUIViewAnimationStyle = UIViewAnimationStyle(json: UIViewAnimationsJSON["extraSlow"].kumiValue)

    }

}
