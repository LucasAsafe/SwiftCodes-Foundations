//
//  main.swift
//  bubbleSort
//
//  Created by Lucas Asafe Virginio do Nascimento on 01/04/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import Foundation

var count = 0

func userInput() -> String{
    if count == 0{
        print("Enter something valid, pls. Don't try to f### my program")
    }
    else if count == 8{
        print("fuck dude, stop typing just a little")
    }
    else{
        print("Enter anything else")
    }
    
    var uInput = readLine()
    
    if let uInputString:String = uInput{
        return uInputString
    }
    else{
        return userInput()
    }
}

func toInt(_ s:String) -> Int {
    if let sInt:Int = Int(s){
        return sInt
    }
    else{
        print("Enter a number, pls")
        return toInt(userInput())
    }
}

var arrayBubble=[Int]()

while toInt(userInput()) != -1{
    count += 1
    arrayBubble.append(toInt(userInput()))
}
var countFor = 0
for i in 0..<arrayBubble.count{
    for j in 1..<arrayBubble.count-1{
        if arrayBubble[j] > arrayBubble[j-1]
        {
            let aux = arrayBubble[j]
            arrayBubble[j] = arrayBubble[j-1]
            arrayBubble[j-1] = aux
        }
    }
}

print(arrayBubble)
