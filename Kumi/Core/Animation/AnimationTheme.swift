//
//  AnimationTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Animation theme.
public struct AnimationTheme {

    /// Extra Fast CABasic Animation Style.
    public var extraFastCABasicAnimationStyle: CABasicAnimationStyle?

    /// Fast CABasic Animation Style.
    public var fastCABasicAnimationStyle: CABasicAnimationStyle?

    /// Normal CABasic Animation Style.
    public var normalCABasicAnimationStyle: CABasicAnimationStyle?

    /// Slow CABasic Animation Style.
    public var slowCABasicAnimationStyle: CABasicAnimationStyle?

    /// Extra Slow CABasic Animation Style.
    public var extraSlowCABasicAnimationStyle: CABasicAnimationStyle?

    /// Extra Fast UIView Animation Style.
    public var extraFastUIViewAnimationStyle: UIViewAnimationStyle?

    /// Fast UIView Animation Style.
    public var fastUIViewAnimationStyle: UIViewAnimationStyle?

    /// Normal UIView Animation Style.
    public var normalUIViewAnimationStyle: UIViewAnimationStyle?

    /// Slow UIView Animation Style.
    public var slowUIViewAnimationStyle: UIViewAnimationStyle?

    /// Extra Slow UIView Animation Style.
    public var extraSlowUIViewAnimationStyle: UIViewAnimationStyle?

    public init?(json: JSON) {

        if let CABasicAnimationsJSON = json["CABasicAnimations"] as? JSON {

            if let extraFastJSON = CABasicAnimationsJSON["extraFast"] as? JSON {
                extraFastCABasicAnimationStyle = CABasicAnimationStyle(json: extraFastJSON)
            }

            if let fastJSON = CABasicAnimationsJSON["fast"] as? JSON {
                fastCABasicAnimationStyle = CABasicAnimationStyle(json: fastJSON)
            }

            if let normalJSON = CABasicAnimationsJSON["normal"] as? JSON {
                normalCABasicAnimationStyle = CABasicAnimationStyle(json: normalJSON)
            }

            if let slowJSON = CABasicAnimationsJSON["slow"] as? JSON {
                slowCABasicAnimationStyle = CABasicAnimationStyle(json: slowJSON)
            }

            if let extraSlowJSON = CABasicAnimationsJSON["extraSlow"] as? JSON {
                extraSlowCABasicAnimationStyle = CABasicAnimationStyle(json: extraSlowJSON)
            }

        }

        if let UIViewAnimationsJSON = json["UIViewAnimations"] as? JSON {

            if let extraFastJSON = UIViewAnimationsJSON["extraFast"] as? JSON {
                extraFastUIViewAnimationStyle = UIViewAnimationStyle(json: extraFastJSON)
            }

            if let fastJSON = UIViewAnimationsJSON["fast"] as? JSON {
                fastUIViewAnimationStyle = UIViewAnimationStyle(json: fastJSON)
            }

            if let normalJSON = UIViewAnimationsJSON["normal"] as? JSON {
                normalUIViewAnimationStyle = UIViewAnimationStyle(json: normalJSON)
            }

            if let slowJSON = UIViewAnimationsJSON["slow"] as? JSON {
                slowUIViewAnimationStyle = UIViewAnimationStyle(json: slowJSON)
            }

            if let extraSlowJSON = UIViewAnimationsJSON["extraSlow"] as? JSON {
                extraSlowUIViewAnimationStyle = UIViewAnimationStyle(json: extraSlowJSON)
            }

        }

    }

}
