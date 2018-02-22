//
//  QuestionSources.swift
//  swift_part7
//
//  Created by Romain Sickenberg on 22.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import Foundation

class questionSources: NSObject {
    
    var questionsAnswer: [String:String]
    
    override init() {
        questionsAnswer = ["default":"default"]
        
        super.init()
    }
    
    func getQuestionsAnswers() -> [String:String] {
        questionsAnswer = [
            "Quel est la capitale de la Suisse ?": "Berne",
            "Quel est la capitale de la France ?": "Paris",
            "Combien d'habitants vivent sur la lune ?": "0"
        ]
        
        return questionsAnswer
    }
    
    override var description: String {
        
        get {
            let newDescription: String = "Model for dictionary input"
            return newDescription
        }
        
        
    }
    
}
