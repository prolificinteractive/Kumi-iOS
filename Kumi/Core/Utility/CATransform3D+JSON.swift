//
//  CATransform3D+JSON.swift
//  Pods
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

extension CATransform3D {

    init?(json: JSON) {

        self = CATransform3DIdentity

        if let perspective = json["perspective"] as? CGFloat {
            self.m34 = perspective
        }

        if let rotate = json["rotate"] as? CGFloat,
            let rotateX = json["rotateX"] as? CGFloat,
            let rotateY = json["rotateY"] as? CGFloat,
            let rotateZ = json["rotateZ"] as? CGFloat {

            self = CATransform3DRotate(self,
                                       rotate,
                                       rotateX,
                                       rotateY,
                                       rotateZ)

        }

        if let scaleX = json["scaleX"] as? CGFloat,
            let scaleY = json["scaleY"] as? CGFloat,
            let scaleZ = json["scaleZ"] as? CGFloat {

            self = CATransform3DScale(self,
                                      scaleX,
                                      scaleY,
                                      scaleZ)
        }

        if let translateX = json["translateX"] as? CGFloat,
            let translateY = json["translateY"] as? CGFloat,
            let translateZ = json["translateZ"] as? CGFloat {

            self = CATransform3DTranslate(self,
                                          translateX,
                                          translateY,
                                          translateZ)
        }

    }

}
