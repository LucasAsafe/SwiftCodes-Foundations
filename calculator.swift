
//  main.swift
//  ndExercise
//
//  Created by Lucas Asafe Virginio do Nascimento on 21/03/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.


import Foundation

func whatOperator() -> String{
    print("Digite a operação desejada" + "\nDisponíveis: +, -, *, /")
    var string = readLine()

    if let s:String = string {
        if s == "+"{
            return "sum"
        }
        else if s == "-"{
            return "sub"
        }
        else if s == "*"{
            return "mult"
        }
        else if s == "/"{
            return "div"
        }
        else{
            return "notOperator"
        }
    }
    else{
        return "notOperator"
    }

}

func convertToInt() -> Int{
    print("Digite um número:")
    var s = readLine()
    if let sString:String = s, let sInt:Int = Int(sString){
        return sInt
    }
    else{
        return convertToInt()
    }
}

var userOperator = whatOperator()
while userOperator == "notOperator"{
    userOperator = whatOperator()
}

var num1 = convertToInt()
var num2 = convertToInt()

print("O resultado da sua operação é:")
if userOperator == "sum"{
    print(num1+num2)
}else if userOperator == "sub"{
    print(num1 - num2)
}else if userOperator == "mult"{
    print(num1 * num2)
}
else if userOperator == "div"{
    print(num1/num2)
}
else{
    print("Ocorreu algum erro")
}


