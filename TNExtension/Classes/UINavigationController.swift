//
//  UINavigationController.swift
//  LandBooking
//
//  Created by Moek Thona on 4/17/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import UIKit

extension UINavigationController {
    func getViewController<T: UIViewController>(of type: T.Type) -> UIViewController? {
        return self.viewControllers.first(where: { $0 is T })
    }

    func popToViewController<T: UIViewController>(of type: T.Type, animated: Bool,completion: (() -> Void)? = nil) {
        guard let viewController = self.getViewController(of: type) else {
                if completion != nil {
                    completion!()
                }
            return
        }
        self.popToViewController(viewController, animated: animated)
    }
}

