//
//  Constant.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 23/11/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

public final class Constant {
    
    let xxsmall: CGFloat
    let xsmall: CGFloat
    let small: CGFloat
    let medium: CGFloat
    let large: CGFloat
    let xlarge: CGFloat
    let xxlarge: CGFloat
    
    public init(json: JSON) {
        xxsmall = json["xxsmall"].cgFloat ?? 2
        xsmall = json["xsmall"].cgFloat ?? 4
        small = json["small"].cgFloat ?? 8
        medium = json["medium"].cgFloat ?? 16
        large = json["large"].cgFloat ?? 24
        xlarge = json["xlarge"].cgFloat ?? 56
        xxlarge = json["xxlarge"].cgFloat ?? 72
    }
    
    public init(xxsmall: CGFloat,
         xsmall: CGFloat,
         small: CGFloat,
         medium: CGFloat,
         large: CGFloat,
         xlarge: CGFloat,
         xxlarge: CGFloat) {
        self.xxsmall = xxsmall
        self.xsmall = xsmall
        self.small = small
        self.medium = medium
        self.large = large
        self.xlarge = xlarge
        self.xxlarge = xxlarge
    }
}
