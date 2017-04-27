//
//  LayerTheme.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/17/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

public protocol LayerTheme {

    var none: LayerStyle { get }

    /// default Primary Layer style.
    var defaultPrimaryLayerStyle: LayerStyle { get }

    /// default Secondary Layer style.
    var defaultSecondaryLayerStyle: LayerStyle { get }

    /// default Tertiary Layer style.
    var defaultTertiaryLayerStyle: LayerStyle { get }

    /// row Primary Layer style.
    var rowPrimaryLayerStyle: LayerStyle { get }

    /// row Primary HighlightedLayer style.
    var rowPrimaryHighlightedLayerStyle: LayerStyle { get }

    /// row Primary SelectedLayer style.
    var rowPrimarySelectedLayerStyle: LayerStyle { get }

    /// row Primary DisabledLayer style.
    var rowPrimaryDisabledLayerStyle: LayerStyle { get }

    /// row Secondary Layer style.
    var rowSecondaryLayerStyle: LayerStyle { get }

    /// row Secondary HighlightedLayer style.
    var rowSecondaryHighlightedLayerStyle: LayerStyle { get }

    /// row Secondary SelectedLayer style.
    var rowSecondarySelectedLayerStyle: LayerStyle { get }

    /// row Secondary DisabledLayer style.
    var rowSecondaryDisabledLayerStyle: LayerStyle { get }

    /// row Tertiary Layer style.
    var rowTertiaryLayerStyle: LayerStyle { get }

    /// row Tertiary HighlightedLayer style.
    var rowTertiaryHighlightedLayerStyle: LayerStyle { get }

    /// row Tertiary SelectedLayer style.
    var rowTertiarySelectedLayerStyle: LayerStyle { get }

    /// row Tertiary DisabledLayer style.
    var rowTertiaryDisabledLayerStyle: LayerStyle { get }

    /// cell Primary Layer style.
    var cellPrimaryLayerStyle: LayerStyle { get }

    /// cell Primary HighlightedLayer style.
    var cellPrimaryHighlightedLayerStyle: LayerStyle { get }

    /// cell Primary SelectedLayer style.
    var cellPrimarySelectedLayerStyle: LayerStyle { get }

    /// cell Primary DisabledLayer style.
    var cellPrimaryDisabledLayerStyle: LayerStyle { get }

    /// cell Secondary Layer style.
    var cellSecondaryLayerStyle: LayerStyle { get }

    /// cell Secondary HighlightedLayer style.
    var cellSecondaryHighlightedLayerStyle: LayerStyle { get }

    /// cell Secondary SelectedLayer style.
    var cellSecondarySelectedLayerStyle: LayerStyle { get }

    /// cell Secondary DisabledLayer style.
    var cellSecondaryDisabledLayerStyle: LayerStyle { get }

    /// cell Tertiary Layer style.
    var cellTertiaryLayerStyle: LayerStyle { get }

    /// cell Tertiary HighlightedLayer style.
    var cellTertiaryHighlightedLayerStyle: LayerStyle { get }

    /// cell Tertiary SelectedLayer style.
    var cellTertiarySelectedLayerStyle: LayerStyle { get }

    /// cell Tertiary DisabledLayer style.
    var cellTertiaryDisabledLayerStyle: LayerStyle { get }

    /// button Primary Layer style.
    var buttonPrimaryLayerStyle: LayerStyle { get }

    /// button Primary HighlightedLayer style.
    var buttonPrimaryHighlightedLayerStyle: LayerStyle { get }

    /// button Primary SelectedLayer style.
    var buttonPrimarySelectedLayerStyle: LayerStyle { get }

    /// button Primary DisabledLayer style.
    var buttonPrimaryDisabledLayerStyle: LayerStyle { get }

    /// button Secondary Layer style.
    var buttonSecondaryLayerStyle: LayerStyle { get }

    /// button Secondary HighlightedLayer style.
    var buttonSecondaryHighlightedLayerStyle: LayerStyle { get }

    /// button Secondary SelectedLayer style.
    var buttonSecondarySelectedLayerStyle: LayerStyle { get }

    /// button Secondary DisabledLayer style.
    var buttonSecondaryDisabledLayerStyle: LayerStyle { get }

    /// button Tertiary Layer style.
    var buttonTertiaryLayerStyle: LayerStyle { get }

    /// button Tertiary HighlightedLayer style.
    var buttonTertiaryHighlightedLayerStyle: LayerStyle { get }

    /// button Tertiary SelectedLayer style.
    var buttonTertiarySelectedLayerStyle: LayerStyle { get }

    /// button Tertiary DisabledLayer style.
    var buttonTertiaryDisabledLayerStyle: LayerStyle { get }

}
