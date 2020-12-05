import UIKit

// DAY2 arrays, dictionaries, sets, and enums

// oddNumbers: [Int] = [1,3,5,7,9] // type annotations defination with arrays
let oddNumbers = [1,3,5,7,9] // defination of arrays. arrays of elements type must be same type. But we can change it with Any defination
oddNumbers[0]

/*
 Sets are collections of values just like arrays, except they have two differences:
 1- Items aren’t stored in any order; they are stored in what is effectively a random order.
 2- No item can appear twice in a set; all items must be unique.
*/
var colors = Set(["red","green","yellow", "yellow"]) // second yellow defination will be ignored because of all items must be unic rule

/*
 Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
 1- You can’t add or remove items from a tuple; they are fixed in size.
 2- You can’t change the type of items in a tuple; they always have the same types they were created with.
 3- You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
*/
 var name = (first: "Guven", last: "Karanfil") // tuples are kind objects in javascript
name.0 // accessing the value with index
name.last // accessing the value with name

// Arrays vs Sets // Tuples
// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])
// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// defination of dictionaries with type annotations is let heights: [ String : Double ]
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"] // accessing value with name
heights["Guven Karanfil", default: -1]


// creating empty collections with type annotations
var teams = [String: String]() // empty dictionary defination with String to String type annotations
var results = [Int] () // empty array defination with Integers
var words = Set<String>() // arrays and dictionaries have own defination.
// but they can also define like set's defination;
/*
 teams = Dictionary<String, String>()
 results = Array<Int>()
*/


enum Result {
    case success
    case failure
}
Result.success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
Activity.running(destination: "Sakarya")
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)

enum TimeInterval: Equatable {
    case seconds(Int)
    case milliseconds(Int)
    case microseconds(Int)
    case nanoseconds(Int)
}

if TimeInterval.seconds(1) == .seconds(2) {
    print("Matching!")
} else {
    print("Not matching!")
}


/*
 references;
 https://www.hackingwithswift.com/100/2
 https://www.avanderlee.com/swift/enumerations/
*/

