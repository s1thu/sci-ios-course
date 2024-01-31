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
