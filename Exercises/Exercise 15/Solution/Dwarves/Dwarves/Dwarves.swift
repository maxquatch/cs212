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
        
        //we have added a dwarf, save new array
        save()
    }
    
    // save dwarves array to disk
    func save() {
        
        // encode the array
        var encodedDwarves: Data?
        let propertyListEncoder = PropertyListEncoder()
        encodedDwarves = try? propertyListEncoder.encode(dwarves)
        if let encodedDwarves = encodedDwarves {
            print("we have encoded dwarves.  it is \(encodedDwarves.count) bytes")
        }
        
        // open up a file handle to write to
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let archiveURL = documentsDirectory[0].appendingPathComponent("dwarvesData").appendingPathExtension("plist")
        
        do {
            try encodedDwarves?.write(to: archiveURL, options: .noFileProtection)
        } catch {
            print("error writing dwarves file")
        }
    }
    
    // reloads dwarves array from disk
    func reload() {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let archiveURL = documentsDirectory[0].appendingPathComponent("dwarvesData").appendingPathExtension("plist")

        let propertyListDecoder = PropertyListDecoder()
        if let retrievedData = try? Data(contentsOf: archiveURL),
            let decodedDwarves = try? propertyListDecoder.decode([String].self, from: retrievedData) {
                print("we decoded dwarves!")
                dwarves = decodedDwarves
        }
        
    }
    
    func removeAll() {
        dwarves.removeAll()
        save()
    }
    
}


