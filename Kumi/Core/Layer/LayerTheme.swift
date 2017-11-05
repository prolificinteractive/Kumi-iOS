//
//  LayerTheme.Swift
//  Kumi
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Kumi layer theme.

public struct LayerTheme {

    /// Empty Layer Style.
    public var emptyLayerStyle: LayerStyle?

    /// Primary Normal Layer Style.
    public var primaryNormalLayerStyle: LayerStyle?

    /// Primary Hightlighted Layer Style.
    public var primaryHightlightedLayerStyle: LayerStyle?

    /// Primary Focused Layer Style.
    public var primaryFocusedLayerStyle: LayerStyle?

    /// Primary Selected Layer Style.
    public var primarySelectedLayerStyle: LayerStyle?

    /// Primary Diabled Layer Style.
    public var primaryDiabledLayerStyle: LayerStyle?

    /// Secondary Normal Layer Style.
    public var secondaryNormalLayerStyle: LayerStyle?

    /// Secondary Hightlighted Layer Style.
    public var secondaryHightlightedLayerStyle: LayerStyle?

    /// Secondary Focused Layer Style.
    public var secondaryFocusedLayerStyle: LayerStyle?

    /// Secondary Selected Layer Style.
    public var secondarySelectedLayerStyle: LayerStyle?

    /// Secondary Diabled Layer Style.
    public var secondaryDiabledLayerStyle: LayerStyle?

    /// Tertiary Normal Layer Style.
    public var tertiaryNormalLayerStyle: LayerStyle?

    /// Tertiary Hightlighted Layer Style.
    public var tertiaryHightlightedLayerStyle: LayerStyle?

    /// Tertiary Focused Layer Style.
    public var tertiaryFocusedLayerStyle: LayerStyle?

    /// Tertiary Selected Layer Style.
    public var tertiarySelectedLayerStyle: LayerStyle?

    /// Tertiary Diabled Layer Style.
    public var tertiaryDiabledLayerStyle: LayerStyle?

    /// Button Primary Normal Layer Style.
    public var buttonPrimaryNormalLayerStyle: LayerStyle?

    /// Button Primary Hightlighted Layer Style.
    public var buttonPrimaryHightlightedLayerStyle: LayerStyle?

    /// Button Primary Focused Layer Style.
    public var buttonPrimaryFocusedLayerStyle: LayerStyle?

    /// Button Primary Selected Layer Style.
    public var buttonPrimarySelectedLayerStyle: LayerStyle?

    /// Button Primary Diabled Layer Style.
    public var buttonPrimaryDiabledLayerStyle: LayerStyle?

    /// Button Secondary Normal Layer Style.
    public var buttonSecondaryNormalLayerStyle: LayerStyle?

    /// Button Secondary Hightlighted Layer Style.
    public var buttonSecondaryHightlightedLayerStyle: LayerStyle?

    /// Button Secondary Focused Layer Style.
    public var buttonSecondaryFocusedLayerStyle: LayerStyle?

    /// Button Secondary Selected Layer Style.
    public var buttonSecondarySelectedLayerStyle: LayerStyle?

    /// Button Secondary Diabled Layer Style.
    public var buttonSecondaryDiabledLayerStyle: LayerStyle?

    /// Button Tertiary Normal Layer Style.
    public var buttonTertiaryNormalLayerStyle: LayerStyle?

    /// Button Tertiary Hightlighted Layer Style.
    public var buttonTertiaryHightlightedLayerStyle: LayerStyle?

    /// Button Tertiary Focused Layer Style.
    public var buttonTertiaryFocusedLayerStyle: LayerStyle?

    /// Button Tertiary Selected Layer Style.
    public var buttonTertiarySelectedLayerStyle: LayerStyle?

    /// Button Tertiary Diabled Layer Style.
    public var buttonTertiaryDiabledLayerStyle: LayerStyle?

    /// Grid Primary Normal Layer Style.
    public var gridPrimaryNormalLayerStyle: LayerStyle?

    /// Grid Primary Hightlighted Layer Style.
    public var gridPrimaryHightlightedLayerStyle: LayerStyle?

    /// Grid Primary Focused Layer Style.
    public var gridPrimaryFocusedLayerStyle: LayerStyle?

    /// Grid Primary Selected Layer Style.
    public var gridPrimarySelectedLayerStyle: LayerStyle?

    /// Grid Primary Diabled Layer Style.
    public var gridPrimaryDiabledLayerStyle: LayerStyle?

    /// Grid Secondary Normal Layer Style.
    public var gridSecondaryNormalLayerStyle: LayerStyle?

    /// Grid Secondary Hightlighted Layer Style.
    public var gridSecondaryHightlightedLayerStyle: LayerStyle?

    /// Grid Secondary Focused Layer Style.
    public var gridSecondaryFocusedLayerStyle: LayerStyle?

    /// Grid Secondary Selected Layer Style.
    public var gridSecondarySelectedLayerStyle: LayerStyle?

    /// Grid Secondary Diabled Layer Style.
    public var gridSecondaryDiabledLayerStyle: LayerStyle?

    /// Grid Tertiary Normal Layer Style.
    public var gridTertiaryNormalLayerStyle: LayerStyle?

    /// Grid Tertiary Hightlighted Layer Style.
    public var gridTertiaryHightlightedLayerStyle: LayerStyle?

    /// Grid Tertiary Focused Layer Style.
    public var gridTertiaryFocusedLayerStyle: LayerStyle?

    /// Grid Tertiary Selected Layer Style.
    public var gridTertiarySelectedLayerStyle: LayerStyle?

    /// Grid Tertiary Diabled Layer Style.
    public var gridTertiaryDiabledLayerStyle: LayerStyle?

    /// List Primary Normal Layer Style.
    public var listPrimaryNormalLayerStyle: LayerStyle?

    /// List Primary Hightlighted Layer Style.
    public var listPrimaryHightlightedLayerStyle: LayerStyle?

    /// List Primary Focused Layer Style.
    public var listPrimaryFocusedLayerStyle: LayerStyle?

    /// List Primary Selected Layer Style.
    public var listPrimarySelectedLayerStyle: LayerStyle?

    /// List Primary Diabled Layer Style.
    public var listPrimaryDiabledLayerStyle: LayerStyle?

    /// List Secondary Normal Layer Style.
    public var listSecondaryNormalLayerStyle: LayerStyle?

    /// List Secondary Hightlighted Layer Style.
    public var listSecondaryHightlightedLayerStyle: LayerStyle?

    /// List Secondary Focused Layer Style.
    public var listSecondaryFocusedLayerStyle: LayerStyle?

    /// List Secondary Selected Layer Style.
    public var listSecondarySelectedLayerStyle: LayerStyle?

    /// List Secondary Diabled Layer Style.
    public var listSecondaryDiabledLayerStyle: LayerStyle?

    /// List Tertiary Normal Layer Style.
    public var listTertiaryNormalLayerStyle: LayerStyle?

    /// List Tertiary Hightlighted Layer Style.
    public var listTertiaryHightlightedLayerStyle: LayerStyle?

    /// List Tertiary Focused Layer Style.
    public var listTertiaryFocusedLayerStyle: LayerStyle?

    /// List Tertiary Selected Layer Style.
    public var listTertiarySelectedLayerStyle: LayerStyle?

    /// List Tertiary Diabled Layer Style.
    public var listTertiaryDiabledLayerStyle: LayerStyle?

    public init?(json: JSON) {
        
            emptyLayerStyle = LayerStyle(json: json["empty"])
        
            primaryNormalLayerStyle = LayerStyle(json: json["primaryNormal"])
        
            primaryHightlightedLayerStyle = LayerStyle(json: json["primaryHightlighted"])
        
            primaryFocusedLayerStyle = LayerStyle(json: json["primaryFocused"])
        
            primarySelectedLayerStyle = LayerStyle(json: json["primarySelected"])
        
            primaryDiabledLayerStyle = LayerStyle(json: json["primaryDiabled"])
        
            secondaryNormalLayerStyle = LayerStyle(json: json["secondaryNormal"])
        
            secondaryHightlightedLayerStyle = LayerStyle(json: json["secondaryHightlighted"])
        
            secondaryFocusedLayerStyle = LayerStyle(json: json["secondaryFocused"])
        
            secondarySelectedLayerStyle = LayerStyle(json: json["secondarySelected"])
        
            secondaryDiabledLayerStyle = LayerStyle(json: json["secondaryDiabled"])
        
            tertiaryNormalLayerStyle = LayerStyle(json: json["tertiaryNormal"])
        
            tertiaryHightlightedLayerStyle = LayerStyle(json: json["tertiaryHightlighted"])
        
            tertiaryFocusedLayerStyle = LayerStyle(json: json["tertiaryFocused"])
        
            tertiarySelectedLayerStyle = LayerStyle(json: json["tertiarySelected"])
        
            tertiaryDiabledLayerStyle = LayerStyle(json: json["tertiaryDiabled"])
        
            buttonPrimaryNormalLayerStyle = LayerStyle(json: json["buttonPrimaryNormal"])
        
            buttonPrimaryHightlightedLayerStyle = LayerStyle(json: json["buttonPrimaryHightlighted"])
        
            buttonPrimaryFocusedLayerStyle = LayerStyle(json: json["buttonPrimaryFocused"])
        
            buttonPrimarySelectedLayerStyle = LayerStyle(json: json["buttonPrimarySelected"])
        
            buttonPrimaryDiabledLayerStyle = LayerStyle(json: json["buttonPrimaryDiabled"])
        
            buttonSecondaryNormalLayerStyle = LayerStyle(json: json["buttonSecondaryNormal"])
        
            buttonSecondaryHightlightedLayerStyle = LayerStyle(json: json["buttonSecondaryHightlighted"])
        
            buttonSecondaryFocusedLayerStyle = LayerStyle(json: json["buttonSecondaryFocused"])
        
            buttonSecondarySelectedLayerStyle = LayerStyle(json: json["buttonSecondarySelected"])
        
            buttonSecondaryDiabledLayerStyle = LayerStyle(json: json["buttonSecondaryDiabled"])
        
            buttonTertiaryNormalLayerStyle = LayerStyle(json: json["buttonTertiaryNormal"])
        
            buttonTertiaryHightlightedLayerStyle = LayerStyle(json: json["buttonTertiaryHightlighted"])
        
            buttonTertiaryFocusedLayerStyle = LayerStyle(json: json["buttonTertiaryFocused"])
        
            buttonTertiarySelectedLayerStyle = LayerStyle(json: json["buttonTertiarySelected"])
        
            buttonTertiaryDiabledLayerStyle = LayerStyle(json: json["buttonTertiaryDiabled"])
        
            gridPrimaryNormalLayerStyle = LayerStyle(json: json["gridPrimaryNormal"])
        
            gridPrimaryHightlightedLayerStyle = LayerStyle(json: json["gridPrimaryHightlighted"])
        
            gridPrimaryFocusedLayerStyle = LayerStyle(json: json["gridPrimaryFocused"])
        
            gridPrimarySelectedLayerStyle = LayerStyle(json: json["gridPrimarySelected"])
        
            gridPrimaryDiabledLayerStyle = LayerStyle(json: json["gridPrimaryDiabled"])
        
            gridSecondaryNormalLayerStyle = LayerStyle(json: json["gridSecondaryNormal"])
        
            gridSecondaryHightlightedLayerStyle = LayerStyle(json: json["gridSecondaryHightlighted"])
        
            gridSecondaryFocusedLayerStyle = LayerStyle(json: json["gridSecondaryFocused"])
        
            gridSecondarySelectedLayerStyle = LayerStyle(json: json["gridSecondarySelected"])
        
            gridSecondaryDiabledLayerStyle = LayerStyle(json: json["gridSecondaryDiabled"])
        
            gridTertiaryNormalLayerStyle = LayerStyle(json: json["gridTertiaryNormal"])
        
            gridTertiaryHightlightedLayerStyle = LayerStyle(json: json["gridTertiaryHightlighted"])
        
            gridTertiaryFocusedLayerStyle = LayerStyle(json: json["gridTertiaryFocused"])
        
            gridTertiarySelectedLayerStyle = LayerStyle(json: json["gridTertiarySelected"])
        
            gridTertiaryDiabledLayerStyle = LayerStyle(json: json["gridTertiaryDiabled"])
        
            listPrimaryNormalLayerStyle = LayerStyle(json: json["listPrimaryNormal"])
        
            listPrimaryHightlightedLayerStyle = LayerStyle(json: json["listPrimaryHightlighted"])
        
            listPrimaryFocusedLayerStyle = LayerStyle(json: json["listPrimaryFocused"])
        
            listPrimarySelectedLayerStyle = LayerStyle(json: json["listPrimarySelected"])
        
            listPrimaryDiabledLayerStyle = LayerStyle(json: json["listPrimaryDiabled"])
        
            listSecondaryNormalLayerStyle = LayerStyle(json: json["listSecondaryNormal"])
        
            listSecondaryHightlightedLayerStyle = LayerStyle(json: json["listSecondaryHightlighted"])
        
            listSecondaryFocusedLayerStyle = LayerStyle(json: json["listSecondaryFocused"])
        
            listSecondarySelectedLayerStyle = LayerStyle(json: json["listSecondarySelected"])
        
            listSecondaryDiabledLayerStyle = LayerStyle(json: json["listSecondaryDiabled"])
        
            listTertiaryNormalLayerStyle = LayerStyle(json: json["listTertiaryNormal"])
        
            listTertiaryHightlightedLayerStyle = LayerStyle(json: json["listTertiaryHightlighted"])
        
            listTertiaryFocusedLayerStyle = LayerStyle(json: json["listTertiaryFocused"])
        
            listTertiarySelectedLayerStyle = LayerStyle(json: json["listTertiarySelected"])
        
            listTertiaryDiabledLayerStyle = LayerStyle(json: json["listTertiaryDiabled"])
        
    }
}
