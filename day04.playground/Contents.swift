import UIKit

// DAY4 - loops, loops, and more loops

let count = 1...10 // '..' not equals. '...' equals
for number in count {
    print("number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("Album is \(album)")
}

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names { // immutable value name was never used. Think to use _
    print("[CENSORED] is a secret agent!")
}

for count in 10..<13 {
    print("I'm counting to \(count)")
}

// While loop
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false

let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()

while random == numbers {
    random = numbers.shuffled()
}
print(random)

