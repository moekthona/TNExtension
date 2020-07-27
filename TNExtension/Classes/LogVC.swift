//
//  LogVC.swift
//  LandBooking
//
//  Created by Moek Thona on 6/10/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import UIKit

private let swizzling: (AnyClass, Selector, Selector) -> () = { forClass, originalSelector, swizzledSelector in
    let originalMethod = class_getInstanceMethod(forClass, originalSelector)
    let swizzledMethod = class_getInstanceMethod(forClass, swizzledSelector)
    method_exchangeImplementations(originalMethod!, swizzledMethod!)
}

extension UIViewController {

    static let classInit: Void = {
        let originalSelector = #selector(viewDidLoad)
        let swizzledSelector = #selector(swizzledViewDidAppear(_:))
        swizzling(UIViewController.self, originalSelector, swizzledSelector)
        
    }()

    @objc func swizzledViewDidAppear(_ animated: Bool) {
        let className = NSStringFromClass(self.classForCoder).components(separatedBy: ".").last ?? ""
        print("😂😎 ############ \(className) ########### 😎😂")
        // Call the original viewDidAppear - using the swizzledViewDidAppear signature
        swizzledViewDidAppear(animated)
    }

}
