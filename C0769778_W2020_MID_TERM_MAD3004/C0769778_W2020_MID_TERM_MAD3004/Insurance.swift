//
//  Insurance.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Insurance
    
{
    
  private var insuranceProviderName: String
  private var typeofInsurance: String
  private var startDate: Date
  private var endDate: Date
  //private var totalDays: Int
  private var totalInsuranceAmount: Double

    init(insuranceProviderName: String, typeofInsurance: String, startDate: Date, endDate: Date, totalInsuranceAmount: Double)
  {
        self.insuranceProviderName = insuranceProviderName
        self.typeofInsurance = typeofInsurance
        self.startDate = startDate
        self.endDate = endDate
        self.totalInsuranceAmount = totalInsuranceAmount
       // self.totalDays = calcTotalDays()
  }
    
//func calcTotalDays() -> Int
//  {
//    return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
//  }

}
