//
//  main.swift
//  swift-assignment-one
//
//  Created by Sithu Win on 06/02/2024.
//

import Foundation


for i in 1...100{
    
    if(i%3 == 0 && i%5 == 0){
        print("Fizz Buzz")
        continue
    }else if(i%5 == 0){
        print("Buzz")
        continue
    }else if(i%3 == 0) {
        print("Fizz")
        continue
    }else{
        print("\(i)")
        continue
    }
    
}

for i in 1...10{
    var ivalue = i
    for j in 1...10{
        if(i == 1 || i == 10){
            print("* ",terminator: "")
        }else
        {
            if(j == 1 || j == 10){
                print("* ",terminator: "")
            }else{
                print(" ",terminator: " ")
            }
                
        }
    }
    print()
}


