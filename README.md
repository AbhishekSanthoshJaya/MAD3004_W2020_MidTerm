# MAD3004_W2020_MidTerm 

## CUSTOMER BILL CALCULATOR

## PROJECT CONTRIBUTORS

Abhishek Santhosh Jaya (C0769778)

## PROJECT DESCRIPTION
Mid term test: A program that calculates the total bills of a customer. A bill could be for the internet, hydro or mobile usage. A customer may have multiple bills. 

## PROJECT STRUCTURE
<img src="https://i93.servimg.com/u/f93/18/45/29/87/classt10.png" alt="Class Structure" style="float: left; margin-right: 10px;"/>
<img src="https://i93.servimg.com/u/f93/18/45/29/87/classt11.png" alt="Class Structure" style="float: center; margin-right: 50px;"/>

## CLASSES USED

* **PROTOCOLS**: IDISPLAY
* **BILL CLASSES**: MOBILE, HYDRO, INTERNET
* **EXTENSIONS**: DOUBLE, DATE
* **MAIN CLASSES**: BILL, CUSTOMER
* **ADDITIONAL CLASSES**: INSURANCE (BONUS)

## PROJECT OUTPUTS

### DISPLAYING ALL CUSTOMER INFORMATION WITH THEIR BILLS AND TOTAL
````
Customer ID   : ABHI100
Name          : Abhishek Santhosh Jaya
Email ID      : abhisheks@j35gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : MB100
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : MOBILE
    Bill Amount             : $26.20
    Manufacturer Name       : APPLE INC.
    Plan Name               : Student Plan
    Mobile Data Used        : 1 GB
    Minutes Used            : 6 MINS

    ****************************************************
    Bill ID                 : IN100
    Bill Date               : Friday, September 20, 2019
    Bill Type               : INTERNET
    Bill Amount             : $6.60
    Provider Name           : SKYLINK
    Data (IN GB)            : 2.2 GB

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $32.80
    ****************************************************


Customer ID   : ABHI200
Name          : Thomas Shelby
Email ID      : peakyblinders@gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : MB200
    Bill Date               : Tuesday, June 18, 2019
    Bill Type               : MOBILE
    Bill Amount             : $52.20
    Manufacturer Name       : FIDO
    Plan Name               : LTE+3G 9.5GB Promo plan
    Mobile Data Used        : 2 GB
    Minutes Used            : 11 MINS

    ****************************************************
    Bill ID                 : HY100
    Bill Date               : Thursday, September 12, 2019
    Bill Type               : HYDRO
    Bill Amount             : $44.42
    Agency Name             : PUREWATA
    Units Consumed          : 22.21 Units

    ****************************************************
    Bill ID                 : INSUR100
    Bill Date               : Sunday, August 11, 2019
    Bill Type               : INSURANCE
    Insurance Provider Name : HAPPY INC
    Type of Insurance       : HOME
    Starting Date           : Friday, March 15, 2019
    Ending Date             : Saturday, March 14, 2020
    Total days valid        : 365
    First Payment Amount    : $350.00
    Total Insurance Amount  : $4672.00

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $446.62
    ****************************************************


Customer ID   : ABHI300
Name          : Walter White
Email ID      : therealheisenberg@gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : IN200
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : INTERNET
    Bill Amount             : $18.60
    Provider Name           : STARLIGHT
    Data (IN GB)            : 6.2 GB

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $18.60
    ****************************************************
````
### DISPLAYING INDIVIDUAL CUSTOMERS THROUGH ID: getCustomerById(customerId: "ABHI300")
````
 ****** GET CUSTOMER BY ID RESULT ******

Customer ID   : ABHI300
Name          : Walter White
Email ID      : therealheisenberg@gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : IN200
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : INTERNET
    Bill Amount             : $18.60
    Provider Name           : STARLIGHT
    Data (IN GB)            : 6.2 GB

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $18.60
    ****************************************************
````
### IF A CUSTOMER WITH THE GIVEN ID DOES NOT EXIST: getCustomerById(customerId: "ABHI500")
````
A CUSTOMER WITH THIS ID:(ABHI500) DOES NOT EXIST...
````
### ADDING A BILL THAT IS ALREADY PRESENT: c1.newBill(bill: m1, billId: "MB100")
````
ERROR! THIS BILL HAS ALREADY BEEN ADDED!
````
### REMOVING A BILL THAT DOES NOT EXIST: c1.removeBill(billId: "IN500")
````
CANNOT REMOVE. A BILL WITH THIS ID DOES NOT EXIST! : IN500
````
### FINDING DETAILS OF A BILL THROUGH THE BILL ID: c3.billDetails(billId: "IN200")
````
THE DETAILS OF IN200 ARE AS FOLLOWS:

    Bill ID                 : IN200
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : INTERNET
    Bill Amount             : $18.60
    Provider Name           : STARLIGHT
    Data (IN GB)            : 6.2 GB
````
### EMAIL AND PHONE NUMBER VERIFICATION: EMAIL ID MISSING @, PHONE NUMBER NOT 10 DIGITS
````
THIS EMAIL IS INVALID: therealheisenberggmail.com

THIS MOBILE NUMBER IS NOT VALID: 471029230
````

### SORTING CUSTOMERS IN DECREASING ORDER OF BILL TOTAL:
````
Customer ID   : ABHI200
Name          : Thomas Shelby
Email ID      : peakyblinders@gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : MB200
    Bill Date               : Tuesday, June 18, 2019
    Bill Type               : MOBILE
    Bill Amount             : $52.20
    Manufacturer Name       : FIDO
    Plan Name               : LTE+3G 9.5GB Promo plan
    Mobile Data Used        : 2 GB
    Minutes Used            : 11 MINS

    ****************************************************
    Bill ID                 : HY100
    Bill Date               : Thursday, September 12, 2019
    Bill Type               : HYDRO
    Bill Amount             : $44.42
    Agency Name             : PUREWATA
    Units Consumed          : 22.21 Units

    ****************************************************
    Bill ID                 : INSUR100
    Bill Date               : Sunday, August 11, 2019
    Bill Type               : INSURANCE
    Insurance Provider Name : HAPPY INC
    Type of Insurance       : HOME
    Starting Date           : Friday, March 15, 2019
    Ending Date             : Saturday, March 14, 2020
    Total days valid        : 365
    First Payment Amount    : $350.00
    Total Insurance Amount  : $4672.00

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $446.62
    ****************************************************


Customer ID   : ABHI100
Name          : Abhishek Santhosh Jaya
Email ID      : abhisheksj@35gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : MB100
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : MOBILE
    Bill Amount             : $26.20
    Manufacturer Name       : APPLE INC.
    Plan Name               : Student Plan
    Mobile Data Used        : 1 GB
    Minutes Used            : 6 MINS

    ****************************************************
    Bill ID                 : IN100
    Bill Date               : Friday, September 20, 2019
    Bill Type               : INTERNET
    Bill Amount             : $6.60
    Provider Name           : SKYLINK
    Data (IN GB)            : 2.2 GB

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $32.80
    ****************************************************


Customer ID   : ABHI300
Name          : Walter White
Email ID      : therealheisenberg@gmail.com


                ---- BILL INFORMATION ----

    Bill ID                 : IN200
    Bill Date               : Saturday, October 12, 2019
    Bill Type               : INTERNET
    Bill Amount             : $18.60
    Provider Name           : STARLIGHT
    Data (IN GB)            : 6.2 GB

    ****************************************************
            TOTAL BILL AMOUNT TO BE PAID: $18.60
    ****************************************************

````
## REFERENCES

* [Swift.org](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) - Swift syntax and general information
* [iOSTutorialJunction](https://iostutorialjunction.com/2019/09/get-number-of-days-between-two-dates-swift.html) - Used in days between calculation of insurance class.
* [Stackoverflow](https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift) - Used in email verification.
* [Medium](https://medium.com/@YogevSitton/use-auto-describing-objects-with-customstringconvertible-49528b55f446) - To display customer object details.
* [NSdateformatter](https://nsdateformatter.com/) - To view different formats.
* [Nsscreencast](https://nsscreencast.com/episodes/367-dates-and-times) - Used to format dates.
* [Stackoverflow](https://stackoverflow.com/questions/24070450/how-to-get-the-current-time-as-datetime) - Used to input date at object creation
* [Stackoverflow](https://stackoverflow.com/questions/24130026/swift-how-to-sort-array-of-custom-objects-by-property-value)- Used in sorting customer array
