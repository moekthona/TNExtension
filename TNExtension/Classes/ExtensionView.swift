//
//  ExtensionView.swift
//  LandBooking
//
//  Created by Moek Thona on 12/12/19.
//  Copyright © 2019 Moek Thona. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
    func constraint(withIdentifier identifier: String) -> NSLayoutConstraint? {
        let filteredConstraints = self.constraints.filter {
            $0.identifier == identifier
        }

        return filteredConstraints.first
    }
    
    func showError(numberOfShakes shakes: Float = 3, revert: Bool = true,errorMessage: String, cornerRadius: CGFloat = 5) {
           
           if self.layer.borderColor != UIColor.red.cgColor{
               
               
               let animation: CABasicAnimation = CABasicAnimation(keyPath: "shadowColor")
               
               
               animation.duration = 0.4
               
               
               if revert { animation.autoreverses = true } else { animation.autoreverses = false }
               self.layer.add(animation, forKey: "")
               
               let shake: CABasicAnimation = CABasicAnimation(keyPath: "position")
               shake.duration = 0.07
               shake.repeatCount = shakes
               if revert { shake.autoreverses = true  } else { shake.autoreverses = false }
               shake.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
               shake.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
               
               self.layer.add(shake, forKey: "position")
               
               
               let oldColor =  self.layer.borderColor
               let oldBorderWidth =  self.layer.borderWidth
               
               
               self.layer.borderColor =  UIColor.red.cgColor
               self.layer.borderWidth = 0.5
               self.layer.cornerRadius = cornerRadius
               layer.masksToBounds = true
               self.tintColor = UIColor.blue
               
               let label = UILabel()
               label.textColor = UIColor.red
               label.text = errorMessage
               label.font = UIFont.systemFont(ofSize: 12)
               //label.textAlignment = .center
               self.superview?.addSubview(label)
               label.frame = CGRect(x: self.frame.origin.x, y: self.frame.maxY, width: self.frame.width, height: self.frame.height * 0.4)
               let when = DispatchTime.now() + 4
               
               DispatchQueue.main.asyncAfter(deadline: when) {
                   label.removeFromSuperview()
                   self.layer.borderColor = oldColor
                   self.layer.borderWidth = oldBorderWidth
               }
               
           }
           
       }
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
          let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
          let mask = CAShapeLayer()
          mask.path = path.cgPath
          layer.mask = mask
      }
    
}


