//
//  CATransform3D+JSON.swift
//  Pods
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON
import QuartzCore

extension CATransform3D {
    
    init(json: JSON) {
        
        self = CATransform3DIdentity
        
        if let perspective = json["perspective"].kumiValue.cgFloat {
            self.m34 = perspective
        }
        
        if let rotate = json["rotate"].kumiValue.cgFloat,
            let rotateX = json["rotateX"].kumiValue.cgFloat,
            let rotateY = json["rotateY"].kumiValue.cgFloat,
            let rotateZ = json["rotateZ"].kumiValue.cgFloat {
            
            self = CATransform3DRotate(self,
                                       rotate,
                                       rotateX,
                                       rotateY,
                                       rotateZ)
            
        }
        
        if let scaleX = json["scaleX"].kumiValue.cgFloat,
            let scaleY = json["scaleY"].kumiValue.cgFloat,
            let scaleZ = json["scaleZ"].kumiValue.cgFloat {
            
            self = CATransform3DScale(self,
                                      scaleX,
                                      scaleY,
                                      scaleZ)
        }
        
        if let translateX = json["translateX"].kumiValue.cgFloat,
            let translateY = json["translateY"].kumiValue.cgFloat,
            let translateZ = json["translateZ"].kumiValue.cgFloat {
            
            self = CATransform3DTranslate(self,
                                          translateX,
                                          translateY,
                                          translateZ)
        }
        
    }

}