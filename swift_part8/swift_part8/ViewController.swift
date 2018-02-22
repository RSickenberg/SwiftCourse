//
//  ViewController.swift
//  swift_part8
//
//  Created by Romain Sickenberg on 22.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var selected_label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    let daysOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satursday", "Sunday"]
    let meals: [String] = ["Meat", "Pizza", "Burrito", "Sandwiches"]
    var fullPicker = [[String]]()
    var picker: UIPickerViewDataSource?
    var pickerSelection: [Int]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        selected_label.text = "Wait..."
        fullPicker = [daysOfWeek,meals]
        pickerSelection = [Int].init(repeating: 0, count: fullPicker.count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return fullPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fullPicker[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fullPicker[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerSelection[component] = row
        
        self.updateDisplay()
    }
    
    func updateDisplay() {
        
    }
}

