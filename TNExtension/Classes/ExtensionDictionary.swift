//
//  ExtensionDictionary.swift
//  LandBooking
//
//  Created by Moek Thona on 1/4/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import Foundation

extension Dictionary {
    func toJSON()->String {
        let jsonData = try! JSONSerialization.data(withJSONObject: self, options: [])
        let decoded = String(data: jsonData, encoding: .utf8)!
        return decoded
    }
}
