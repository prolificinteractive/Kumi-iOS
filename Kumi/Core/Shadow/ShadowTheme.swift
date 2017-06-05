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
    var noneShadowStyle: ShadowStyle?
    
    /// Extra Small Shadow Style.
    var extraSmallShadowStyle: ShadowStyle?
    
    /// Small Shadow Style.
    var smallShadowStyle: ShadowStyle?
    
    /// Medium Shadow Style.
    var mediumShadowStyle: ShadowStyle?
    
    /// Large Shadow Style.
    var largeShadowStyle: ShadowStyle?
    
    /// Extra Large Shadow Style.
    var extraLargeShadowStyle: ShadowStyle?
    
    // MARK: - Relative Shadow to Elevation
    
    /// Radius Ratio to Elevetion Value.
    var radiusRatio: CGFloat = 1.5
    
    /// Offset X Ratio to Elevetion Value.
    var offsetXRatio: CGFloat = 0
    
    /// Offset Y Ratio to Elevetion Value.
    var offsetYRatio: CGFloat = 1
    
    
    // function allowing to create shadow based on elevation
    func byElevation(_ elevation: CGFloat) -> ShadowStyle {
        let shadowRadius = elevation * radiusRatio
        let shadowOffset = CGSize(width: elevation * offsetXRatio,
                                  height: elevation * offsetYRatio)
        
        return ShadowStyle(shadowOpacity: 1,
                           shadowRadius: shadowRadius,
                           shadowOffset: shadowOffset)
    }
    
    public init?(json: JSON) {
        
        if let noneJSON = json["none"] as? JSON {
            noneShadowStyle = ShadowStyle(json: noneJSON)
        }
        
        if let extraSmallJSON = json["extraSmall"] as? JSON {
            extraSmallShadowStyle = ShadowStyle(json: extraSmallJSON)
        }
        
        if let smallJSON = json["small"] as? JSON {
            smallShadowStyle = ShadowStyle(json: smallJSON)
        }
        
        if let mediumJSON = json["medium"] as? JSON {
            mediumShadowStyle = ShadowStyle(json: mediumJSON)
        }
        
        if let largeJSON = json["large"] as? JSON {
            largeShadowStyle = ShadowStyle(json: largeJSON)
        }
        
        if let extraLargeJSON = json["extraLarge"] as? JSON {
            extraLargeShadowStyle = ShadowStyle(json: extraLargeJSON)
        }
        
        
        if let relativeElevationAttributesJSON = json["relativeElevationAttributes"] as? JSON {
            
            if let radiusRatioValue = relativeElevationAttributesJSON["radiusRatio"] as? CGFloat {
                radiusRatio = radiusRatioValue
            }
            
            if let offsetXRatioValue = relativeElevationAttributesJSON["offsetXRatio"] as? CGFloat {
                offsetXRatio = offsetXRatioValue
            }
            
            if let offsetYRatioValue = relativeElevationAttributesJSON["offsetYRatio"] as? CGFloat {
                offsetYRatio = offsetYRatioValue
            }
        }
    
    }
    
}
