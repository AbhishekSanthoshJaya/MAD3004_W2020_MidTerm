//
//  Date+Extension.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//DATE EXTENSION START
extension Date{

public func getFormattedDate() -> String
 {
     let dateFormatterPrint = DateFormatter()
     dateFormatterPrint.dateFormat = "EEEE, MMMM dd, yyyy"
     let formattedDate = dateFormatterPrint.string(from: self)
     return formattedDate
 }
}
//DATE EXTENSION END
