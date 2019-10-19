//
//  Coustmers.swift
//  C0761022_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 com.lambton. All rights reserved.
//

import Foundation

class Customers : DisplayProtocol
{
    var customerId : String = ""
    var firstName : String = ""
    var lastName : String = ""
    var fullName : String = ""
    var email : String = ""
    //var bill : Bill
    
    var billDictionary = Dictionary<String,Bill>()
    var  totalBill : Float = 0
    
    func DisplayData() {
        <#code#>
    }
    
 //   var  totalBill : Float = 0
    
    init(customerId : String, firstName : String, lastName : String, email : String ,billDictionary : Dictionary<String,Bill>)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.billDictionary = billDictionary
        self.fullName = firstName + lastName
    }
    
    
    func iDisplay() {
        print("**************************************************************")
        print("Customer Id : \(customerId)")
        print("Full Name : \(fullName)")
        
        //check if customer has any bills
        if billDictionary.count == 0
        {
            print("No bills for this customer")
        }
        
        
        //display bill details by iterating through bill dictionary
        for i in billDictionary.values
        {
            i.DisplayProtcol()
        }
        
    }
}
