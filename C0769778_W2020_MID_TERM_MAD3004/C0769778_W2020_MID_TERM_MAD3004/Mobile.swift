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
  private var mobileNumber: String = ""
  private var mobGbUsed: Int
  private var minute: Int

    init(billId: String, billDate: Date, billType: BillType, manufacturerName: String, planName: String, mobileNumber: String, mobGbUsed: Int, minute: Int)
{
    self.manufacturerName = manufacturerName
    self.planName = planName
    if(mobileNumber.count == 10)
      {
    self.mobileNumber = mobileNumber
      }
    else
      {
      print("\nTHIS MOBILE NUMBER IS NOT VALID: \(mobileNumber)")
      exit(0)
      }
    self.mobGbUsed = mobGbUsed
    self.minute = minute
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.billTotal = billCalculate()
  }

//------- METHOD TO CALCULATE TOTAL MOBILE BILL -------
    func billCalculate() -> Double
    {
      var billAmount = 0.0
      billAmount = (Double(self.mobGbUsed) * 25) + (Double(self.minute) * 0.2)
      return billAmount
    }

//------- DISPLAYING BILL DETAILS -------
  override func display() {
        super.display()
        print("\tBill Amount             : \(billTotal.currency())")
        print("\tManufacturer Name       : \(manufacturerName)")
        print("\tPlan Name               : \(planName)")
        print("\tMobile Data Used        : \(mobGbUsed.addMobGB())")
        print("\tMinutes Used            : \(minute.addMins())")
    }
}

