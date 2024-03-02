import UIKit
import Foundation

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

//for i in 1...5{
//    for j in 1...i{
//        print("* ",terminator: "")
//
//    }
//    print()
//}
//
//for i in stride(from: 5, through: 1, by: -1){
////    for j in stride(from: i, through: 1, by: -1){
////        print("* ",terminator: "")
////    }
//    for j in 1...i{
//        print("* ",terminator: "")
//    }
//    print()
//}

let testStr = "rotator"
var reversedStr = ""

for ch in testStr{
    reversedStr = "\(ch)" + reversedStr
}

print(reversedStr)
if(testStr == reversedStr){
    "\(testStr) is palindrone"
}


func sayHelloWorld(){
    print("hello")
    print("world")
}

func generateStar(){
    for i in 1...5{
        for j in 1...i{
            print("* ",terminator: " ")
        }
        print()
    }
    
}

sayHelloWorld()
generateStar()

print("Hello World")
print("Hello")

func add(of n1:Int, and n2:Int){
    print(n1+n2)
}

func substract(of n1:Int, and n2:Int){
    print(n1-n2)
}
func multiply(of n1:Int, and n2:Int){
    print(n1*n2)
}
func divided(of n1:Int, and n2:Int = 5){
    print(n1/n2)
}

add(of: 1, and: 2)
substract(of: 10, and: 9)
multiply(of: 255, and: 255)
divided(of: 10)

func variadicParamTest(nums: Int...){
    var result = 0
    for num in nums{
        if result == 0 {
            result = num
        }
        else{
            result *= num;
        }
        
    }
    print(result)
}

variadicParamTest(nums: 1,2,3,4,5,6,7,8,9,10)

//Pass by reference function
var a = 10
var b = 20
func swapValue(swapOne: inout Int, swapTwo: inout Int){
    let tmp = swapOne
    swapOne = swapTwo
    swapTwo = tmp
}

swapValue(swapOne: &a, swapTwo: &b)
print("\(a) \(b)")

func validateUser(of userName: String, and password: String) {
    
    //clousure -> lambda
    func validateUserName(userName: String) {
        
        if userName.isEmpty {
            
            print("User name must not be empty")
            
        }
        
    }
    
    func validatePassword(password: String) {
        
        if password.isEmpty {
            
            print("Password must not be emoty")
            
        }
        
    }
    
    validateUserName(userName: userName)
    
    validatePassword(password: password)
}

validateUser(of: "", and: "pass123")

func returnFunc(output: String)-> String{
    return output
}

func returnNum(n1:Int,n2:Int) -> Int{
    n1+n2
}

print(returnFunc(output: "Hello"))

//higher order function or functional programming
func mathOperation(n1: Int, n2:Int, mathFunc:(Int ,Int)-> Int) -> Int{
    mathFunc(n1,n2)
}

let addFuncVar = returnNum

let resultOne = mathOperation(n1: 1, n2: 2, mathFunc: addFuncVar)
print(resultOne)


mathOperation(n1: 1, n2: 1) { $0 + $1}
let resultTwo:Int = mathOperation(n1: 5, n2: 10) { n1, n2 in
    n1-n2
}

print(resultTwo)

2.isEven()

extension Int{
    func isEven() -> Bool{
        self % 2 == 0
    }
}

extension Int{
    func factorial() -> Int{
        var result:Int = 0
        for i in 1...self{
            if(result == 0){
                result = i
            }else{
                result *= i
            }
        }
        return result
    }
}

print(10.factorial())
print(1.factorial())

//stored properties
extension Double{
    static var pi2:Double{
        return 3.142
    }
}

print(Double.pi2)

extension Int{
    
    func isLeapYear() -> Bool{
        (self % 4 == 0 && self % 100 != 0 ) || self % 400 == 0
    }
}

print(2000.isLeapYear())

func isDivisible(number:Int,divisor:Int) -> Bool {
     number % divisor == 0
}

print(isDivisible(number: 1, divisor: 1))

func isPrime(number:Int) -> Bool{
    if number <= 1 {
        return false
    }
    
    if number <= 3{
        return true
    }
    
    var i = 2
    
    while i * i <= number{
        if number % i == 0{
            return false
        }
        i += 1
    }
    return true
}

extension Int{
    var isPrime:Bool{
        if self <= 1 {
            return false
        }
        
        if self <= 3{
            return true
        }
        
        var i = 2
        
        while i * i <= self{
            if self % i == 0{
                return false
            }
            i += 1
        }
        return true
    }
}

print(isPrime(number: 3))
print(4.isPrime)

// Collection: ARRAY

var intArr:[Int] = []
var intArr2 = [Int]()
var intArr3 = [1,2,3,4,5]

//access
print(intArr3[0])

intArr3.shuffle()
print(intArr3)

for x in intArr3.enumerated(){
    print(x)
}

for i in 1...10{
    intArr2.append(Int.random(in: 1...10))
}

print(intArr2)

//
extension Array where Element == Int{
    
    var isPrime:[Int]{
        var temp:[Int] = []
        for i in self{
            if i.isPrime{
                temp.append(self[i])
            }
        }
        return temp
    }
}

print(intArr2.isPrime)


let numbers:Set = [1,2,4,5,6]
print(numbers)

let setA:Set = [1,2,3]
let setB:Set = [4,5,6]
print(setA.union(setB))

var citiDict:[String:String] = ["England":"London","France":"Paris"]
print(citiDict)

for key in citiDict.keys{
    print(key)
}

// Dictionary is not Updating the Value, overwrite the Value
citiDict["Myanmar"] = "Yangon"
print(citiDict)
citiDict["Myanmar"] = "NPT"
print(citiDict)

for (key,value) in citiDict{
    print("\(key) \(value)")
}

// TUPLE memory performance thet thr
let product = ("Product A",123)
print(product.0)
print(product.1)

func findMedian(arrOne:[Int]) -> Double?{
    let arrCount = arrOne.count
    var medianValues = [Int]()
    var median = 0
    
    if arrCount % 2 == 0 {
        medianValues.append(Int(arrCount/2))
        medianValues.append(Int(arrCount/2) + 1)
        
    }else{
        medianValues.append(Int(arrCount/2)+1)
    }
    
    for val in medianValues{
        median += val
    }
    
    return Double(median)/Double(2)
}

let resultArr = findMedian(arrOne: [])
print(resultArr)

//extension Array where Element == Int{
//    var median:[Int]{
//        self.con
//    }
//        
//}
