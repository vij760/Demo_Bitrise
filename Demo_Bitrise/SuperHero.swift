//
//  SuperHero.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 9/14/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//
import IGListKit
class SuperHero {
    
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var superHeroName: String
    private(set) var icon: String
    init(firstName: String,
         lastName: String,
         superHeroName: String,
         icon: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.superHeroName = superHeroName
        self.icon = icon
    }
}
extension SuperHero: ListDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        return firstName as NSString
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? SuperHero else {
            return false
        }
        return self.firstName == object.firstName
    }
}
