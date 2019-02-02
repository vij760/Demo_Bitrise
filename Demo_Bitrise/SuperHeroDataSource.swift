//
//  SuperHeroDataSource.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 9/14/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//
import IGListKit
class SuperHeroDataSource: NSObject, ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [SuperHero(firstName: "Peter",
                          lastName: "Parker",
                          superHeroName: "SpiderMan",
                          icon: "🕷"),
                SuperHero(firstName: "Bruce",
                          lastName: "Wayne",
                          superHeroName: "Batman",
                          icon: "🦇"),
                SuperHero(firstName: "Tony",
                          lastName: "Stark",
                          superHeroName: "Ironman",
                          icon: "🤖"),
                SuperHero(firstName: "jack",
                          lastName: "Banner",
                          superHeroName: "Incredible Hulk",
                          icon: "🤢")]
}

    func listAdapter(_ listAdapter: ListAdapter,
                     sectionControllerFor object: Any) -> ListSectionController {
        return SuperHeroSectionController()
    }
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
