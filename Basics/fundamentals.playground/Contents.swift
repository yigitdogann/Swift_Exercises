import Cocoa

var greeting = "Hello, playground"

//variables must be written in camelCase
//let can't be changed.
//var can be changed
//cant multiply two different types

var userName = "yiĞit"
userName.append("kk")
userName.lowercased()
userName.uppercased()

//we can define variable with a type even if not initialized
//class names must start with uppercase
var newString : String

//in arrays, we collect same type of datas.
//but also different types can be collected,
//with "as [Any]" notation
var myMovies = ["chungking express", "killbill", "2046"]
var myMovies2 = ["chungking express", "killbill", 2046] as [Any]

myMovies[myMovies.count - 1]//last
myMovies.last//last
myMovies[0].uppercased()//this wont work in myMovies2 due to Any
//reason it works in first is it's a String array,
//and String class has uppercase() method.
myMovies.sort()


//SETS ARE UNORDERED COLLECTIONS unlike arrays
//we cant reach variables by index numbers.
//even if we create a set by sorted, it be changed by itself
//BIG DIFFERENCE: NO DUPLICATES ALLOWED
var myNumbers : Set = [1,2,3,4,5,1,2,4]
myNumbers.first

var myStringSet : Set = ["a", "b", "a", "c", "a"]

var myDataArray = [1,2,3,4,5,6,1,2,3,6,1,4,2,1,5] //15 items printed
var myDataSet = Set(myDataArray)//6 items printed

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]
var mySet3 : Set = mySet1.union(mySet2)


var movieYears = ["chungking express": 2004, "killbill": 2003, "2046": 2004]

//if ordered wanted: array
//if no duplicate wanted: set
//if key-value wanted: dictionaries

print("----WHILE----")

var number = 0
while number <= 10 {
    print(number)
    number += 1
}

var characterAlive = true
while characterAlive {
    //arguments here...
    characterAlive = false
}

print("----FOR----")

for datas in myDataArray {
    print(datas)
}

print("-/-/-/")

for myInt in 1...5 {
    print(myInt)
}

if number < 11 || number > 124{
    //arguments here
} else if number > 13 && number < 22{
    //more arguments...
} else {
    //arguments...
}

//FUNCTIONS

func myFunction(){
    //arguments here...
}

//"->Int" means that function will return integer
func adder(x: Int, y: Int) -> Int{
    let sum = x + y
    return sum
}
