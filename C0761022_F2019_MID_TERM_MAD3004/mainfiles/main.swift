import Foundation

//date formatting
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let internetbilldate = formatter.date(from: "2019/07/10")?.dateformatter()
let mobilebilldate = formatter.date(from: "2019/08/08")?.dateformatter()
let hydrobilldate = formatter.date(from: "2019/09/09")?.dateformatter()

//customer dictionary
var customerDictionary = Dictionary<String,Customers>()

//customer 1
var iot = Internet(providerName: "Fido", gbUsed: 10.50, billId: "int001", billDate: internetbilldate!, billAmount: 40.70, billType: Bill.Types.Internet)
var mob = Mobile(manufacturerName: "Pixel", planName: "SuperDuper", mobileNumber: "4372475796", internetUsed: 60, minutesUsed: 500, billAmount: 56.50, billId: "mob001", billType:Bill.Types.Mobile, billDate: mobilebilldate!)
var hydra = Hydro(agencyName: "toronto energy", unitsConsumed: 100, billAmount: 200, billId: "hydra001", billType: Bill.Types.Hydro, billDate: hydrobilldate!)
var c = Customers(customerId: "l001", firstName: "sanjeev ", lastName: "gupta", email: "sanjeev@gmail.com", billDictionary : [iot.billId:iot,mob.billId:mob,hydra.billId:hydra])

//customer 2
var iot1 = Internet(providerName: "Chatr", gbUsed: 20, billId: "int002", billDate: internetbilldate!, billAmount: 20.70, billType: Bill.Types.Internet)
var hydra1 = Hydro(agencyName: "bramptonhydro", unitsConsumed: 50.8, billAmount: 70, billId: "hydra002", billType: Bill.Types.Hydro, billDate: hydrobilldate!)
var c1 = Customers(customerId: "l002", firstName: "samuel ", lastName: "willson", email: "sam@gmail.com", billDictionary : [iot1.billId:iot1,hydra1.billId:hydra1])

//customer 3
var c2 = Customers(customerId: "l003", firstName: "bill ", lastName: "gates", email: "bill@developer.com", billDictionary: [:])


//creating customer dictionary
customerDictionary.updateValue(c, forKey: c.customerId)
customerDictionary.updateValue(c1, forKey: c1.customerId)
customerDictionary.updateValue(c2, forKey: c2.customerId)

//print bill details of all customers
for i in customerDictionary.values{
    i.iDisplay()
}


