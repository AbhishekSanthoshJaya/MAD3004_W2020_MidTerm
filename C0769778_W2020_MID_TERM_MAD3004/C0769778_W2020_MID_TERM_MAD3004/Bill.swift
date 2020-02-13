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
    func display() {
        <#code#>
    }
    
    

  private var billId: String
  private var billDate: Date
  private var billType: BillType
  private var billTotal: Float


init(billId: String, billDate: Date, billType: BillType)
  {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.calcTotalBill(billType: <#T##BillType#>)
  }

  func calcTotalBill(billType: BillType) -> Float
  {
//Function to calculate total bill based on type, could be in customer
  }

}
