//
//  ProductLayerTheme.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/17/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

internal struct ProductLayerTheme: LayerTheme {

    let productAlphaValue = AppTheme.Definition.alphaValues

    let productCornerRadius = AppTheme.Definition.cornerRadius

    let productBorderWidth = AppTheme.Definition.strokeWidthValues

    let productShadowStyle = AppTheme.Definition.shadowStyles

    let productColorTheme = AppTheme.colorTheme

    let scaleFactor: CGFloat = 0.96

    let productTransform3D = CATransform3DIdentity

    var none: LayerStyle {

        let shadowStyle = productShadowStyle.none

        return LayerStyle(shadowStyle: shadowStyle)
    }

    /// default Primary Layer style.
    var defaultPrimaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.none

        let borderWidth = productBorderWidth.none

        let borderColor = UIColor.clear.cgColor

        let backgroundColor = productColorTheme.invertPrimary.cgColor

        let shadowStyle = productShadowStyle.none

        let shadowColor = UIColor.clear.cgColor

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor,
                          backgroundColor: backgroundColor,
                          shadowStyle: shadowStyle,
                          shadowColor: shadowColor,
                          transform: transform3D)
    }

    /// default Secondary Layer style.
    var defaultSecondaryLayerStyle: LayerStyle {

        var layerStyle = defaultPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.invertSecondary.cgColor

        return layerStyle
    }

    /// default Tertiary Layer style.
    var defaultTertiaryLayerStyle: LayerStyle {

        var layerStyle = defaultPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.invertTertiary.cgColor

        return layerStyle
    }

    /// rounded  Layer style.
    var roundedLayerStyle: LayerStyle {

        return none
    }

    /// row Primary Layer style.
    var rowPrimaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.none

        let borderWidth = productBorderWidth.none

        let borderColor = UIColor.clear.cgColor

        let backgroundColor = productColorTheme.invertPrimary.cgColor

        let shadowStyle = productShadowStyle.none

        let shadowColor = UIColor.clear.cgColor

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor,
                          backgroundColor: backgroundColor,
                          shadowStyle: shadowStyle,
                          shadowColor: shadowColor,
                          transform: transform3D)
    }

    /// row Primary HighlightedLayer style.
    var rowPrimaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = rowPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.primaryFaded.cgColor

        return layerStyle

    }

    /// row Primary SelectedLayer style.
    var rowPrimarySelectedLayerStyle: LayerStyle {

        let layerStyle = rowPrimaryLayerStyle

        return layerStyle
    }

    /// row Primary DisabledLayer style.
    var rowPrimaryDisabledLayerStyle: LayerStyle {

        var layerStyle = rowPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        return layerStyle
    }

    /// row Secondary Layer style.
    var rowSecondaryLayerStyle: LayerStyle {

        return none
    }

    /// row Secondary HighlightedLayer style.
    var rowSecondaryHighlightedLayerStyle: LayerStyle {

        return none
    }

    /// row Secondary SelectedLayer style.
    var rowSecondarySelectedLayerStyle: LayerStyle {

        return none
    }

    /// row Secondary DisabledLayer style.
    var rowSecondaryDisabledLayerStyle: LayerStyle {

        return none
    }

    /// row Tertiary Layer style.
    var rowTertiaryLayerStyle: LayerStyle {

        return none
    }

    /// row Tertiary HighlightedLayer style.
    var rowTertiaryHighlightedLayerStyle: LayerStyle {

        return none
    }

    /// row Tertiary SelectedLayer style.
    var rowTertiarySelectedLayerStyle: LayerStyle {

        return none
    }

    /// row Tertiary DisabledLayer style.
    var rowTertiaryDisabledLayerStyle: LayerStyle {

        return none
    }

    /// cell Primary Layer style.
    var cellPrimaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.regular

        let borderWidth = productBorderWidth.none

        let borderColor = productColorTheme.emphasisPrimary

        let backgroundColor = productColorTheme.invertPrimary

        let backgroundColorAlpha = productAlphaValue.opaque

        let shadowStyle = productShadowStyle.primary

        let shadowColor = productColorTheme.primary

        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor.cgColor,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: shadowColor.withAlphaComponent(shadowColorAlpha).cgColor,
                          transform: transform3D)
    }

    /// cell Primary HighlightedLayer style.
    var cellPrimaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = cellPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.invertPrimaryMuted.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle
    }

    /// cell Primary SelectedLayer style.
    var cellPrimarySelectedLayerStyle: LayerStyle {

        return none
    }

    /// cell Primary DisabledLayer style.
    var cellPrimaryDisabledLayerStyle: LayerStyle {

        var layerStyle = cellPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        return layerStyle
    }

    /// cell Secondary Layer style.
    var cellSecondaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.small

        let borderWidth = productBorderWidth.none

        let borderColor = productColorTheme.emphasisPrimary

        let backgroundColor = productColorTheme.invertPrimary

        let backgroundColorAlpha = productAlphaValue.opaque

        let shadowStyle = productShadowStyle.secondary

        let shadowColor = productColorTheme.primary

        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor.cgColor,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: shadowColor.withAlphaComponent(shadowColorAlpha).cgColor,
                          transform: transform3D)
    }

    /// cell Secondary HighlightedLayer style.
    var cellSecondaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = cellSecondaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.invertPrimaryMuted.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle

    }

    /// cell Secondary SelectedLayer style.
    var cellSecondarySelectedLayerStyle: LayerStyle {

        return none

    }

    /// cell Secondary DisabledLayer style.
    var cellSecondaryDisabledLayerStyle: LayerStyle {

        var layerStyle = cellSecondaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        return layerStyle

    }

    /// cell Tertiary Layer style.
    var cellTertiaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.large

        let borderWidth = productBorderWidth.none

        let borderColor = productColorTheme.emphasisPrimary

        let backgroundColor = productColorTheme.invertPrimary

        let backgroundColorAlpha = productAlphaValue.opaque

        let shadowStyle = productShadowStyle.tertiary

        let shadowColor = productColorTheme.primary

        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor.cgColor,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: shadowColor.withAlphaComponent(shadowColorAlpha).cgColor,
                          transform: transform3D)

    }

    /// cell Tertiary HighlightedLayer style.
    var cellTertiaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = cellTertiaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.invertPrimaryMuted.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle

    }

    /// cell Tertiary SelectedLayer style.
    var cellTertiarySelectedLayerStyle: LayerStyle {

        return none
    }

    /// cell Tertiary DisabledLayer style.
    var cellTertiaryDisabledLayerStyle: LayerStyle {

        var layerStyle = cellTertiaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        layerStyle.shadowStyle = productShadowStyle.none

        return layerStyle

    }

    /// button Primary Layer style.
    var buttonPrimaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.none

        let borderWidth = productBorderWidth.none

        //        let borderColor = nil

        let backgroundColor = productColorTheme.emphasisPrimary

        let backgroundColorAlpha = productAlphaValue.opaque

        let shadowStyle = productShadowStyle.none

        //        let shadowColor = nil

        //        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: nil,
                          transform: transform3D)
    }

    /// button Primary HighlightedLayer style.
    var buttonPrimaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = buttonPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.emphasisPrimaryMuted.cgColor

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle

    }

    /// button Primary SelectedLayer style.
    var buttonPrimarySelectedLayerStyle: LayerStyle {

        var layerStyle = buttonPrimaryLayerStyle

        layerStyle.shadowStyle = productShadowStyle.tertiary

        layerStyle.shadowColor = UIColor(cgColor: layerStyle.backgroundColor!).withAlphaComponent(productAlphaValue.normal).cgColor

        layerStyle.backgroundColor = productColorTheme.invertPrimary.cgColor

        return layerStyle
    }

    /// button Primary DisabledLayer style.
    var buttonPrimaryDisabledLayerStyle: LayerStyle {

        var layerStyle = buttonPrimaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        return layerStyle

    }

    /// button Secondary Layer style.
    var buttonSecondaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.none

        let borderWidth = productBorderWidth.none

        //        let borderColor = nil

        let backgroundColor = productColorTheme.emphasisSecondary

        let backgroundColorAlpha = productAlphaValue.opaque

        let shadowStyle = productShadowStyle.none

        //        let shadowColor = nil

        //        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: nil,
                          transform: transform3D)
    }

    /// button Secondary HighlightedLayer style.
    var buttonSecondaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = buttonSecondaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.emphasisSecondaryMuted.cgColor

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle

    }

    /// button Secondary SelectedLayer style.
    var buttonSecondarySelectedLayerStyle: LayerStyle {

        var layerStyle = buttonSecondaryLayerStyle

        layerStyle.shadowStyle = productShadowStyle.tertiary

        layerStyle.shadowColor = UIColor(cgColor: layerStyle.backgroundColor!).withAlphaComponent(productAlphaValue.normal).cgColor

        layerStyle.backgroundColor = productColorTheme.invertPrimary.cgColor

        return layerStyle
    }

    /// button Secondary DisabledLayer style.
    var buttonSecondaryDisabledLayerStyle: LayerStyle {

        var layerStyle = buttonSecondaryLayerStyle

        layerStyle.backgroundColor = productColorTheme.grayoutPrimary.cgColor

        return layerStyle

    }

    /// button Tertiary Layer style.
    var buttonTertiaryLayerStyle: LayerStyle {

        let cornerRadius = productCornerRadius.none

        let borderWidth = productBorderWidth.thin

        let borderColor = productColorTheme.invertPrimary

        let backgroundColor = productColorTheme.invertPrimary.withAlphaComponent(0)

        let backgroundColorAlpha = productAlphaValue.clear

        let shadowStyle = productShadowStyle.none

        //        let shadowColor = nil

        //        let shadowColorAlpha = productAlphaValue.shadow

        let transform3D = productTransform3D

        return LayerStyle(cornerRadius: cornerRadius,
                          borderWidth: borderWidth,
                          borderColor: borderColor.cgColor,
                          backgroundColor: backgroundColor.withAlphaComponent(backgroundColorAlpha).cgColor,
                          shadowStyle: shadowStyle,
                          shadowColor: nil,
                          transform: transform3D)
    }

    /// button Tertiary HighlightedLayer style.
    var buttonTertiaryHighlightedLayerStyle: LayerStyle {

        var layerStyle = buttonTertiaryLayerStyle

        layerStyle.backgroundColor = UIColor(cgColor: layerStyle.backgroundColor!).withAlphaComponent(productAlphaValue.normal).cgColor

        layerStyle.transform = CATransform3DMakeScale(scaleFactor, scaleFactor, scaleFactor)

        return layerStyle

    }

    /// button Tertiary SelectedLayer style.
    var buttonTertiarySelectedLayerStyle: LayerStyle {

        return none
    }

    /// button Tertiary DisabledLayer style.
    var buttonTertiaryDisabledLayerStyle: LayerStyle {

        return none
    }

}
