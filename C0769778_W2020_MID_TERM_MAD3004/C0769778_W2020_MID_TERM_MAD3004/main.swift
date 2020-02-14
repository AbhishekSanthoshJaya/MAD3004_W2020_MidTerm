//
//  main.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

var c1 = Customer(customerId: "A98999", firstName: "Abhishek", lastName: "Santhosh Jaya", emailId: "abhisheksj35@gmail.com", bills: ["INT00" : 200])

var m1 = Mobile(billId: "MB200", billDate: NSDate() as Date, billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "Student Plan", mobileNumber: "9809890878", mobGbUsed: 1, minute: 6)

m1.display()
