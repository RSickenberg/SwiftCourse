//
//  ReceiverViewController.swift
//  swift_part12
//
//  Created by Romain Sickenberg on 23.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {

    @IBOutlet weak var newData_label: UILabel!
    
    var valueReceived: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newData_label.text = valueReceived
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
