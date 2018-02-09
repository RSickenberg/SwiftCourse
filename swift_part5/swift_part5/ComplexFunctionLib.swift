//
//  ComplexFunctionLib.swift
//  swift_part5
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

class CompleteFunctionLib: NSObject, ComplexeLibraryDefProtocol {
    
    func printComplex(_ complexNumberToPrint: ComplexeNumber) {
        
        print("Advanced complex number printing from library")
        print("------------------------------------")
        
        let complexStringToSpell = String(format:"Printing from the libreary function, the real part is %.1f and the imaginary part is %.1f", complexNumberToPrint.realPart, complexNumberToPrint.imaginaryPart)
        
        let path: String = "/usr/bin/say"
        
        let args: [String] = [complexStringToSpell]
        
        Process.launchedProcess(launchPath: path, arguments: args).waitUntilExit()
    }
}
