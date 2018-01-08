//
//  utils.swift
//  KonaCoffee
//
//  Created by Sven Pohle on 1/7/18.
//  Copyright © 2018 Sven Pohle. All rights reserved.
//

import Foundation
import UIKit


public extension UIColor {
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = CGFloat(1)) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}

public extension UIColor {
    struct ThemeTab {
        static var background: UIColor { return UIColor(r: 42, g: 43, b: 49) }
        static var barTint: UIColor { return UIColor(r: 20, g: 20, b: 20) }
        static var barText: UIColor { return UIColor.white }
    }
    
    struct ThemeMap {
        static var background: UIColor { return UIColor.cyan }
    }
    
    struct ThemeList {
        static var background: UIColor { return UIColor.lightGray }
    }
}
