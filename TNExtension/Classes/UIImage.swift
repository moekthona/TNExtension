//
//  UIImage.swift
//  LandBooking
//
//  Created by Moek Thona on 5/1/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import UIKit
@IBDesignable extension UIImageView {
    func setImageColor(color: UIColor) {
      let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
      self.image = templateImage
      self.tintColor = color
    }


    @IBInspectable var imgTintColor: UIColor {
        set {
            setImageColor(color: newValue)
        }
        get {
            return self.tintColor
        }
    }
        
}


extension UIImage {
   static func imageWithColor(tintColor: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        tintColor.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
