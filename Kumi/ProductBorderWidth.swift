//
//  productBorderWidth.swift
//  Prolific Design System
//
//  Created by VIRAKRI JINANGKUL on 3/14/17.
//  Copyright © 2017 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit
internal struct ProductBorderWidth: BorderWidth {

    var none: CGFloat {
        let value: CGFloat = 0
        return value
    }

    var hairline: CGFloat {
        let value: CGFloat = 1 / UIScreen.main.scale
        return value
    }

    var thin: CGFloat {
        let value: CGFloat = 1
        return value
    }

    var regular: CGFloat {
        let value: CGFloat = 2
        return value
    }

    var thick: CGFloat {
        let value: CGFloat = 4
        return value
    }

}
