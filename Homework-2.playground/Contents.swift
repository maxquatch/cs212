
/*:
 ---
## 1. Counting nils

The `generateRandomArrayOfIntsAndNils` function creates an array that is a random mix of Int values and nils. 
 
 Write code that counts the number of nil values in array1 and prints this number to the debug area
*/

let array1: [Int?]
array1 = generateRandomArrayOfIntsAndNils()

var total: Int = 0

// Your Swift code for question 1 here:


/*:
 ---
## 2. Mean

Write code that calculates the mean (average) value of the non-nil elements in array2, and prints the mean out to the debug area.  Note that the answer might include decimal places.
*/
let array2 = generateRandomArrayOfIntsAndNils()

// Your Swift code for question 2 here:


/*:
 ---
## 3. New Array

 Write code that adds values to the array named nilFree3 so that it has the same elements
 as array3, except without the nil values. The elements in nilFree3 should be
 Ints, not Int optionals.
 
*/

let array3 = generateRandomArrayOfIntsAndNils()
var nilFree3 = [Int]()

// Your Swift code for question 3 here:


/*:
 ---
 ## 4. Airline
 
 There are two dictionaries defined for two different fictional airlines, NorcalAir
 and SocalAir named `norcal` and `socal`, respectively, representing the airports and
 cities that the two airlines serve.
 
 The key is a String containing the airport code, e.g. "SFO", and the value
 is a String containing the name of the city that the airport serves, e.g. "San
 Francisco".
 
 NorcalAir has decided to acquire SocalAir and make a new airline called
 CaliAir, which serves all of the cities that the existing airlines serve.
 Your job is to create a new dictionary named `cali` which contains all
 of the cities that CaliAir serves, i.e. all cities that either NorcalAir
 or SocalAir serve.  If both NorcalAir and SocalAir serve the same city,
 `cali` should contain the name of the city from `norcal`.  Like the existing
 dictionaries, its key and value should both be of type String.
 
 Once you have created `cali`, print out all entries to the debug area.  Order
 doesn't matter.
 
 Hint: you might want to print out all entries in `norcal` and `socal` first to
 see what's in the dictionaries and help verify your answer.
 
 Note: your code should work for any given `norcal` and `socal` dictionaries.
 In other words, I should be able add a city to `norcal` and your solution should
 still work.
 */

// Your Swift code for question 4 here:


/*:
 ---
## 5. Sort array

 Write code that will sort array4 using your own logic.  You might want to
 review the logic for Selection Sort or Bubble Sort online.  Find a sort
 algorithm that you like in a language that you are familiar with and then
 translate it to Swift.  Resist the temptation to find a sort online that
 is already written in Swift and copy and paste it.  Do not use Swift's sort
 method.

 Note that array4 is declared with var, so that it is a mutable array, i.e. it
 can be modified.
*/
 
var array4 = generateRandomArrayOfIntsAndNils()

// Your Swift code for question 5 here:

