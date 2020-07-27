//
//  String+Extenstion.swift
//  LandBooking
//
//  Created by Moek Thona on 2/26/20.
//  Copyright © 2020 Moek Thona. All rights reserved.
//

import Foundation

extension String{
    func encodeUrl() -> String?{
        return self.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
    }
    func decodeUrl() -> String?{
        return self.removingPercentEncoding
    }
}

