//
//  SuperHeroSectionController.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 9/14/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//
import IGListKit
class SuperHeroSectionController: ListSectionController {
    var currentHero: SuperHero?
    override func didUpdate(to object: Any) {
        guard let superHero = object as? SuperHero else {
            return
        }
        currentHero = superHero
    }
    
    override func numberOfItems() -> Int {
        return 1 // One hero will be represented by one cell
}

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let nibName = String(describing: SuperHeroCell.self)
        
        guard let ctx = collectionContext, let hero = currentHero else {
            return UICollectionViewCell()
        }
        
        let cell = ctx.dequeueReusableCell(withNibName: nibName,
                                           bundle: nil,
                                           for: self,
                                           at: index)
        guard let superHeroCell = cell as? SuperHeroCell else {
            return cell
        }
        superHeroCell.updateWith(superHero: hero)
        return superHeroCell
}
    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 80)
    }
}
