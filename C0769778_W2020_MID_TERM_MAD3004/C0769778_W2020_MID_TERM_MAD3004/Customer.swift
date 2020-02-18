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
  private lazy var customerBills = [String: Bill]()

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
          print("\nTHIS EMAIL IS INVALID: \(emailId)")
          exit(0)
        }
  }
    
    //------- METHOD TO ADD A NEW BILL TO A CUSTOMER -------
    func newBill(bill: Bill, billId: String)
    {
      if customerBills.keys.contains(billId)
      {
        print("\nERROR! THIS BILL HAS ALREADY BEEN ADDED!")
      }

      else
      {
        customerBills.updateValue(bill, forKey: billId)
      }
      
    }

     //------- METHOD TO REMOVE A BILL FROM A CUSTOMER -------
    func removeBill(billId: String)
    {
      var checkFlag = 0
        for i in customerBills
        {
          if(billId == i.value.billId)
          {
              checkFlag = 1
              customerBills.removeValue(forKey: billId)
          }
        }
          if(checkFlag == 0)
          {
            print("CANNOT REMOVE. A BILL WITH THIS ID DOES NOT EXIST! : \(billId)")
          }
        
    }
    
    //------- METHOD TO FIND SUM OF ALL BILLS OF A CUSTOMER -------
    func allBillsTotal() -> Double
    {
      var allTotal2 = 0.0
      for i in customerBills{
        allTotal2 += i.value.billTotal
      }
      return allTotal2
    }
    
    //------- METHOD TO FIND BILL DETAILS WITH BILL ID -------
    func billDetails(billId: String)
    {
      var checkFlag = 0
      for i in customerBills
       {
        if (billId == i.value.billId)
         {
            checkFlag = 1
            print("\n *THE DETAILS OF \(billId) ARE AS FOLLOWS: \n")
            i.value.display()
         }
       }
       if(checkFlag == 0)
       {
         print("\nNO BILL EXITS WITH GIVEN INDEX: \(billId)")
       }
    }
    
    
    
    //------- METHOD TO VALIDATE EMAIL ADDRESS -------
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
          if customerBills.isEmpty
          {
            print("\n---- NO BILLS AGAINST \(customerId): \(fullName) ----\n")
          }
          else
          {
            print("\nCustomer ID   : \(customerId)")
            print("Name          : \(fullName)")
            print("Email ID      : \(emailId)")
            print("\n")
            print("\t\t\t\t---- BILL INFORMATION ----\n")
            for i in customerBills
            {
              i.value.display()
              print("\n \t****************************************************")
            }
            print("\t\t\tTOTAL BILL AMOUNT TO BE PAID: \(allBillsTotal().currency())")
            print("\t****************************************************\n")
            //
          }
        }

}
