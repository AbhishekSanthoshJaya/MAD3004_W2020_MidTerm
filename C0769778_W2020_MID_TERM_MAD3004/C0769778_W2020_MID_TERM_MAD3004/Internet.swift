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
  private var gbUsed: Int

init(billId: String, billDate: Date, billType: BillType, providerName:String, gbUsed: Int)
  {
    self.providerName = providerName
    self.gbUsed = gbUsed
    super.init(billId: billId, billDate: billDate, billType: billType)
  }

}
