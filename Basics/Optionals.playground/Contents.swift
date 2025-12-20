import Cocoa

var greeting = "Hello, playground"

//optionals have to be fully understanded,
//an important section while learning swift.

//myName is defined but not initialized yet,
//or maybe we can get the value via input,
//then we may not know if it truly initialized
//as String or its own type.
//So we say the compiler that myName will be String
//but if not, there's no problem.
var myName : String?

myName?.uppercased()
//if myName assigned as its type, then it will work.
//otherwise it won't throw an error.

//------myName!.uppercased()------
//I strictly know that myName is assigned.


var myAge = "5"

var myInteger = Int(myAge)! * 5
//if I use !, then it means i absolutely know that myAge is convertible.

myInteger = (Int(myAge) ?? 0) * 5
//if ?? is used, then I have to give a default value for errors.

//or I can use this kind of control mechanism:
if let myNumber = Int(myAge) {
    //if myAge is truly an integer
    //args...
} else {
    //if not an integer
    //print("wrong input") maybe
}
