//
//  main.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//Mobile Objects
var m1 = Mobile(billId: "MB200", billDate: NSDate() as Date, billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "Student Plan", mobileNumber: "9809890878", mobGbUsed: 1, minute: 6)
var m2 = Mobile(billId: "MB300", billDate: NSDate() as Date, billType: BillType.MOBILE, manufacturerName: "CELLONE", planName: "5G4EVAAAA", mobileNumber: "9889890878", mobGbUsed: 2, minute: 11)

//Hydro Objects
var h1 = Hydro(billId: "HY219", billDate: NSDate() as Date, billType: BillType.HYDRO, agencyName: "WATAAAAA", unitsUsed: 22.21)
var h2 = Hydro(billId: "HY199", billDate: NSDate() as Date, billType: BillType.HYDRO, agencyName: "MOREWATAAAAA", unitsUsed: 8.2)

//Internet Objects
var in1 = Internet(billId: "IN167", billDate: NSDate() as Date, billType: BillType.INTERNET, providerName: "SKYLINK", gbUsed: 2.2)
var in2 = Internet(billId: "IN122", billDate: NSDate() as Date, billType: BillType.INTERNET, providerName: "STARLIGHT", gbUsed: 6.2)

//Customer Objects
var c1 = Customer(customerId: "A98999", firstName: "Abhishek", lastName: "Santhosh Jaya", emailId: "abhisheksj35@gmail.com")
var c2 = Customer(customerId: "PEAKY100", firstName: "Thomas", lastName: "Shelby", emailId: "thomas@gmail.com")

//var billArray = Array<Bill>()
//billArray.insert(m1, at: 0)
c1.newBill(bill: h2, customerId: "ABHI200")
c2.newBill(bill: h1, customerId: "PEAKY100")
c1.display()

print("***************************************************************************************************")

c2.display()
// func getCustomerById(customerId: String) -> Customer?
// {

// }
//c1.display()
