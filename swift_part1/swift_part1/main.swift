//
//  main.swift
//  swift_part1
//
//  Created by Romain Sickenberg on 08.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

// MARK: Init
// Conversion Formula

// Fahrenheit to celsius : F=C*9/5 +32
// Celcius to Fahrenheit : C=(F-32)*5/9

var fahrenheitDegree: Int = 0
var celciusDegree: Int = 0

let lowerBound: Int = -20
let upperBound: Int = 60
let stepUnit: Int = 5

celciusDegree = lowerBound

// MARK: Function

func printMsg(_ msg: String) {
    print(msg.self)
}

// MARK: - Execution
printMsg("Salut")


// MARK: Loop
while celciusDegree <= upperBound {
    
    fahrenheitDegree = (9*celciusDegree/5)+32
    
    printMsg(String(format: "%d degree Celsius = %d degree Fahrenheit.\t\n",
                    celciusDegree, fahrenheitDegree))
    
    //printMsg("\(celciusDegree) degree celcius = \(fahrenheitDegree) degree Fahrenheit\t\n")
    
    //print(celciusDegree, " degree celcius = ", fahrenheitDegree, " degree Fahrenheit\t\n")
    
    celciusDegree += stepUnit
}
