//
//  Dwarf.swift
//  Dwarves
//
//  Created by Max Luttrell on 5/4/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

// model class which holds an array of dwarves and allows us to add a random dwarf to it
class Dwarves {
    private var dwarves = [String]()
    var count: Int { return dwarves.count }
    
    // subscript allows accessing the array using []
    subscript(index: Int) -> String? {
        // this guard statement makes sure that index is in correct range.  if it isn't, the else block is executed to return nil.  otherwise it keeps going to return the correct dwarf for this index
        guard index >= 0 && index < dwarves.count else {
            return nil
        }
        
        return dwarves[index]
    }
    
    //  function to pick a dwarf at random and add to the array
    func addRandomDwarf () {
        var dwarf = "doc"
        let rand = Int(arc4random_uniform(7))
        switch rand {
        case 0:
            dwarf = "doc"
        case 1:
            dwarf = "grumpy"
        case 2:
            dwarf = "happy"
        case 3:
            dwarf = "sleepy"
        case 4:
            dwarf = "dopey"
        case 5:
            dwarf = "bashful"
        default:
            dwarf = "sneezy"
        }
        dwarves.append(dwarf)
    }
    
}


