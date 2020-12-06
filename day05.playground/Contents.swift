import UIKit

// Day5 - functions, parameters, and errors

func welcomeUser(userName: String){
    print ("Welcome \(userName) !")
}
welcomeUser(userName: "guvenKaranfil")

// function composition:  By splitting your work into multiple small functions, function composition lets us build big functions by combining those small functions in various ways, a bit like Lego bricks.

func square(number: Int) -> Int {
    return number * number
}
print(square(number: 5))

// ternary operator
func greet(name: String) -> String {
    return name == "guven" ? "Oh wow!" : "Hello, \(name)"
}
print(greet(name: "guven"))

func getUser() -> (first: String, last: String) {
    return (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.last)


// default paramaters allow us to write flexible functions
func greet(_ person: String, isAdmin: Bool = false) { // ommiting parameter
    print("Hello \(isAdmin ? "Admin" : ""), \(person)!")
}
greet("kerem")
greet("Guven",isAdmin: true)

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" { // throw error if password is password
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("password is correct!")
} catch {
    print("You can't use that password.")
}

// inout paramater
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)

/*
 references:
 https://www.hackingwithswift.com/100/5
 https://www.donnywals.com/working-with-throwing-functions-in-swift/
*/
