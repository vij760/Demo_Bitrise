//
//  SuperHeroCell.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 9/14/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//

import UIKit

class SuperHeroCell: UICollectionViewCell {
    @IBOutlet var lbl_FirstName: UILabel!
    
    @IBOutlet var lbl_LastName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateWith(superHero: SuperHero) {
        
        lbl_FirstName.text = superHero.firstName
        lbl_LastName.text = superHero.lastName
    }

}
