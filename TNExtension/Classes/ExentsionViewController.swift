//
//  ExentsionViewController.swift
//  LandBooking
//
//  Created by Moek Thona on 1/5/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import Foundation
import UIKit
extension  UIViewController {
    static func instantiateVC(storyboardName: String)-> Self {
          let mainStoryboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
          let fullName = NSStringFromClass(self)
          let className = fullName.components(separatedBy: ".")[1]
          let vc = mainStoryboard.instantiateViewController(withIdentifier: className) as! Self
          return vc
      }
    
    func showAlertOkay(withTitle title: String = "Message", withMessage message:String,completion: (() -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
            if completion != nil {
                completion!()
            }
        })
        
        alert.addAction(ok)
        DispatchQueue.main.async(execute: {
            self.present(alert, animated: true)
        })
    }
}
