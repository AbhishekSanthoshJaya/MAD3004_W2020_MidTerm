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
  private var customerBills = [String: Bill]()

    init(customerId: String, firstName: String, lastName: String, emailId: String, bills: [String:Float])
  {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        if isValidEmail(self.emailId)
        {
          self.emailId = emailId
        }
          else
        {
          print("Please enter a valid email address")
        }
  }
    
    //Method to add a new bill to a customer
    func newBill(bill: Bill, customerId: String)
    {
      customerBills.updateValue(bill, forKey: customerId)
    }
    
    //Method to validate Email address
       func isValidEmail(_ email: String) -> Bool {
         let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

         let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
         return emailPred.evaluate(with: email)
     }
    
    func display(){
        print("Customer ID: \(customerId)")
        print("Name: \(fullName)")
        print("Email ID: \(emailId)")
        print("---- Bill Information ----")
        for i in customerBills
        {
          i.value.display()
        }
        //
    }

}
