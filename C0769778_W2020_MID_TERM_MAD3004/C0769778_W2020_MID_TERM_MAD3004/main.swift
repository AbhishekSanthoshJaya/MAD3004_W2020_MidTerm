//
//  main.swift
//  C0769778_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//USED FOR FOMATTING AND INPUTTING DATE VALUES
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"

//------- MOBILE OBJECTS -------
var m1 = Mobile(billId: "MB100", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.MOBILE, manufacturerName: "APPLE INC.", planName: "Student Plan", mobileNumber: "4379805678", mobGbUsed: 1, minute: 6)
var m2 = Mobile(billId: "MB200", billDate: formatter.date(from: "2019/06/18")!, billType: BillType.MOBILE, manufacturerName: "FIDO", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "4371029230", mobGbUsed: 2, minute: 11)

//------- HYDRO OBJECTS -------
var h1 = Hydro(billId: "HY100", billDate: formatter.date(from: "2019/09/12")!, billType: BillType.HYDRO, agencyName: "PUREWATA", unitsUsed: 22.21)
var h2 = Hydro(billId: "HY200", billDate: formatter.date(from: "2019/05/15")!, billType: BillType.HYDRO, agencyName: "LIFELINE", unitsUsed: 8.2)

//------- INTERNET OBJECTS -------
var in1 = Internet(billId: "IN100", billDate: formatter.date(from: "2019/09/20")!, billType: BillType.INTERNET, providerName: "SKYLINK", gbUsed: 22.8)
var in2 = Internet(billId: "IN200", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.INTERNET, providerName: "STARLIGHT", gbUsed: 6.2)

//-------- INSURANCE OBJECTS -------
var insurance1 = Insurance(billId: "INSUR100", billDate: formatter.date(from: "2019/08/11")!, billType: BillType.INSURANCE, insuranceProviderName: "HAPPY INC", typeofInsurance: "HOME", startDate: formatter.date(from: "2019/03/15")!, endDate: formatter.date(from: "2020/03/14")!)
var insurance2 = Insurance(billId: "INSUR200", billDate: formatter.date(from: "2019/10/12")!, billType: BillType.INSURANCE, insuranceProviderName: "Live Long Providers", typeofInsurance: "HEALTH", startDate: formatter.date(from: "2020/05/22")!, endDate: formatter.date(from: "2022/05/21")!)

//------- CUSTOMER OBJECTS -------
var c1 = Customer(customerId: "ABHI100", firstName: "Abhishek", lastName: "Santhosh Jaya", emailId: "abhisheksj35@gmail.com")
var c2 = Customer(customerId: "ABHI200", firstName: "Thomas", lastName: "Shelby", emailId: "peakyblinders@gmail.com")
var c3 = Customer(customerId: "ABHI300", firstName: "Walter", lastName: "White", emailId: "therealheisenberg@gmail.com")

//------- ADDING BILLS TO CUSTOMER BILL DICTIONARY -------
c1.newBill(bill: m1, billId: "MB100")
c1.newBill(bill: in1, billId: "IN100")
c2.newBill(bill: m2, billId: "MB200")
c2.newBill(bill: h1, billId: "HY100")
c2.newBill(bill: insurance1, billId: "INSUR100")
c3.newBill(bill: in2, billId: "IN200")

//------- ADDING A BILL THAT IS ALREADY PRESENT -------
// c1.newBill(bill: m1, billId: "MB100")

// c3.newBill(bill: insurance2, billId: "INSUR200")
// c3.newBill(bill: h2, billId: "HY200")


//------- REMOVING BILLS FROM A CUSTOMER -------
// c1.removeBill(billId: "IN500")
// c3.removeBill(billId: "IN200")
//c3.display()

//------- DISPLAYING THE DETAILS OF A PARTICULAR BILL -------
// c3.billDetails(billId: "IN200")
// c2.billDetails(billId: "IN100")

//------- ARRAY OF CUSTOMERS AND ADDING CUSTOMER OBJECTS -------
var customers = Array<Customer>()
customers.append(c1)
customers.append(c2)
customers.append(c3)

//------- DISPLAYING ALL CUSTOMERS AND THEIR BILL INFORMATION -------
func displayAll(){
  for i in customers
  {
    i.display()
  }
}
//displayAll()

//------- METHOD TO GET INDIVIDUAL CUSTOMERS THROUGH ID -------
func getCustomerById(customerId: String)
{
var checkFlag = 0
for i in customers
  {
    if (customerId == i.customerId)
      {
      print("\n\t\t\t****** GET CUSTOMER BY ID RESULT ******")
      checkFlag = 1
      i.display()
      }
  }
  if (checkFlag == 0){
    print("\nA CUSTOMER WITH THIS ID:(\(customerId)) DOES NOT EXIST...")
  }
}
getCustomerById(customerId: "ABHI300")

//------- ATTEMPTING TO FIND A CUSTOMER USING AN INVALID ID -------
//getCustomerById(customerId: "ABHI500")

//------- METHOD TO DISPLAY CUSTOMERS IN DECREASING ORDER OF BILL TOTAL -------
func sortedDisplay(){
let sortedCustomers = customers.sorted(by:{ $0.allBillsTotal() > $1.allBillsTotal()})
for i in sortedCustomers
  {
    i.display()
  }
}
//sortedDisplay()
