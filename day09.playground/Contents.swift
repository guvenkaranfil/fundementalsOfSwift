import UIKit

// DAY09 access control, static properties, and laziness

// Initilializers

struct User {
    var userName: String
    
    init() {
        userName = "Anonymous"
    }
}

var user = User()
print(user.userName)
user.userName = "@username"
print(user.userName)


// refering current instance with 'self'
struct User2 {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

var user2 = User2(name: "Guven")
print(user2.name)
user2.name = "Guven Karanfil"
print(user2.name)

// Lazy properties

struct FamilyTree {
    init(){
        print("Creating Family Tree!")
    }
}

struct Person {
    var name : String
    lazy var familyTree = FamilyTree() // lazy keyword help to add laziness on familyTree property of Person struct
    
    init(name: String){
        self.name = name
    }
}
var user3 = Person(name: "@person")

// static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// Access control

struct Person2{
    private var id: String
    
    init (id: String){
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let user4 = Person2(id: "@uniq_id")
print(user4.identify())

/*
 Resources;
 - https://www.hackingwithswift.com/100/9
*/
