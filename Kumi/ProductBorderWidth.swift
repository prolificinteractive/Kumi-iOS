//
//  productBorderWidth.swift
//  Prolific Design System
//
//  Created by Prolific Interactive on 3/14/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import UIKit

public struct ProductBorderWidth: BorderWidth {

    public var none: CGFloat {
        let value: CGFloat = 0
        return value
    }

    public var hairline: CGFloat {
        let value: CGFloat = 1 / UIScreen.main.scale
        return value
    }

    public var thin: CGFloat {
        let value: CGFloat = 1
        return value
    }

    public var regular: CGFloat {
        let value: CGFloat = 2
        return value
    }

    public var thick: CGFloat {
        let value: CGFloat = 4
        return value
    }

}
