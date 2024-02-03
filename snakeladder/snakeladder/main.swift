//
//  main.swift
//  snakeladder
//
//  Created by Sithu Win on 03/02/2024.
//

import Foundation

//
var playerPosition:Int = 1;

//1...6 range between 1-6
let diceRoll = Int.random(in: 1...6);

playerPosition = playerPosition + diceRoll;
//playerPosition += diceRoll;

//if(playerPosition == 3){
//    playerPosition = 15;
//}else if playerPosition == 7 {
//    playerPosition = 12
//}else if playerPosition == 11{
//    playerPosition = 2
//}else if playerPosition == 17{
//    playerPosition = 9
//}
print("Current \(playerPosition)")
switch playerPosition{
case 3:
    playerPosition = 15;

case 7:
    playerPosition = 12

case 11:
    playerPosition = 2
    
case 17:
    playerPosition = 9

default:
    print(playerPosition)
}

print(playerPosition)

print("Please Enter a month with string:", terminator: " ")
let month:String = readLine() ?? "January"

print("Please Enter a year:",terminator: " ")
let year:Int = Int( readLine() ?? "0") ?? 0

switch month.lowercased(){
case "september","april","june","november":
    print("There are 31 days in \(month.capitalized)")
    
case "february":
    if (year%4 == 0) || (year%100 != 0) {
        print("There are 29 days in \(month.capitalized)")
    }else if(year%400 == 0){
        print("There are 29 days in \(month.capitalized)")
    }else{
        print("There are 28 days in \(month.capitalized)")
    }
    
default:
    print("There are 31 days in \(month.capitalized)")
}

