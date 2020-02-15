//
//  Bill.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

enum BillType {
    case MOBILE, INTERNET, HYDRO
}

public class Bill: IDisplayDelegate
    
{
  private var billId: String
  private var billDate: Date
  private var billType: BillType
  //private var billTotal: Double = 0.0


init(billId: String, billDate: Date, billType: BillType)
    {
    self.billId = billId
    self.billType = billType
    self.billDate = billDate
    }

func display() {
       print("\tBill ID: \(billId)")
       print("\tBill Date: \(billDate)")
       print("\tBill Type: \(billType)")
       //print("Total Amount to be paid: \(billTotal)")
    }

}
