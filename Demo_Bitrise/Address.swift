//
//  Address.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 11/10/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//

import Foundation

class Address {
    var city: String
    var state:String
    var country:String
    var pin:Int
    var street:String
    var sector:String
    init(city:String, state:String, country:String, pin:Int, street: String, sector: String) {
        self.city = city
        self.state = state
        self.country = country
        self.pin = pin
        self.street = street
        self.sector = sector
        
    }
    
    func printTheValue()  {
        print("city = \(city), state = \(state), country = \(country), pin = \(pin), street = \(street), sector = \(sector)")
        addressExt()
    }
}
