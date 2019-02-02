//
//  Plant.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 2/2/19.
//  Copyright © 2019 Vijay Singh Yadav. All rights reserved.
//

import Foundation
class plant {
    
    var plantName: String
    var plantColor:String
    var plantType:String
    var plantCondition:String
    var plantSeason:String
    
    init(_plantName:String, _plantColor:String, _plantType:String, _plantCondition:String, _plantseason:String) {
        
        self.plantName = _plantName
        self.plantColor = _plantColor
        self.plantType = _plantType
        self.plantCondition = _plantCondition
        self.plantSeason = _plantseason
        
    }
    
    func bindData()  {
        print("print data")
    }
}
