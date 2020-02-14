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
  private var mobileBill: Double{
        return billCalculate()
    }


    init(billId: String, billDate: Date, billType: BillType, manufacturerName: String, planName: String, mobileNumber: String, mobGbUsed: Int, minute: Int)
{
    self.manufacturerName = manufacturerName
    self.planName = planName
    self.mobileNumber = mobileNumber
    self.mobGbUsed = mobGbUsed
    self.minute = minute
    super.init(billId: billId, billDate: billDate, billType: billType)
  }

//Method to get total Mobile bill
    
    func billCalculate() -> Double{
        var billAmount = 0.0
        billAmount = (Double(self.mobGbUsed) * 25) + (Double(self.minute) * 0.2)
        return billAmount
    }
    
  override func display() {
        print("Manufacturer Name: \(manufacturerName)")
        print("Plan Name: \(planName)")
        print("Mobile Number: \(mobileNumber)")
        print("Minute: \(minute)")
        print("Mobile Bill: \(mobileBill)")
    
    }
  //Methods to validate mobilenumber, maybe in customer
}


