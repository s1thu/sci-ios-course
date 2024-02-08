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


