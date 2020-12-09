import UIKit

// DAY11 protocols, extensions, and protocol extensions

// Protocols

protocol Identifiable {
    var id: String {get set} // get(read), set(write)
}


struct User: Identifiable {
    var id: String
}
User(id: "@id")


// Protocol Inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }


// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 9
number.squared()
number.isEven


// Protocol Extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()


// Protocol Oriented Programming

protocol Identifiable2 {
    var id: String {get set}
    func identiify()
}

extension Identifiable {
    func identiify(){
        print("My ID is \(id)")
    }
}

struct User2: Identifiable{
    var id: String
}

let user = User2(id:"@id")
user.identiify()
