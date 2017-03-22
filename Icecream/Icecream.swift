//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
            "Joe": "Peanut Butter and Chocolate",
            "Tim": "Natural Vanilla",
            "Sophie": "Mexican Chocolate",
            "Deniz": "Natural Vanilla",
            "Tom": "Mexican Chocolate",
            "Jim": "Natural Vanilla",
            "Susan": "Cookies 'N' Cream"
    ]
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        
       var names: [String] = []
        
        for (name, value) in favoriteFlavorsOfIceCream {
            
            if value == flavor {
                
                names.append(name)
            }
        }
        return names
    }
    

    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        
        var iceCreamCount = 0
        
        for value in favoriteFlavorsOfIceCream.values {
            
            if value == flavor {
                
                iceCreamCount += 1
            }
        }
        return iceCreamCount
    }
    
    
    
    // 4.
   
    func flavor(forPerson: String) -> String? {
        
    return favoriteFlavorsOfIceCream[forPerson]
        
    }
    
    
    // 5.
   
    func replace(flavor: String, forPerson: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
    }
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person) != nil {
            return false
        } else {
            return true
        }
    }
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var partyList = ""
        
        var count = 0
        
        for name in allNames {
            count += 1
            if let iceCream = favoriteFlavorsOfIceCream[name] {
           
                partyList += "\(name) likes \(iceCream)"
            
            }
            
            if count < allNames.count{
                partyList += "\n"
            }
        }
        return partyList
    }
    
}
