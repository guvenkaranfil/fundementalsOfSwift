import UIKit

// DAY8, structs, properties, and methods

// Computed properties
struct User {
    var isLogged: Bool
    
    var routingHint: String {
        if isLogged {
            return "navigation to home screen..."
        }
        else {
            return "navigating to login screen..."
        }
    }
}

let newUser = User(isLogged: true);
print(newUser.routingHint)

// property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let Istanbul = City(population: 2000000)
print(Istanbul.collectTaxes())


// Computed properties
struct User2 {
    var isLogged: Bool
    
    mutating func signOut() {
        isLogged = false
    }
}
var newUser2 = User2(isLogged: true);
print("newUser2 logged info: \(newUser2.isLogged)")
newUser2.signOut()
print("newUser2 logged info: \(newUser2.isLogged)")
