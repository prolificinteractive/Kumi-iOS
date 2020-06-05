//
//  LayerTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Kumi layer theme.
import SwiftyJSON
import QuartzCore

public final class LayerTheme {

    /// Text input tertiary Layer Style Set.
    public var textInputTertiary: LayerStyleSet!
    
    /// Text input secondary Layer Style Set.
    public var textInputSecondary: LayerStyleSet!
    
    /// Text input primary Layer Style Set.
    public var textInputPrimary: LayerStyleSet!
    
    /// Button tertiary Layer Style Set.
    public var buttonTertiary: LayerStyleSet!
    
    /// Button secondary Layer Style Set.
    public var buttonSecondary: LayerStyleSet!
    
    /// Button primary Layer Style Set.
    public var buttonPrimary: LayerStyleSet!
    
    /// List tertiary Layer Style Set.
    public var listTertiary: LayerStyleSet!
    
    /// List secondary Layer Style Set.
    public var listSecondary: LayerStyleSet!
    
    /// List primary Layer Style Set.
    public var listPrimary: LayerStyleSet!
    
    /// Grid tertiary Layer Style Set.
    public var gridTertiary: LayerStyleSet!
    
    /// Grid secondary Layer Style Set.
    public var gridSecondary: LayerStyleSet!
    
    /// Grid primary Layer Style Set.
    public var gridPrimary: LayerStyleSet!
    
    /// Default tertiary Layer Style Set.
    public var defaultTertiary: LayerStyleSet!
    
    /// Default secondary Layer Style Set.
    public var defaultSecondary: LayerStyleSet!
    
    /// Default primary Layer Style Set.
    public var defaultPrimary: LayerStyleSet!

    public init(json: JSON) {
        
        defaultPrimary = LayerStyleSet(json: json["defaultPrimary"].kumiValue)
        
        defaultSecondary = LayerStyleSet(json: json["defaultSecondary"].kumiValue, defaultLayerStyle: defaultPrimary.normal)
        
        defaultTertiary = LayerStyleSet(json: json["defaultTertiary"].kumiValue, defaultLayerStyle: defaultSecondary.normal)
        
        gridPrimary = LayerStyleSet(json: json["gridPrimary"].kumiValue, defaultLayerStyle: defaultPrimary.normal)
        
        gridSecondary = LayerStyleSet(json: json["gridSecondary"].kumiValue, defaultLayerStyle: gridPrimary.normal)
        
        gridTertiary = LayerStyleSet(json: json["gridTertiary"].kumiValue, defaultLayerStyle: gridSecondary.normal)
        
        listPrimary = LayerStyleSet(json: json["listPrimary"].kumiValue, defaultLayerStyle: defaultPrimary.normal)
        
        listSecondary = LayerStyleSet(json: json["listSecondary"].kumiValue, defaultLayerStyle: listPrimary.normal)
        
        listTertiary = LayerStyleSet(json: json["listTertiary"].kumiValue, defaultLayerStyle: listSecondary.normal)
        
        buttonPrimary = LayerStyleSet(json: json["buttonPrimary"].kumiValue, defaultLayerStyle: defaultPrimary.normal)
        
        buttonSecondary = LayerStyleSet(json: json["buttonSecondary"].kumiValue, defaultLayerStyle: buttonPrimary.normal)
        
        buttonTertiary = LayerStyleSet(json: json["buttonTertiary"].kumiValue, defaultLayerStyle: buttonSecondary.normal)
        
        textInputPrimary = LayerStyleSet(json: json["textInputPrimary"].kumiValue, defaultLayerStyle: defaultPrimary.normal)
        
        textInputSecondary = LayerStyleSet(json: json["textInputSecondary"].kumiValue, defaultLayerStyle: textInputPrimary.normal)
        
        textInputTertiary = LayerStyleSet(json: json["textInputTertiary"].kumiValue, defaultLayerStyle: textInputSecondary.normal)
        
    }
}