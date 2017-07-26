//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by 刘涵 on 2017/7/27.
//  Copyright © 2017年 Make School. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
}
