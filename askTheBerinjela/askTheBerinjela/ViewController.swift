//
//  ViewController.swift
//  askTheBerinjela
//
//  Created by Lucas Asafe Virginio do Nascimento on 01/04/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func randomBetween(min: Int, max: Int) -> Int {
        var result = 0
        for _ in 0...1{
            result = Int.random(in:min..<max+1)
        }
        return result
    }
    
    func  toString(s:String?) -> String {
        if let sString:String = s{
            return sString
        }
        else{
            return "Not a valid String, type something valid"
        }
    }
    @IBOutlet weak var txtField1: UITextField!
    @IBOutlet weak var txtField2: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var btnAsk: UIButton!
    @IBOutlet weak var labelDunno: UILabel!
    @IBAction func askBtn(_ sender: Any) {
        labelDunno.lineBreakMode = NSLineBreakMode.byWordWrapping
        labelDunno.numberOfLines = 0
        labelDunno.text = "Dunno if it is Beringela or berinjela    "
        btnAsk.setTitle("Asking", for: .normal)
        let comp1 = toString(s: txtField1.text)
        let comp2 = toString(s: txtField2.text)
        
        let randomlyGen = randomBetween(min: 1, max: 2)
         
        if randomlyGen == 1{
            
            labelResult.text = "The result is: \(comp1)"
            btnAsk.setTitle("Ask Again", for: .normal)
            
        }
        else{
            labelResult.text = "The result is: \(comp2)"
            btnAsk.setTitle("Ask Again", for: .normal)
        }
        
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

