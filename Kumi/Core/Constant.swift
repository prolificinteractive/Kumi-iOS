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
        xxsmall = json["xxsmall"].cgFloatValue
        xsmall = json["xsmall"].cgFloatValue
        small = json["small"].cgFloatValue
        medium = json["medium"].cgFloatValue
        large = json["large"].cgFloatValue
        xlarge = json["xlarge"].cgFloatValue
        xxlarge = json["xxlarge"].cgFloatValue
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
