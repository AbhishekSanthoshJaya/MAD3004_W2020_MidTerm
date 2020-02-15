//
//  Internet.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//
import Foundation

public class Internet: Bill
  {
  private var providerName: String
  private var gbUsed: Double

init(billId: String, billDate: Date, billType: BillType, providerName:String, gbUsed: Double)
  {
    self.providerName = providerName
    self.gbUsed = gbUsed
    super.init(billId: billId, billDate: billDate, billType: billType)
  }
    
    func billCalculate() -> Double{
           var billAmount = 0.0
        if( gbUsed < 10){
            billAmount = 3 * gbUsed
        }
        else {
            billAmount = 3.5 * gbUsed
        }
           return billAmount
       }
    override func display() {
        super.display()
        print("\tBill Amount: \(billCalculate())")
        print("\tProvider Name: \(providerName)")
        print("\tData (IN GB): \(gbUsed)")
    }
}
