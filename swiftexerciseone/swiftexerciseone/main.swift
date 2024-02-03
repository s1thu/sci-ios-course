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

for i in 0...7{
    print("Start of \(i) Multiplication Table")
    for j in 0...7{
        print("\(i) x \(j) = \(i*j)")
    }
    print("End of  \(i) Multiplication Table")
    print()
}
