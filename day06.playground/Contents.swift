import UIKit

// Day6 closures part one

let welcomeMessage = { (name: String) in
    print("Welcome \(name)")
}

// as seen below, closures don't use paramater labels like normal functions while running the function
welcomeMessage("güven")


let sayHiWithReturn = { (name: String) -> String in
    return "Hi Admin " + name
}

let message = sayHiWithReturn("Guven")
print(message)


// closures as paramaters
let driving = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

print ("--------------------------------")

// trailing closure syntax
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel2 {
    print("I'm driving in my car")
}
