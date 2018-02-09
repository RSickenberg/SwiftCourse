//
//  ComplexeNumber.swift
//  swift_part3
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

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
    
    override init() {
        
        self.realPart = 0
        self.imaginaryPart = 0
        super.init()
    }
    
    init(realPart: Float, imaginaryPart: Float) {
        
        self.realPart = realPart
        self.imaginaryPart = imaginaryPart
        
        super.init()
        print("Object ok.")
    }
    
    convenience init(realPart: Float) {
        self.init(realPart: realPart, imaginaryPart: 0)
        
        print("Object ok")
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
}
