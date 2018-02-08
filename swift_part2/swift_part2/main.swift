//
//  main.swift
//  swift_part2
//
//  Created by Romain Sickenberg on 08.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

// MARK: Init
var fahrenheitDegree: Int = 0
var celciusDegree: Int = 0

let lowerBound: Int = -20
let upperBound: Int = 60
let stepUnit: Int = 5


// MARK: - Execution
// Fahrenheit to celsius : F=C*9/5 +32
// Celcius to Fahrenheit : C=(F-32)*5/9

func convertFromFToC(fahrenheit: Int) -> Int {
    
    celciusDegree = (fahrenheit-32*5)/9
    
    return celciusDegree
}

func ConvertFromCToF(celcius: Int) -> Int {
    
    fahrenheitDegree = (9*celcius/5)+32
    
    return fahrenheitDegree
}

func celciusToFromFahrenheitConvert(_ converterFunction: ((Int) -> Int), functionSignature signature: String, withBounds bounds:(theLowerBound: Int, theUpperBound: Int), andIncrement stepUnit: Int ) {
    
    var message = String()
    
    switch signature {
    case "CtoF":
        message = "%d degree celcius = %d degree Fahrenheit\t\n"
    case "FtoC":
        message = "%d degree Fahrenheit = %d degree Celcius\t\n"
    default:
        break
    }
    
    for temperature in stride(from: bounds.theLowerBound, to: bounds.theUpperBound, by: stepUnit){
        print(String(format: message, temperature, converterFunction(temperature)))
    }
}

print(convertFromFToC(fahrenheit: 90))
print(ConvertFromCToF(celcius: 30))


