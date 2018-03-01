//
//  DetailEquipementViewController.swift
//  examenM335
//
//  Created by Romain Sickenberg on 01.03.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class DetailEquipementViewController: UIViewController, updateStatusSwitchProtocol {
    
    var newData = [Equipement]()
    var index : Int = 0
    var boutique = EquipementPhotoALouer()
    var updateSwitchDelegate: updateStatusSwitchProtocol?

    @IBOutlet weak var switchLoue: UISwitch!
    @IBOutlet weak var switchReserve: UISwitch!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelMarque: UILabel!
    @IBOutlet weak var labelDateLocation: UILabel!
    @IBOutlet weak var labelDureeLocation: UILabel!
    @IBOutlet weak var tabTitleLabel: UINavigationItem!
    @IBAction func saveButton(_ sender: UIButton) {
    
    }
    @IBAction func switchReserve(_ sender: UISwitch) {
        if updateSwitchDelegate == nil {
            print("Delegate not init")
        }
        else {
            self.updateSwitchDelegate?.updateStatusSwitch(newValue: sender.isOn, record: index, switchName: "location")
        }
    }
    @IBAction func switchLoue(_ sender: UISwitch) {
        if updateSwitchDelegate == nil {
            print("Delegate not init")
        }
        else {
            self.updateSwitchDelegate?.updateStatusSwitch(newValue: sender.isOn, record: index, switchName: "reservation")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchLoue.isOn = newData[index].estLoue
        switchReserve.isOn = newData[index].estReserve
        labelModel.text = newData[index].modele
        labelMarque.text = newData[index].marque
        labelDateLocation.text = newData[index].dateLocation
        labelDureeLocation.text = newData[index].dureeLocation
        tabTitleLabel.title = newData[index].modele

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateStatusSwitch(newValue: Bool, record: Int, switchName: String) {
        var equipementCell = boutique.read(index: record)
        
        if switchName == "reservation" {
            equipementCell.estReserve = newValue
            boutique.changeSwitchValue(index: record, id: "reservation", value: newValue)
        }
        
        if switchName == "location" {
            equipementCell.estLoue = newValue
            boutique.changeSwitchValue(index: record, id: "location", value: newValue)
        }
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
