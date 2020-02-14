//
//  main.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation


var m1 = Mobile(billId: "MB200", billDate: NSDate() as Date, billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "Student Plan", mobileNumber: "9809890878", mobGbUsed: 1, minute: 6)

var m2 = Mobile(billId: "MB300", billDate: NSDate() as Date, billType: BillType.MOBILE, manufacturerName: "CELLONE", planName: "5G4EVAAAA", mobileNumber: "9889890878", mobGbUsed: 2, minute: 11)

var c1 = Customer(customerId: "A98999", firstName: "Abhishek", lastName: "Santhosh Jaya", emailId: "abhisheksj35@gmail.com", bills: ["INT00" : 200])

c1.display()
m1.display()

var billArray = Array<Bill>()
billArray.append(m1)
billArray.append(m2)

c1.newBill(bill: m1, customerId: "A98999")

// func getCustomerById(customerId: String) -> Customer?
// {

// }
c1.display()
