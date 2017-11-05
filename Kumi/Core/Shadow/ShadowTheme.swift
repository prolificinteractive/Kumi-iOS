//
//  ShadowTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

/// Defines an interface for fonts used in the app.
public struct ShadowTheme {

    /// None Shadow Style.
    public var noneShadowStyle: ShadowStyle?

    /// Extra Small Shadow Style.
    public var extraSmallShadowStyle: ShadowStyle?

    /// Small Shadow Style.
    public var smallShadowStyle: ShadowStyle?

    /// Medium Shadow Style.
    public var mediumShadowStyle: ShadowStyle?

    /// Large Shadow Style.
    public var largeShadowStyle: ShadowStyle?

    /// Extra Large Shadow Style.
    public var extraLargeShadowStyle: ShadowStyle?

    // MARK: - Relative Shadow to Elevation

    /// Radius Ratio to Elevetion Value.
    public var radiusRatio: CGFloat = 1.5

    /// Offset X Ratio to Elevetion Value.
    public var offsetXRatio: CGFloat = 0

    /// Offset Y Ratio to Elevetion Value.
    public var offsetYRatio: CGFloat = 1

    /// Allows to create a shadow based on the elevation.
    ///
    /// - Parameter elevation: The elevation to use.
    /// - Returns: The shadow style.
    public func byElevation(_ elevation: CGFloat) -> ShadowStyle {
        let shadowRadius = elevation * radiusRatio
        let shadowOffset = CGSize(width: elevation * offsetXRatio,
                                  height: elevation * offsetYRatio)

        return ShadowStyle(shadowOpacity: 1,
                           shadowRadius: shadowRadius,
                           shadowOffset: shadowOffset)
    }

    public init?(json: JSON) {

        
        noneShadowStyle = ShadowStyle(json: json["none"])
    
        extraSmallShadowStyle = ShadowStyle(json: json["extraSmall"])
    
        smallShadowStyle = ShadowStyle(json: json["small"])
    
        mediumShadowStyle = ShadowStyle(json: json["medium"])
    
        largeShadowStyle = ShadowStyle(json: json["large"])
    
        extraLargeShadowStyle = ShadowStyle(json: json["extraLarge"])
    

        let relativeElevationAttributesJSON = json["relativeElevationAttributes"] as? JSON

        if let radiusRatioValue = relativeElevationAttributesJSON?["radiusRatio"] as? CGFloat {
            radiusRatio = radiusRatioValue
        }

        if let offsetXRatioValue = relativeElevationAttributesJSON?["offsetXRatio"] as? CGFloat {
            offsetXRatio = offsetXRatioValue
        }

        if let offsetYRatioValue = relativeElevationAttributesJSON?["offsetYRatio"] as? CGFloat {
            offsetYRatio = offsetYRatioValue
        }

    }

}
