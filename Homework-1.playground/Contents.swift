/*:

## 1. Optional String (if statement)

 The Swift code below will set variable `password` to something; it might be an actual string, or it might be nil (no value).  You should be able to see its value on the right side of your playground screen.
 
 If `password` can be safely unwrapped, i.e. it is an actual string, then print the following to the debug area: "xxx is the password" (where xxx is the actual string).
 If `password` cannot be safely unwrapped, then print the following out to the debug area: "there is no password!"
 
 Make sure to try out your code for different values of password -- any time you add or remove code, the Playground should execute again and set password to a new value.  Alternately, you can also do Editor -> Run Playground to get a new password, or hit the play button towards the bottom of this window.
*/

let password: String?
password = generateStringOrNil()

// Your Swift code for question 1 here:


/*:
 ---
## 2. Optional String (if let statement)

Same question as 1, but use optional binding (an `if let` statement) instead.
 */

// Your Swift code for question 2 here:

