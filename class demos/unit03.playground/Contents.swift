//: Playground - noun: a place where people can play
// Unit 3 in-class 

import UIKit

//in a playground, create a struct called Temperature.  it should have one stored property, celsius, of type Double
//add a computed property, fahrenheit.  the formula for conversion is F = 1.8*C + 32
//add an observer which makes sure that the celsius temperature is never below absolute zero, -273.15
//add a function which prints out the celsius temperature and the equivalent fahrenheit temperature to the debug area
//create a function which sets the temperature but takes a fahrenheit temperature as its parameter.  i.e. if you call the function with fahrenheit 32 it should set the celsius to 0
//test out your struct with some Swift code that creates a Temperature and tests out all the functions

struct Temperature {
    let absZero = -273.15
    var celsius: Double = 0 {
        didSet {
            if celsius < absZero {
                print("note: low celsius value entered.  setting celsius to \(absZero)")
                celsius = absZero
            }
        }
    }
    var fahrenheit: Double {
        get {
            return 1.8 * celsius + 32
        }
    }
    func printInfo() {
        print("celsius: \(celsius)  fahrenheit: \(fahrenheit)")
    }
    mutating func setTemp(fahrenheit: Double) {
        celsius = (fahrenheit - 32.0) / 1.8
    }

}

var room = Temperature(celsius: 20.0)
//var room = Temperature()
room.printInfo()
room.setTemp(fahrenheit: 100)
room.printInfo()
room.celsius = -300
room.printInfo()
//room.setTemp(fahrenheit: -500)
//room.printInfo()

//in a playground, create the Player class below.  notice that you get an error!  think about why.  now make all of the properties optionals.  do you still get the error?
//change the properties back to regular variables (not optionals).  add an init() method to the function which can set all the properties


class Player {
    var name: String
    var weight: Int
    var height: Int
    var age: Int
    
    init(name: String, weight: Int, height: Int, age: Int) {
        self.name = name
        self.weight = weight
        self.height = height
        self.age = age
    }
    
    func printInfo() {
        print("\(name)")
        print("\(weight) kg, \(height) m, \(age) yrs")
    }
}

//create a new class BaseballPlayer which is derived from Player.  It should have two properties: atBats, and hits, initialized to zero
//override its printInfo() function to display the batting average, for which the formula is: hits / atBats.  Note: it should also display name, weight, height, age.

class BaseballPlayer : Player {
    var atBats = 0
    var hits = 0
    
    override func printInfo() {
        var average = 0.0
        if atBats > 0 {
            average = Double(hits) / Double(atBats)
        }
        super.printInfo()
        let output = String(format: "%.3f", average)
        print("batting average: \(output)")
    }
    
    init(name: String, weight: Int, height: Int, age: Int, atBats: Int, hits: Int) {
        super.init(name: name, weight: weight, height: height, age: age)
        self.atBats = atBats
        self.hits = hits
    }
        
        
}

//add some Swift code which creates a BaseballPlayer instance.  Initialize it with some values of your choosing, and call its printInfo()
var batter = BaseballPlayer(name: "batter", weight: 100, height: 2, age: 25, atBats: 8400, hits: 2873)
//batter.atBats = 8400
//batter.hits = 2873
batter.printInfo()








