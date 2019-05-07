//
//  ConversionCalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Lauren on 2019-04-11.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class ConversionCalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct conversion{
        var  label: String
        var inputUnit: String
        var outputUnit: String
    }
    
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
            self.outputDisplay.text = self.converters[0].outputUnit
            self.inputDisplay.text = self.converters[0].inputUnit
        }
        ))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplay.text = self.converters[1].outputUnit
            self.inputDisplay.text = self.converters[1].inputUnit
        }
        ))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplay.text = self.converters[2].outputUnit
            self.inputDisplay.text = self.converters[2].inputUnit
        }
        ))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertAction.Style.default, handler:{ (UIAlertAction)-> Void in
            self.outputDisplay.text = self.converters[3].outputUnit
            self.inputDisplay.text = self.converters[3].inputUnit
        }
        ))
        
        self.present(alert, animated: true, completion: nil)
    }
    

    

}
