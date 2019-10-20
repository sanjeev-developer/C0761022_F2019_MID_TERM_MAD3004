//
//  Insurance.swift
//  C0761022_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 com.lambton. All rights reserved.
//

import Foundation

class Insurance : Bill
{
    var type:String
    var provider: String
    var startdate: String
    var enddate: String
    var billAmount : Float
    var insuranceindays : String
    var totalinstopay : String
    
    init(type:String, provider: String, startdate: String,enddate: String,insuranceindays: String, totalinstopay: String, billId : String, billDate : String,billAmount: Float, billType : Bill.Types)
    {
        self.type = type
        self.provider = provider
        self.startdate = startdate
        self.enddate = enddate
        self.billAmount = billAmount
        self.insuranceindays = insuranceindays
        self.totalinstopay = totalinstopay
        
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    override func DisplayData() {
        print("***************************************")

        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Bill Amount : $\(billAmount)")
        print("Provider name : \(provider)")
        print("start date : \(startdate)")
        print("end date : \(enddate)")
        print("Insurance in days : \(insuranceindays)")
        print("total installment to pay : \(totalinstopay)")
    }
}
