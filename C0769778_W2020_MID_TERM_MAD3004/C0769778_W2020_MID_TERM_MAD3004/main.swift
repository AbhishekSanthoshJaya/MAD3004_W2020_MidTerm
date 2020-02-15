//
//  main.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//Mobile Objects
var m1 = Mobile(billId: "MB200", billDate: Date(), billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "Student Plan", mobileNumber: "9809890878", mobGbUsed: 1, minute: 6)
var m2 = Mobile(billId: "MB300", billDate: Date(), billType: BillType.MOBILE, manufacturerName: "CELLONE", planName: "5G4EVAAAA", mobileNumber: "9889890878", mobGbUsed: 2, minute: 11)

//Hydro Objects
var h1 = Hydro(billId: "HY219", billDate: Date(), billType: BillType.HYDRO, agencyName: "WATAAAAA", unitsUsed: 22.21)
var h2 = Hydro(billId: "HY199", billDate: Date(), billType: BillType.HYDRO, agencyName: "MOREWATAAAAA", unitsUsed: 8.2)

//Internet Objects
var in1 = Internet(billId: "IN167", billDate: Date(), billType: BillType.INTERNET, providerName: "SKYLINK", gbUsed: 2.2)
var in2 = Internet(billId: "IN122", billDate: Date(), billType: BillType.INTERNET, providerName: "STARLIGHT", gbUsed: 6.2)

//Customer Objects
var c1 = Customer(customerId: "ABHI200", firstName: "Abhishek", lastName: "Santhosh Jaya", emailId: "abhisheksj@35gmail.com", customerBills: ["MB200": m1])
var c2 = Customer(customerId: "PEAKY100", firstName: "Thomas", lastName: "Shelby", emailId: "thomas@gmail.com", customerBills: ["MB300": m2, "HY219": h1])

//var billDictionary = [String: Bill]()
//billDictionary.updateValue(m1, forKey: "MB200")
//billDictionary.updateValue(m2, forKey: "MB300")
//billDictionary.updateValue(h1, forKey: "HY219")
//billDictionary.updateValue(h2, forKey: "HY199")
//billDictionary.updateValue(in1, forKey: "IN167")
//billDictionary.updateValue(in2, forKey: "IN122")
//dump(billDictionary)

c1.newBill(bill: in1, customerId: "ABHI200")
c1.newBill(bill: in2, customerId: "ABHI200")
//c2.newBill(bill: h2, customerId: "PEAKY100")
c1.display()
c2.display()

var customer = Array<Customer>()
//func getCustomerById(customerId: String) -> Customer?
//{
//
//}

