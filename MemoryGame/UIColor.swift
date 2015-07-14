//
//  UIColor.swift
//  MemoryGame
//
//  Created by ED on 7/14/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

import UIKit

extension UIColor {
    class func greenSea() -> UIColor {
        return UIColor.colorComponents((22, 160, 133))
    }
    
    class func emerald() -> UIColor {
        return UIColor.colorComponents((46, 204, 113))
    }
    
    class func sunflower() -> UIColor {
        return UIColor.colorComponents((241, 196, 15))
    }
    
    class func alizarin() -> UIColor {
        return UIColor.colorComponents((231, 76, 60))
    }
}

private extension UIColor {
    class func colorComponents(components: (CGFloat, CGFloat, CGFloat)) -> UIColor {
        return UIColor(red: components.0/255, green: components.1/255, blue: components.2/255, alpha: 1)
    }
}
