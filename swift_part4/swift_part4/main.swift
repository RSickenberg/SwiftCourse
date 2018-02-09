//
//  main.swift
//  swift_part4
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

var complexArea = ComplexeDisk(realPart:10.0, imaginaryPart: 20.0, radius:2.3)

print(String(format: "MyArea real part %15.2f"), complexArea.realPart)
print(String(format: "MyArea imaginaryPart %15.2f", complexArea.imaginaryPart))
print(String(format: "MyArea radius %15.2f", complexArea.radius))
print(String(format: "MyArea area %15.2f", complexArea.area))
complexArea.radius = 4
print(String(format: "MyArea new %15.2f", complexArea.area))
print(String(format: "MyArea %@", complexArea))
