//
//  UIColor.swift
//  YYxTemplate_51Area
//
//  Created by young on 2020/11/10.
//  Copyright © 2020 young. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    public convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1.0)
    }
    
    public convenience init(gray: Int) {
        self.init(red: CGFloat(gray)/255, green: CGFloat(gray)/255, blue: CGFloat(gray)/255, alpha: 1.0)
    }
}
