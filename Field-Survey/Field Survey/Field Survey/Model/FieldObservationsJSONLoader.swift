//
//  FieldObservationsJSONLoader.swift
//  Field Survey
//
//  Created by Geoffrey Husser on 11/3/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import Foundation

class FieldObservationsJLoader {
    
    class func load(fileName: String) -> [FieldObservations] {
        var events = [FieldObservations]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            events = FieldObservationsJParser.parse(data)
        }
        return events
    }
    
}
