//
//  Classification.swift
//  Field Survey
//
//  Created by Geoffrey Husser on 11/3/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import UIKit

enum Classification: String {
    case bird
    case amphibian
    case reptile
    case mammal
    case fish
    case plant
    case insect
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")            
    }
}
