import UIKit

/*  DAY1: variables, simple data types, and string interpolation  */

// Swift is a type-safe language that means every variable must be of one specific type

var str = "Hello, playground"  // variable defination
str = "Hello World" // to change str value

var year = 2020 // defination of Int(-eger) variable
var population = 80_000_000 // same as 80000000. It's for make reading easier

var multiLineStrings = """
This is first line
This is second line \
and this is third line
"""

var pi = 3.141 // defination of Double variables
var isLoggedIn = false // defination of Bool(-ean)

let username = "guven_karanfil" // let creates constants variables which are values that can be set once and never again
var welcomeMessage = "Welcome \(username)!" // string interpolation

// Type Annotations
/*
 we can define above variables with type defination
 var str: String = "Hello, playground"
 var year: Int = 2020
 var isLoggedIn: Bool = true
 var pi: Double = 3.131
*/
