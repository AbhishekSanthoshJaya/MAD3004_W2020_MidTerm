//
//  Hydro.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Hydro: Bill
  {
  private var agencyName: String = ""
  private var unitsUsed: Double = 0.0

    init(billId: String, billDate: Date, billType: BillType, agencyName:String, unitsUsed: Double)
  {
    self.agencyName = agencyName
    self.unitsUsed = unitsUsed
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.billTotal = billCalculate()
  }

  //------- METHOD TO CALCULATE TOTAL HYDRO BILL -------
    func billCalculate() -> Double
    {
           var billAmount = 0.0
        if (unitsUsed < 10)
        {
            billAmount = 1.5 * unitsUsed
        }
        else
        {
            billAmount = 2 * unitsUsed
        }
    return billAmount
    }

  //------- METHOD TO DISPLAY BILL DETAILS -------
    override func display() {
        super.display()
        print("\tBill Amount             : \(billTotal.currency())")
        print("\tAgency Name             : \(agencyName)")
        print("\tUnits Consumed          : \(unitsUsed.addUnits())")
    }
}
