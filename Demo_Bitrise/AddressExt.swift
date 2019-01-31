//
//  AddressExt.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 11/10/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//

import Foundation

extension Address {
    var fatherCity: String {return "faizabad"}
    var fatherState:String  {return "UttarPradesh"}
    var fatherCountry:String  { return "India"}
    
    func addressExt()  {
        city = city + city
        print("city in ext = \(city)")
        print("fatherCity = \(fatherCity)")
        print("fatherState = \(fatherState)")
        print("fatherCountry = \(fatherCountry)")

    }
//    var pin:Int
//    var street:String
//    var sector:String
//    convenience init(city: String, state:String, country: String) {
//        self.city = city
//        self.state = state
//        self.country = country
//        self.pin = 234567
//        self.street = "faizabad"
//        self.sector = "ayodhya"
//    }
    
}
