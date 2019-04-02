//
//  ViewController.swift
//  calculator
//
//  Created by Lucas Asafe Virginio do Nascimento on 25/03/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var actualNumber:Double = 0
    var previousNumber:Double = 0
    var mathing:Bool = false
    var operation: Int = 0
    
    @IBOutlet weak var labeloutput: UILabel!
    
    @IBAction func numbersCalc(_ sender: UIButton)
    {
        if mathing == true{
            labeloutput.text = String(sender.tag-1)
            if let actualString:String = labeloutput.text, let actualNumber:Double = Double(actualString){
                
            }
            mathing = false
        }
        else{
            labeloutput.text = labeloutput.text! + String(sender.tag-1)
            
            
            if let actualString:String = labeloutput.text, let actualNumber:Double = Double(actualString){
                
            }
        }
    }
    @IBAction func operatorBtns(_ sender: UIButton) {
        if labeloutput.text == "" && sender.tag != 11 && sender.tag != 16{
            if sender.tag == 12{
                labeloutput.text = "/"
            }
            else if sender.tag == 13{
                labeloutput.text = "x"
            }
            else if sender.tag == 14{
                labeloutput.text = "+"
            }
            else if sender.tag == 15{
                labeloutput.text = "-"
            }
            operation = sender.tag
            mathing=true
        }
        else if sender.tag == 16{
            if operation == 12{
                labeloutput.text = String(actualNumber/previousNumber)
            }
            else if operation == 13{
                labeloutput.text = String(actualNumber*previousNumber)
            }
            else if operation == 14{
                labeloutput.text = String(actualNumber+previousNumber)
            }
            else if operation == 15{
                labeloutput.text = String(actualNumber-previousNumber)
            }
        }
        else if sender.tag == 11{
            previousNumber = 0
            actualNumber = 0
            mathing = false
            operation = 0
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labeloutput.text = ""
    }
}
