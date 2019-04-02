//
//  main.swift
//  mergeSort
//
//  Created by Lucas Asafe Virginio do Nascimento on 02/04/19.
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
    
    let uInput = readLine()
    
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

var arrayMerge = [Int]()

while readLine()! != "-1"
{
    arrayMerge.append(toInt(userInput()))
}

print(arrayMerge)
