//
//  main.swift
//  swiftexerciseone
//
//  Created by Sithu Win on 28/01/2024.
//

print("Hello Welcome!")

print("Please enter your name: ",terminator: " ") //use terminator for getting next line

print("Hello \(readLine() ?? "sithu")") //only in macos not in ios


print("Please enter number 1: ",terminator: " ")

let numberOne = Int( readLine() ?? "0") ?? 0

print("Please enter number 2: ", terminator: " ")

let numberTwo = Int( readLine() ?? "0") ?? 0

print("Result of \(numberOne) + \(numberTwo) = \(numberOne+numberTwo)")

for i in 0...10 where i == 0{
    print(i)
}

for char in "Hello" where char == "H" {
    print(char)
}

//for i in 0...10{
//    for j in 0...20{
//        for k in 0...5{
//            print("\(i) \(j) \(k)")
//        }
//        
//    }
//}

//for loop
//for i in 0...7{
//    print("Start of \(i) Multiplication Table")
//    for j in 0...7{
//        print("\(i) x \(j) = \(i*j)")
//    }
//    print("End of  \(i) Multiplication Table")
//    print()
//}

//for loop exercise
print("Please enter a range:",terminator: " ")

let range:Int = Int(readLine() ?? "0") ?? 2

var sum:Int = 0
for row in 1...range{
    for column in 1...range{
        sum += row*column;
    }
    print("Total value of \(row) = \(sum)")
    sum = 0
}

print("How many loops do you want to output:",terminator: " ")
let throughVal:Int = Int( readLine() ?? "0") ?? 0

for i in stride(from: 1, through: throughVal, by: 1){
    print(i)
}

print("Please enter factorial number: ", terminator: " ")

let factNum:Int = Int ( readLine() ?? "2") ?? 2
var sum1:Int = 1
for i in stride(from: 1, through: factNum, by: 1){
    sum1 *= i
}

print("Factorial for \(factNum) is : \(sum1)")
