//
//  FieldObservationsJParser.swift
//  Field Survey
//
//  Created by Geoffrey Husser on 11/3/17.
//  Copyright © 2017 Geoffrey Husser. All rights reserved.
//

import Foundation

class FieldObservationsJParser {
    
    static let dateFormatter = DateFormatter()
    
   class func parse(_ data: Data) -> [FieldObservations] {
        var fieldObs = [FieldObservations]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
    
    if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
        status == "ok"{
        
        if let observations = root["observations"] as? [Any] {
            for observation in observations {
                if let observation = observation as? [String: String]{
                    if let classificationName = observation["classification"],
                       let title = observation["title"],
                       let description = observation["description"],
                       let dateString = observation["date"],
                       let date = dateFormatter.date(from: dateString){
                        
                        if let fieldObservations = FieldObservations(classificationName: classificationName, title: title, description: description, date: date){
                            fieldObs.append(fieldObservations)
                        }
                    }
                }
            }
        }
    }
    
        return fieldObs
    }
}
