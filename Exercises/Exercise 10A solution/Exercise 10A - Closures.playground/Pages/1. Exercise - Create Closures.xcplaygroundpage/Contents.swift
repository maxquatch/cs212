/*:
 ## Exercise - Create Closures
 
 Create a closure assigned to a constant `blankClosure` that has no parameters and no return value.  It's up to you what to put inside of it, a print statement is a good choice.
 */
let blankClosure = { () -> Void in
    print("blank closure")
}


/*:
  Create a closure assigned to a constant `fourClosure` that has no parameters and returns an `Int`.  The body of the closure should always return the value 4. Call the closure two times.  When you call it, make sure you can see that it evaluates to the value 4.
 */
let fourClosure = { () -> Int in
    return 4
}

fourClosure()
fourClosure()

/*:
 Create a closure assigned to a constant `greeting` that accepts a `name` String argument with no return value.  Within the body of the closure, print the argument.  Call the closure two times using "Gary" and "Linda" as arguments.
 */

let greeting = { (name: String) -> Void in
    print(name)
}

greeting("Gary")
greeting("Linda")


//: page 1 of 3  |  [Next: Exercise - Passing Closures as Arguments and Syntactic Sugar](@next)
