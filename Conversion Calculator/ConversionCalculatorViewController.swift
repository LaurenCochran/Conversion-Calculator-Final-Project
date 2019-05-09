//
//  ConversionCalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Lauren on 2019-04-11.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class ConversionCalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var inputDisplayUnit: UITextView!
    @IBOutlet weak var outputDisplayUnit: UITextView!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct conversion{
        var  label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    var stringToDouble: Double = 0.0
    var currentConvert: Int = -1
    var conversionNumber: String = ""
    let converters = [conversion(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      conversion(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      conversion(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      conversion(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialConverter = converters[0]
        
        
        outputDisplay.text = initialConverter.outputUnit
        inputDisplay.text = initialConverter.inputUnit
    }
    
    @IBAction func convert(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplayUnit.text = self.converters[0].outputUnit
            self.inputDisplayUnit.text = self.converters[0].inputUnit
            self.currentConvert = 0
        
        }
        ))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplayUnit.text = self.converters[1].outputUnit
            self.inputDisplayUnit.text = self.converters[1].inputUnit
            self.currentConvert = 1
        }
        ))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplayUnit.text = self.converters[2].outputUnit
            self.inputDisplayUnit.text = self.converters[2].inputUnit
            self.currentConvert = 2
        }
        ))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplayUnit.text = self.converters[3].outputUnit
            self.inputDisplayUnit.text = self.converters[3].inputUnit
            self.currentConvert = 3
        }
        ))
        
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func numberInput(_ sender: UIButton) {
        self.inputDisplay.text = self.inputDisplay.text! + String(sender.tag-1)
        self.outputDisplay.text = "Hello"
        stringToDouble = Double(self.inputDisplay.text!)!
    }
    
    
    @IBAction func clearInput(_ sender: UIButton) {
  

    }
    
    @IBAction func changeState(_ sender: UIButton) {
        var currentInput: Double
        currentInput = Double(self.inputDisplay.text!)!
        
            currentInput = -currentInput
            self.inputDisplay.text = "- \(currentInput))"
        
    }
}
