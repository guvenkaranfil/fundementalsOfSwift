import UIKit

// DAY7 Closures part2

// closures as paramater when they accept paramater
func numOfTaskToFinish(action: (Int) -> Void){
    print("starts numOfTaskToFinish func.")
    action(12)
    print("end of numOfTaskToFinish func."   )
}
numOfTaskToFinish { (taskNum: Int) in
    print ("\(taskNum). task is finised")
}


// colsures as paramater when they return value
func travel(action: (String) -> String){
    print("travel is starting from Turkey")
    let destinationText = action("Italy")
    print(destinationText)
    print("and travel ends here...");
}

travel{ (destination: String) -> String in
    return "Our destination is to \(destination)"
}

// short hand usage 1 ( with no type-writing )
travel{ destination in
    return "Our destination is to \(destination)"
}

// short hand usage 2 ( with no return  )
travel{ destination in
    "Our destination is to \(destination)"
}

// short hand usage 2 ( with no paramater defination )
travel{
    "Our destination is to \($0)"
}


// colsures as paramater when they return value
func travelWithTimeSpecific(action: (String, Int) -> String){
    print("travel is starting from Turkey")
    let destinationText = action("Italy",12)
    print(destinationText)
    print("and travel ends here...");
}
travelWithTimeSpecific {
    "Our goal is to reach \($0) within \($1) hours."
}

// returning closures from functions
func sayHi() -> (String) -> Void {
    var counter = 1  // capturing values
    return {
        print("Hi \($0)")
        print("func worked \(counter) times")
        counter += 1
    }
}

let salute = sayHi()
salute("Guven")
salute("Kerem")
salute("Mesut")



/*
https://www.hackingwithswift.com/sixty/6/7/using-closures-as-parameters-when-they-return-values
*/
