//
//  NSObject.swift
//  LandBooking
//
//  Created by Moek Thona on 1/5/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import Foundation
extension NSObject {
    
    static var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}
