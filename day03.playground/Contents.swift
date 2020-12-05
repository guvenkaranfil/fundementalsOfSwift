import UIKit

 // DAY3 - operators and conditions

var score1 = 50
score1 -= 15
var score2 = 72
var score3 = 90
var avarage = score1 + score2 + score3
var remaining = avarage % 3

if remaining == 2 {
    print("remainin number is equal to 2")
}

var firstName = "Guven"
var lastName = "Karanfil"
var firstAndLastName = firstName + " " + lastName
firstName += " is current working on basics fundamentals of Swift"


let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // allow us, execution to continue on to the next case
default:
    print("Enjoy your day!")
}

// For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
let score = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let passingGrade = 70...100
