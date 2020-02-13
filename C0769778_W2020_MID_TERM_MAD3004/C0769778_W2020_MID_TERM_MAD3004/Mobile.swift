//
//  Mobile.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Mobile: Bill
  {
  private var manufacturerName: String
  private var planName: String
  private var mobileNumber: String
  private var mobGbUsed: Int
  private var minute: Int

init(billId: String, billDate: Date, billType: BillType, manufacturerName: String, planName: String, mobileNumber: String, mobGbUsed: Int, minute: Int)
  {
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.manufacturerName = manufacturerName
    self.planName = planName
    self.mobileNumber = mobileNumber
    self.mobGbUsed = mobGbUsed
    self.minute = minute
  }

  //Methods to validate mobilenumber, maybe in customer
}
