import Foundation

//date formatting
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let date1 = formatter.date(from: "2019/11/11")?.dateformatter()
let date2 = formatter.date(from: "2019/08/11")?.dateformatter()
let date3 = formatter.date(from: "2019/09/13")?.dateformatter()

//customer dictionary
var custDictionary = Dictionary<String,Customers>()
//print(result)

//customer 1
var i = Internet(providerName: "Freedom", gbUsed: 45.7, billId: "I001", billDate: date1!, billAmount: 56.7, billType: Bill.Types.Internet)
var m = Mobile(manufacturerName: "Apple", planName: "Big Gig", mobileNumber: "123456789", internetUsed: 6.7, minutesUsed: 476, billAmount: 78.6, billId: "m001", billType:Bill.Types.Mobile, billDate: date3!)
var h = Hydro(agencyName: "Planet Energy", unitsConsumed: 56.7, billAmount: 150, billId: "H101", billType: Bill.Types.Hydro, billDate: date2!)

var c = Customer(customerId: "C001", firstName: "Raju ", lastName: "Bhai", email: "@gmail.com", billDictionary : [i.billId:i,m.billId:m,h.billId:h])

//customer 2
var i1 = Internet(providerName: "Rogers", gbUsed: 100.9, billId: "I001", billDate: date1!, billAmount: 89.5, billType: Bill.Types.Internet)
var h1 = Hydro(agencyName: "Planet Energy", unitsConsumed: 67.8, billAmount: 67, billId: "H001", billType: Bill.Types.Hydro, billDate: date3!)
var c1 = Customer(customerId: "C002", firstName: "Reena ", lastName: "Kaur", email: "@gmail.com", billDictionary : [i1.billId:i1,h1.billId:h1])

//customer 3

var c2 = Customer(customerId: "C003", firstName: "Sam ", lastName: "Developer", email: "Sanjeec @developer.com", billDictionary: [:])


//creating customer dictionary
custDictionary.updateValue(c, forKey: c.customerId)
custDictionary.updateValue(c1, forKey: c1.customerId)
custDictionary.updateValue(c2, forKey: c2.customerId)

//print bill details of all customers
for i in custDictionary.values{
    i.iDisplay()
}

