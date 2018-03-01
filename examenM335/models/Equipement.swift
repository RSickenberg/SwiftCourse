//
//  Equipement.swift
//  examenM335
//
//  Created by Romain Sickenberg on 01.03.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

class Equipement: NSObject {
    
    var modele: String
    var marque: String
    var specificationsTech: String
    var evalutationEtat: String
    var dateLocation: String
    var dureeLocation: String
    var estLoue: Bool
    var estReserve: Bool
    
    override init() {
        modele = ""
        marque = ""
        specificationsTech = ""
        evalutationEtat = ""
        dateLocation = ""
        dureeLocation = ""
        estLoue = false
        estReserve = false
        
        super.init()
    }
    
    init(modele: String,
         marque: String,
         specificationsTech: String,
         evaluationEtat: String,
         dateLocation: String,
         dureeLocation: String,
         estLoue: Bool,
         estReserve: Bool) {
        
        self.modele = modele
        self.marque = marque
        self.specificationsTech = specificationsTech
        self.evalutationEtat = evaluationEtat
        self.dateLocation = dateLocation
        self.dureeLocation = dureeLocation
        self.estLoue = estLoue
        self.estReserve = estReserve
    }
    
    override var description: String {
        
        get {
            let newDescription: String =
            "Modèle : \(modele)\n" +
            "Spec : \(specificationsTech)\n" +
            "Evalutaion état : \(evalutationEtat)\n" +
            "Date de location : \(dateLocation)\n" +
            "Loué : \(estLoue)\n" +
            "Réservé : \(estReserve) \n\n"
            
            return newDescription
        }
    }
}
