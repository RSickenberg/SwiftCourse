//
//  main.swift
//  swift_part5
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

var complexOne = ComplexeNumber(realPart: 12.42, imaginaryPart: 12.34)

complexOne.delegate = nil
complexOne.printComplex()

complexOne.delegate = CompleteFunctionLib()
complexOne.printComplex()
