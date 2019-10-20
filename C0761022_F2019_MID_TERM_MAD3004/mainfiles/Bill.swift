//
//  Bill.swift
//  C0761022_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 com.lambton. All rights reserved.
//

import Foundation

class Bill : DisplayProtocol
{
    func DisplayData() {
        
    }
    
    
    var billId : String
    var billDate :  String
    enum Types {
        case Internet
        case Hydro
        case Mobile
        case Insurance
    }
    
    var billType : Types
    var totalBillAmount : Float = 0
    
    init(billId : String , billDate : String, billType : Types) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
}
