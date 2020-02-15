//
//  Double+Extension.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

extension Double{
    
func currency() -> String{
        let s = String.init(format: "$%.2f", self)
        return s
    }
}
