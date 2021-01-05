//
//  Coffee.swift
//  PassingDataLesson
//
//  Created by Daniel Peters on 1/5/21.
//

import SwiftUI

struct Coffee : Identifiable {
    
    let id = UUID()
    let name : String
    let imageUrl : String
}

//this is how you return the variables in associated with coffee
// you are creating a function call "all" and it is going to return an array of Coffee and it is going to use the array that is within the return brackets.

extension Coffee {
    static func all() -> [Coffee] {
        return [
            
            Coffee(name: "Capacino", imageUrl: "Coffee1"),
            Coffee(name: "Expresso", imageUrl: "Coffee2"),
            Coffee(name: "Regular", imageUrl: "Coffee3")
        
        
        ]
    }
}
