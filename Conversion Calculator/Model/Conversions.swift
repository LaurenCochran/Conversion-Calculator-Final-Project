//
//  Conversions.swift
//  Conversion Calculator
//
//  Created by Lauren on 2019-05-06.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import Foundation


class ConversionCalculations{
    
    func cToF(celsius: Double)-> Double{
        return ((celsius * (9/5)) + 32)
    }
    
    func mtoKm(mile: Double) -> Double{
        return mile * 1.60934
    }
    
    func kmToM(kilometer: Double)-> Double{
        return kilometer * 0.62137
    }
    
    func fToC(farenheit: Double)-> Double{
        return(farenheit - 32) * (5/9)
    }
    
    
    
}
    

