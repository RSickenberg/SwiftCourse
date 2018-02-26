//
//  ViewController.swift
//  swift_part13
//
//  Created by Romain Sickenberg on 23.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gest_rotation(_ sender: UIGestureRecognizer) {
        print("Rotation recognized")
    }
    @IBOutlet var gest_rotation: UIRotationGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

