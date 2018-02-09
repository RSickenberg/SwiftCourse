//
//  ComplexeNumber.swift
//  swift_part3
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

protocol ComplexeLibraryDefProtocol {
    func printComplex(_ complexNumberToPrint: ComplexeNumber)
    // optional func anotherPrintComplex(complexNumberToPrint)
}

class ComplexeNumber: NSObject {
    
    // MARK: Description
    
    override var description: String {
        
        get {
            let newDescription : String = String(format: "Real Part is %f, Imaginary part is %f", realPart, imaginaryPart)
            return newDescription
        }
    }
    
    // MARK: - INIT
    
    var realPart: Float
    var imaginaryPart: Float
    var delegate: ComplexeLibraryDefProtocol?
    
    override init() {
        self.realPart = 0
        self.imaginaryPart = 0
        
        super.init()
    }
    
    convenience init(realPart: Float, imaginaryPart: Float) {
        self.init()
        
        self.realPart = realPart
        self.imaginaryPart = imaginaryPart
        
        print("Object ok.")
    }
    
    convenience init(realPart: Float) {
        self.init(realPart: realPart, imaginaryPart: 0)
        
        print("Object ok.")
    }
    
    // MARK: - OPERATIONS
    
    func clear() {
        self.realPart = 0.0
        self.imaginaryPart = 0.0
    }
    
    func add(_ complexeNumber: ComplexeNumber) -> ComplexeNumber {
        
        // Initialized with Optionals:
        self.realPart = self.realPart + complexeNumber.realPart
        self.imaginaryPart = self.imaginaryPart + complexeNumber.realPart
        
        return self
    }
    
//    func printComplex() {
////        if self.delegate != nil {
////            self.delegate!.printComplex(self)
////        } else {
//            print(String(format: "The complex number is: ((%.1f + %.1f))", self.realPart, self.imaginaryPart))
////        }
//    }
    func printComplex(_ completeNumberToPrint: ComplexeNumber) {
        if self.delegate != nil {
            self.delegate!.printComplex(self)
        } else {
            standardPrintComplex()
        }
    }
    
    func standardPrintComplex() {
        print(String(format: "The complex number is: ((%.1f + %.1f))", self.realPart, self.imaginaryPart))
    }
    
}
