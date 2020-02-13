//
//  Customer.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Customer
{
    
  private var customerId: String
  private var firstName: String
  private var lastName: String
  private var fullName: String
    {
    return "\(firstName) \(lastName)"
    }
  private var emailId: String
  private var bills = [String: Float]()
  private var totalAmount: Float

init(customerId: String, firstName: String, lastName: String, emailId: String, bills: [String:Float])
  {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
  }

}
