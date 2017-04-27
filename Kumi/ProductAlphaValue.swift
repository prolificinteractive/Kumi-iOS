//
//  ProductAlphaValue.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public struct ProductAlphaValue: AlphaValue {

    public var opaque: CGFloat {
        let value: CGFloat = 1
        return value
    }

    public var clear: CGFloat {
        let value: CGFloat = 0
        return value
    }

    public var normal: CGFloat {
        let value: CGFloat = 1 / 2
        return value
    }

    public var disabled: CGFloat {
        let value: CGFloat = 1 / 5
        return value
    }

    public var darkOverlay: CGFloat {
        let value: CGFloat = 1 / 6
        return value
    }

    public var lightOverlay: CGFloat {
        let value: CGFloat = 2 / 3
        return value
    }

    public var shadow: CGFloat {
        let value: CGFloat = 1 / 5
        return value
    }

}
