import UIKit

var greeting = "Hello, playground"

/// Function
/// Function naming convention camcelCase
func sayHelloWorld(){
    print("Hello World")
}
sayHelloWorld()
/// Swift is a protocol oriented and functional programming

/// Generate stars pattern within function
func generateStars(){
    for i in 1...5{
        for j in 1...i{
            print("* ",terminator: "")
        }
        print()
    }
}
generateStars()

// In function there is no type inference
// As soon as we define a function with parameters, the parameters should be named and their types declared
func addTwoNum(n1:Int,n2:Int){
    
}

// Parameter Defalt Value
func divideTwoNum(n1:Int,n2:Int = 1){
    print(n1/n2)
}

divideTwoNum(n1: 10,n2: 10)


// Parameter Labelling
func addNum(of n1:Int,and n2:Int){
    print(n1+n2)
}
// of and and are labelling for developer understanding
addNum(of: 1, and: 2)

// without parameter labelling
//func subNum( _ n1:Int, _ n2:Int){
//
//}
// without parameter labelling is not refer


// Variadic Parameters
func addMultipleNum(Numbers nums:Int...){
    var result = 0
    for i in nums{
        result += i
    }
    print(result)
}

addMultipleNum(Numbers: 1,2,3,4,5,6,7,8,9,10)

// Function pass by reference
var n = 0
func byReference(changeof num1: inout Int){
    num1 = 10
}

print("Value before function byReference : \(n)")
byReference(changeof: &n)
print("Value after function byReference : \(n)")


var a = 10
var b = 100
func swapAB(num1:inout Int,num2:inout Int){
    let temp = num1
    num1 = num2
    num2 = temp
}
print("Value before function : a = \(a), b = \(b)")
swapAB(num1: &a, num2: &b)
print("Value after function : a = \(a), b = \(b)")


// Nested Function or Closure
// Function(s) inside in one function
func validateLogin(of userName:String, and password:String){
    
    func validateUserName(userName:String){
        if userName.isEmpty{
            print("User Name cannot be empty!")
        }
    }
    func validatePassword(password:String){
        if userName.isEmpty{
            print("Password cannot be empty!")
        }
    }
    
    validateUserName(userName: userName)
    validatePassword(password: password)
    
}

validateLogin(of: "", and: "")

// Testing Return Function
func concString(strOne:String, strTwo:String)-> String{
    return "Hello \(strOne)\(strTwo)"
}

print(concString(strOne: "Sithu", strTwo: "Win"))
