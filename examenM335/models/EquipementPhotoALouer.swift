//
//  EquipementPhotoALouer.swift
//  examenM335
//
//  Created by Romain Sickenberg on 01.03.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

class EquipementPhotoALouer: NSObject {
    
    private var collection = [Equipement]()
    
    override init() {
        super.init()
        
        self.chargerDonneesDemo()
    }
    
    public func chargerDonneesDemo() {
        var equipement = Equipement()
        
        equipement.modele = "A7RIII"
        equipement.marque = "Sony"
        equipement.specificationsTech = "Large focale"
        equipement.dateLocation = "02/02/18"
        equipement.dureeLocation = "90"
        equipement.evalutationEtat = "Pas de remarque"
        equipement.estLoue = true
        equipement.estReserve = true
        
        self.ajouter(equipementPhoto: equipement)
        
        equipement = Equipement()
        
        equipement.modele = "D850"
        equipement.marque = "Nikon"
        equipement.specificationsTech = ""
        equipement.dateLocation = "01/01/2018"
        equipement.dureeLocation = "120"
        equipement.evalutationEtat = "Objectif rayé"
        equipement.estLoue = true
        equipement.estReserve = false
        
        self.ajouter(equipementPhoto: equipement)
    }
    
    public func ajouter(equipementPhoto: Equipement) {
        collection.append(equipementPhoto)
    }
    
    public func read(index: Int) -> Equipement {
        return collection[index]
    }
    
    public func returnCollection() -> [Equipement] {
        return collection
    }
    
    public func count() -> Int {
        return collection.count
    }
    
    public func delete(index: Int) {
        collection.remove(at: index)
    }
    
    public func changeSwitchValue(index: Int, id: String, value: Bool) {
        if id == "location" {
            collection[index].estLoue = value
        }
        
        if id == "reservation" {
            collection[index].estReserve = value
        }
        
        print("\(collection[index]) Nouvelle valeur pour : \(id) avec un \(value)")
    }
}
