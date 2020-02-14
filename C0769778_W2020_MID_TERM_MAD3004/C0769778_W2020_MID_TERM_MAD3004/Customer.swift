//
//  Customer.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Customer: IDisplayDelegate
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
  private var totalAmount: Float = 0
  private var mobilebill: Mobile

    init(customerId: String, firstName: String, lastName: String, emailId: String, bills: [String:Float], mobileBill: Mobile)
  {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        self.bills = bills
        self.mobilebill = mobileBill
  }
    
    func display(){
        print("Customer ID: \(customerId)")
        print("Name: \(fullName)")
        print("Email ID: \(emailId)")
        print("---- Bill Information ----")
        print())
        
        
    }

}
