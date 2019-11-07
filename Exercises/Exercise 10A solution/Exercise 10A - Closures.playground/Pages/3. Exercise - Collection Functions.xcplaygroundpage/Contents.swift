/*:
 ## Exercise - Collection Functions
 
 Using the code below, use the `map` function to create an array of `Int` values, whose values are equal to the original integer value, plus 1.  Use `$0` as you iterate through the values of the array.  Print the resulting collection.
 */

let scores = [25, 45, 77]

let newScores = scores.map{ $0 + 1 }
print(newScores)

/*:
 Using the code below, use the `filter` function to create a new array of `String` values. The new array should only include Strings longer than four characters.  Use `$0` as you iterate through the values of the array.  Print the resulting collection.
 */
let schoolSubjects = ["Math", "Computer Science", "Gym", "English", "Biology"]

let newSubjects = schoolSubjects.filter{ $0.count > 4 }
print(newSubjects)

//: [Previous](@previous)  |  page 3 of 3
