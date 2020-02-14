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
    
  var customerId: String
  private var firstName: String
  private var lastName: String
  private var fullName: String
    {
    return "\(firstName) \(lastName)"
    }
  private var emailId: String
  private var customerBills = [String: Bill]()

    init(customerId: String, firstName: String, lastName: String, emailId: String)
  {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        if isValidEmailAddress(emailAddressString: self.emailId)
        {
          self.emailId = emailId
        }
          else
        {
          print("Please enter a valid email address")
            exit(0)
        }
  }
    
    //Method to add a new bill to a customer
    func newBill(bill: Bill, customerId: String)
    {
      customerBills.updateValue(bill, forKey: customerId)
    }
    
    //Method to validate Email address
       func isValidEmailAddress(emailAddressString: String) -> Bool {
           
           var returnValue = true
           let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
           
           do {
               let regex = try NSRegularExpression(pattern: emailRegEx)
               let nsString = emailAddressString as NSString
               let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
               
               if results.count == 0
               {
                   returnValue = false
               }
               
           } catch let error as NSError {
               print("invalid regex: \(error.localizedDescription)")
               returnValue = false
           }
           
           return  returnValue
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
