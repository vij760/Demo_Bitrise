//
//  Client.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 11/9/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//

import Foundation
class Client {
    let service:Service
    
    init() {
        service = RealService()
    }
}
