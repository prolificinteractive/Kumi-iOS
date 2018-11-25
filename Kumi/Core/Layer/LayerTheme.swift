//
//  LayerTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Kumi layer theme.
import SwiftyJSON

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
        
        defaultPrimary = LayerStyleSet(json: json["defaultPrimary"])
        
        defaultSecondary = LayerStyleSet(json: json["defaultSecondary"], defaultLayerStyle: defaultPrimary.normal) 
        
        defaultTertiary = LayerStyleSet(json: json["defaultTertiary"], defaultLayerStyle: defaultSecondary.normal) 
        
        gridPrimary = LayerStyleSet(json: json["gridPrimary"], defaultLayerStyle: defaultPrimary.normal) 
        
        gridSecondary = LayerStyleSet(json: json["gridSecondary"], defaultLayerStyle: gridPrimary.normal) 
        
        gridTertiary = LayerStyleSet(json: json["gridTertiary"], defaultLayerStyle: gridSecondary.normal) 
        
        listPrimary = LayerStyleSet(json: json["listPrimary"], defaultLayerStyle: defaultPrimary.normal) 
        
        listSecondary = LayerStyleSet(json: json["listSecondary"], defaultLayerStyle: listPrimary.normal) 
        
        listTertiary = LayerStyleSet(json: json["listTertiary"], defaultLayerStyle: listSecondary.normal) 
        
        buttonPrimary = LayerStyleSet(json: json["buttonPrimary"], defaultLayerStyle: defaultPrimary.normal) 
        
        buttonSecondary = LayerStyleSet(json: json["buttonSecondary"], defaultLayerStyle: buttonPrimary.normal) 
        
        buttonTertiary = LayerStyleSet(json: json["buttonTertiary"], defaultLayerStyle: buttonSecondary.normal) 
        
        textInputPrimary = LayerStyleSet(json: json["textInputPrimary"], defaultLayerStyle: defaultPrimary.normal) 
        
        textInputSecondary = LayerStyleSet(json: json["textInputSecondary"], defaultLayerStyle: textInputPrimary.normal) 
        
        textInputTertiary = LayerStyleSet(json: json["textInputTertiary"], defaultLayerStyle: textInputSecondary.normal)
        
        [
            "defaultPrimary": defaultPrimary,
            "defaultSecondary": defaultSecondary,
            "defaultTertiary": defaultTertiary,
            "gridPrimary": gridPrimary,
            "gridSecondary": gridSecondary,
            "gridTertiary": gridTertiary,
            "listPrimary": listPrimary,
            "listSecondary": listSecondary,
            "listTertiary": listTertiary,
            "buttonPrimary": buttonPrimary,
            "buttonSecondary": buttonSecondary,
            "buttonTertiary": buttonTertiary,
            "textInputPrimary": textInputPrimary,
            "textInputSecondary": textInputSecondary,
            "textInputTertiary": textInputTertiary
            ].forEach { (key, value) in
                let dict: [String: Any] = [
                    "texts.\(key)": value!,
                    "texts.\(key).normal": value!.normal,
                    "texts.\(key).selected": value!.selected,
                    "texts.\(key).highlighted": value!.highlighted,
                    "layers.\(key).disabled": value!.disabled,
                    "layers.\(key).focused": value!.focused
                ]
                Generics.dictionary.merge(dict) { l, r in return l }
        }
        
    }
}
