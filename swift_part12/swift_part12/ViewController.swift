//
//  ViewController.swift
//  swift_part12
//
//  Created by Romain Sickenberg on 23.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var stringToSend: String?
    @IBOutlet weak var valueToSend: UITextField!
    @IBAction func btn_send(_ sender: UIButton) {
        stringToSend = valueToSend.text!
        performSegue(withIdentifier: "showData", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueToSend.delegate = self
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.textFieldShouldReturn(_:)))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Prepared data")
        
        switch segue.identifier! {
        case "showData":
            let ReceiverViewController: ReceiverViewController = segue.destination as! ReceiverViewController
            ReceiverViewController.valueReceived = stringToSend
            break
        default:
            break
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }


}

