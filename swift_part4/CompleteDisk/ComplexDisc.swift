//
//  ComplexDisc.swift
//  swift_part4
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

class ComplexeDisk: ComplexeNumber {
    
    override var description: String {
        get {
            print("Description of the parent: ", super.description)
            
            let newDescription : String = String(format:
                "Real part is: %f, Imaginary part is : %f, radius is :%f, area is : %f", realPart, imaginaryPart, radius, area)
            
            return newDescription
        }
    }
    
    var area: Float
    var radius: Float {
        
        didSet {
            area = calculateArea(radius)
        }
        
    }
        
    func calculateArea(_ radius: Float) -> Float {
        return radius * radius * 3.1415
    }
    
    init(realPart: Float, imaginaryPart: Float, radius: Float) {
        self.radius = radius
        self.area = 0
        
        super.init(realPart: realPart, imaginaryPart: imaginaryPart)
        
        self.area = calculateArea(radius)
    }
    
    convenience override init() {
        self.init(realPart: 0, imaginaryPart: 0, radius: 0.0)
    }
    
    convenience init(radius: Float) {
        self.init(realPart: 0, imaginaryPart: 0, radius: radius)
        
        self.area = calculateArea(radius)
    }
    
    override func clear() {
        self.radius = 0
        super.clear()
    }
}
