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
  private var unitsUsed: Int = 0

init(billId: String, billDate: Date, billType: BillType, agencyName:String, unitsUsed: Int)
  {
    super.init(billId: billId, billDate: billDate, billType: billType)
    self.agencyName = agencyName
    self.unitsUsed = unitsUsed
  }
    
}
