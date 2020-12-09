import UIKit

// DAY10 classes and inheritance

// creating own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
print(poppy.name)
print(poppy.breed)
print("------------------------")

// class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}



// override functions
class Wolf: Dog {
    init(name: String) {
        super.init(name: name, breed: "Wolf")
    }
    override func makeNoise() {
        print("Auuu!")
    }
}
let wolf = Wolf(name: "Wolf")
wolf.makeNoise()

// make class no other classes can inherit it with 'final' keyword
final class Dog2 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
print("------------------------")

// copying object
class Singer {
    var name = "Karsu"
}

var singer = Singer()
print(singer.name)
var copySinger = singer
copySinger.name = "Copy-Of-Karsu"
print("after copy proccess singer name is now \(singer.name)") // Those are same value because they are point to the same object in 'memory'
print("------------------------")

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
print("------------------------")

// Mutability
class Singer2 {
    var name = "Taylor Swift" // to change this mutability  
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)
