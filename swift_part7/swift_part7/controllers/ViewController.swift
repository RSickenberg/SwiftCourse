//
//  ViewController.swift
//  swift_part7
//
//  Created by Romain Sickenberg on 22.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions = questionSources()
    var index: Int = 0
    
    @IBOutlet weak var question_label: UILabel!
    @IBOutlet weak var answer_label: UILabel!
    
    override func viewDidLoad() {
        displayQuestionsAnswer()
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func show_btn(_ sender: Any) {
        displayQuestionsAnswer("show")
        index += 1
    }
    @IBAction func next_btn(_ sender: Any) {
        displayQuestionsAnswer("next")
    }
    
    func displayQuestionsAnswer(_ action: String = "next") {
        
        switch action {
        case "show":
            let answer = [String](questions.getQuestionsAnswers().values)
            if (index < answer.count) {
                answer_label.text = answer[index]
            } else {
                index = 0
            }
            break
        case "next":
            let question = [String](questions.getQuestionsAnswers().keys)
            if (index < question.count) {
                question_label.text = question[index]
                answer_label.text = "Tap on show answer"
            } else {
                index = 0
                question_label.text = question[index]
                answer_label.text = "Tap on show answer"
            }
            break
        default:
            break
        }
        
    }


}

