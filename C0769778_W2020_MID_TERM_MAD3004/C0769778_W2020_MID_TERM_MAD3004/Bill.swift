//
//  Bill.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

enum BillType {
    case MOBILE, INTERNET, HYDRO, INSURANCE
}

public class Bill: IDisplayDelegate
    
{
  var billId: String
  private var billDate: Date
  private var billType: BillType
  var billTotal: Double = 0.0


init(billId: String, billDate: Date, billType: BillType)
    {
    self.billId = billId
    self.billType = billType
    self.billDate = billDate
    }

// ------- METHOD TO DISPLAY BILL DETAILS -------
func display() {
       print("\tBill ID                 : \(billId)")
       print("\tBill Date               : \(billDate.getFormattedDate())")
       print("\tBill Type               : \(billType)")
    }
}
