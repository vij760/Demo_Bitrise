//
//  IGListKitVC.swift
//  Demo_Bitrise
//
//  Created by Vijay S Yadav on 9/14/18.
//  Copyright © 2018 Vijay Singh Yadav. All rights reserved.
//

import UIKit
import IGListKit

class IGListKitVC: UIViewController {
    enum Gender {
        case male
        case female
        case unknown
    }

    struct Human {
        var gender: Gender
        var age:Int = 10
        
        init(gender: Gender){
            self.gender = gender
            print("gender = \(gender)")
        }
        
        init(age:Int) {
            self.age = age
            self.gender = .unknown
            print("age = \(self.age) ,gender = \(gender)")
        }
        
        init(age:Int, gender:Gender) {
            self.age = age
            self.gender = gender
            print("age = \(self.age) ,gender = \(gender)")
        }
        
        init(_ age:Int, _ gender:Gender) {
            self.age = age
            self.gender = gender
            print("age = \(self.age) ,gender = \(gender)")
        }
    }
    
    @IBOutlet var collectionView: UICollectionView!
    lazy var adapter: ListAdapter =  {
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter(updater: updater,
                                  viewController: self,
                                  workingRangeSize: 1)
        adapter.collectionView = collectionView
        adapter.dataSource = SuperHeroDataSource()
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = adapter
        let client = Client()
        print("client \(client.service)")
        print("********************************************")
        let _:Human = Human(gender: .male)
        let _:Human = Human(age: 25)
        let _:Human = Human(35, .female)
        let _:Human = Human(age: 40, gender: .male)
        print("********************************************")

//     print("human = \(human)")
        
        let address: Address = Address(city: "pune", state: "maharastra", country: "India", pin: 224001, street: "marunji", sector: "R3")
        address.printTheValue()        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
