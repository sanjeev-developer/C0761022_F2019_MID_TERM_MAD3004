//
//  Hydro.swift
//  C0761022_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 com.lambton. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName:String
    var unitsConsumed: Float
    var billAmount : Float
    init(agencyName:String,unitsConsumed:Float,billAmount : Float,billId : String,billType : Bill.Types,billDate : String)
    {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
        
    }
    override func DisplayData() {
        print("***************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Agency Name : \(agencyName)")
        print("Unit Consumed : \(unitsConsumed.dataUnitFormat())")
        print("Bill Amount : \(billAmount.currencyFormat())")
    }
}
