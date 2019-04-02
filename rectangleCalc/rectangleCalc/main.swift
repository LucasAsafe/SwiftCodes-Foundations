//
//  main.swift
//  rectangleCalc
//
//  Created by Lucas Asafe Virginio do Nascimento on 28/03/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import Foundation

struct Rectangulo {
    var base: Double
    var height: Double
    
    func area() -> Double {
        let rectArea = base*height
        return rectArea
    }
    
    func igual(a:Rectangulo) -> Bool {
        if self.base == a.base && self.height == a.height{
            return true
        }
        else{
            return false
        }
    }
}

var userRec = Rectangulo(base: 2.0, height: 2)
print(userRec.area())
print(userRec.igual(a: Rectangulo(base: 0.2, height: 1)))
print(userRec.igual(a: Rectangulo(base: 2, height: 2)))


//################################################################################
struct Ponto {
    var x:Double
    var y:Double
}

struct  retQuestao {
    var base:Double
    var ladob:Double
    var centro:Ponto
    
    func area() -> Double {
        let retQuestarea = base*ladob
        return retQuestarea
    }
    
    func ehIgual(a:retQuestao) -> Bool {
        if self.base == a.base && self.ladob == a.ladob && self.centro.x == a.centro.x && self.centro.y == a.centro.y && self.area() == a.area() {
            print("são iguais")
            return true
        }
        else{
            print("não são iguais")
            return true
        }
    }
}


