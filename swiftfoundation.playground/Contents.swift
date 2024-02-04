import UIKit

var greeting = "Hello, playground"

var numberOne = 10
var numberTwo = 10

var result = numberOne + numberTwo
print(result)

result = numberOne - numberTwo
print(result)

result = numberOne * numberTwo
print(result)

result = numberOne / numberTwo
print(result)

var numberThree:Int = 10 //declaring type explicitly
var numberFour = "Hello"

typealias ageType = Int
var age:ageType = 12

var egFloat:Float = 12
var egDouble:Double = 12

print(type(of: age))

var intOne:Int8 = 127
var intTwo:Int16 = 32767
var intThree:Int32 = 214719
var intFour:Int64 = 1323131312312312312

var strOne = "Sithu"
var strTwo = "Win"

print(strOne.append(strTwo))
var strTotal = strOne + strTwo

print(strTotal)

print("Hello \(strTwo)")

var messageOne:String = "JOHN DOE"

print("Hello \(messageOne.reversed())")

//multi line string
messageOne = """
Hello

World
"""




print(messageOne)

let halfOpenRange = 0..<5

for i in 1...5{
    for j in 1...i{
        print("* ",terminator: "")
    }
    print()
}

for i in stride(from: 5, through: 1, by: -1){
//    for j in stride(from: i, through: 1, by: -1){
//        print("* ",terminator: "")
//    }
    for j in 1...i{
        print("* ",terminator: "")
    }
    print()
}

let testStr = "rotator"
var reversedStr = ""

for ch in testStr{
    reversedStr = "\(ch)" + reversedStr
}

print(reversedStr)
if(testStr == reversedStr){
    "\(testStr) is palindrone"
}
