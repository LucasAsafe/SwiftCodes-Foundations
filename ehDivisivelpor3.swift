//
//  main.swift
//  ndExercise
//
//  Created by Lucas Asafe Virginio do Nascimento on 21/03/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import Foundation


func toInt(s: String?) -> Int {
    var result = 0
    if let str: String = s{
        if let valorInt = Int(str){
            result = valorInt
        }
    }
    return result
}

func ehDisivelporTres(_ s:Int) -> Bool
{
    var soma = 0
    var intToString = String(s)
    print("String S  = \(String(s))")
    var arrayNumbers = [Int]()
    for a in intToString{
        arrayNumbers.append(toInt(s: String(a)))
    }
    for number in arrayNumbers{
        soma += number
    }
    if(soma%3==0)
    {
        return true
    }
    else{
        return false
    }
    
}

func main(){
    print("Digite um número")
    var n = readLine()
    
    //if let string = n,
    //    let number = Int(string){
    //    num = number
    //}
    if toInt(s: n) >= 100 && toInt(s: n) <= 999{
        print(ehDisivelporTres(toInt(s: n)))
    }
    else{
        print("Digite um número maior que 100 e menor que 999")
        main()
    }
}


//main()
