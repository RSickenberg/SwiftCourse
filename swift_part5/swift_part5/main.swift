//
//  main.swift
//  swift_part5
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

var complexOne = ComplexeNumber()

complexOne.delegate = nil
complexOne.printComplex()

complexOne.delegate = CompleteFunctionLib()
complexOne.printComplex()
