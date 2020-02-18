//
//  Insurance.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Insurance: Bill
    
{
  private var insuranceProviderName: String
  private var typeofInsurance: String
  private var startDate: Date
  private var endDate: Date
  private var totalDays: Int = 0

    init(billId: String, billDate: Date, billType: BillType, insuranceProviderName: String, typeofInsurance: String, startDate: Date, endDate: Date)
  {
        self.insuranceProviderName = insuranceProviderName
        self.typeofInsurance = typeofInsurance
        self.startDate = startDate
        self.endDate = endDate
        super.init(billId: billId, billDate: billDate, billType: billType)
        self.totalDays = calcTotalDays(startDate: startDate, endDate: endDate)
        self.billTotal = billCalculate()
  }
    
func calcTotalDays(startDate: Date, endDate:Date) -> Int
{
 return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
}

// ------- METHOD TO FIRST PAYMENT TOTAL -------
func billCalculate() -> Double {
    var billAmount = 0.0
    if (typeofInsurance == "AUTO") {  billAmount = 310.00 }
    else if  (typeofInsurance == "HEALTH") {  billAmount = 250.00 }
    else if (typeofInsurance == "HOME") { billAmount = 350.00 }
    else if (typeofInsurance == "LONG-TERM CARE") { billAmount = 455.00 }
    return billAmount
    }
    
//------- METHOD TO GET TOTAL INSURANCE BILL -------
func totalInsuranceAmount() -> Double
{
return Double(totalDays) * 12.8
}

//------- DISPLAYING BILL DETAILS -------
override func display() {
        super.display()
        print("\tInsurance Provider Name : \(insuranceProviderName)")
        print("\tType of Insurance       : \(typeofInsurance)")
        print("\tStarting Date           : \(startDate.getFormattedDate())")
        print("\tEnding Date             : \(endDate.getFormattedDate())")
        print("\tTotal days valid        : \(totalDays)")
        print("\tFirst Payment Amount    : \(billTotal.currency())")
        print("\tTotal Insurance Amount  : \(totalInsuranceAmount().currency())")
    }
}
