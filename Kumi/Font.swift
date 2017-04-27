//
//  Font.swift
//  Gro
//
//  Created by Htin Linn on 11/2/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

/// Defines an interface for fonts used in the app.
public protocol Font {

    // MARK: Fonts Definition
    /// Roman Ultra Light Font (Linotype Numbering System: 130) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanUltraLightFont(ofSize size: CGFloat) -> UIFont

    /// Roman Thin Font (Linotype Numbering System: 230) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanThinFont(ofSize size: CGFloat) -> UIFont

    /// Roman Light Font (Linotype Numbering System: 330) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanLightFont(ofSize size: CGFloat) -> UIFont

    /// Roman Regular Font (Linotype Numbering System: 430) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanRegularFont(ofSize size: CGFloat) -> UIFont

    /// Roman Medium Font (Linotype Numbering System: 530) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanMediumFont(ofSize size: CGFloat) -> UIFont

    /// Roman Bold Font (Linotype Numbering System: 630) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanBoldFont(ofSize size: CGFloat) -> UIFont

    /// Roman Heavy Font (Linotype Numbering System: 730) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanHeavyFont(ofSize size: CGFloat) -> UIFont

    /// Roman Black Font (Linotype Numbering System: 830) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanBlackFont(ofSize size: CGFloat) -> UIFont

    /// Roman ExtraBlack Font (Linotype Numbering System: 930) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func romanExtrablackFont(ofSize size: CGFloat) -> UIFont

    /// Italic Ultra Light Font (Linotype Numbering System: 131) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicUltraLightFont(ofSize size: CGFloat) -> UIFont

    /// Italic Thin Font (Linotype Numbering System: 231) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicThinFont(ofSize size: CGFloat) -> UIFont

    /// Italic Light Font (Linotype Numbering System: 331) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicLightFont(ofSize size: CGFloat) -> UIFont

    /// Italic Regular Font (Linotype Numbering System: 431) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicRegularFont(ofSize size: CGFloat) -> UIFont

    /// Italic Medium Font (Linotype Numbering System: 531) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicMediumFont(ofSize size: CGFloat) -> UIFont

    /// Italic Bold Font (Linotype Numbering System: 631) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicBoldFont(ofSize size: CGFloat) -> UIFont

    /// Italic Heavy Font (Linotype Numbering System: 731) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicHeavyFont(ofSize size: CGFloat) -> UIFont

    /// Italic Black Font (Linotype Numbering System: 831) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicBlackFont(ofSize size: CGFloat) -> UIFont

    /// Italic ExtraBlack Font (Linotype Numbering System: 931) of specified size.
    ///
    /// - Parameter size: Font size.
    /// - Returns: Light font of specified size.
    func italicExtrablackFont(ofSize size: CGFloat) -> UIFont

}
