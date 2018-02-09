//
//  main.swift
//  swift_part3
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

var complexOne: ComplexeNumber = ComplexeNumber.init()
var complexTwo = ComplexeNumber()
var result = ComplexeNumber()

var resultInitSpecific = ComplexeNumber.init(realPart: 6.0, imaginaryPart: 5.0)

result.imaginaryPart = 0.0
result.realPart = 0.0

complexOne.realPart = 25.0
complexOne.imaginaryPart = 50.0

complexTwo.realPart = 50.0
complexTwo.imaginaryPart = 100.0

print(String(format: "The realPart of complexOne is %f"), complexOne.realPart!)
print(String(format: "The imaginaryPart of complexOne is %f"), complexOne.imaginaryPart!)

//result.add(complexOne).add(complexTwo)
print("The result is:", result)

result.clear()
print("After initialization, result is", result)
print("**************************************")
print(result.description)
