//
//  ViewController.swift
//  swift_part6
//
//  Created by Romain Sickenberg on 09.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var source_tf: UITextField!
    @IBOutlet weak var destination_tf: UITextField!
    @IBOutlet weak var copy_button: UIButton!
    @IBAction func copy_button(_ sender: Any) {
        destination_tf.text = source_tf.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        source_tf.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        source_tf.textColor = UIColor.red
    }
    
}
