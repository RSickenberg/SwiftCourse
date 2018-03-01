//
//  EquipementMasterDetailTableViewCell.swift
//  examenM335
//
//  Created by Romain Sickenberg on 01.03.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

protocol updateStatusSwitchProtocol {
    func updateStatusSwitch(newValue: Bool, record: Int, switchName: String)
}

class EquipementMasterDetailTableViewCell: UITableViewCell {
    
    var updateSwitchDelegate: updateStatusSwitchProtocol?
    var recordId: Int = 0
    
    @IBOutlet var labelModel: UILabel!
    @IBOutlet var labelMarque: UILabel!
    @IBOutlet var labelSpec: UILabel!
    @IBOutlet var labelEval: UILabel!
    @IBOutlet var switchReserved: UISwitch!
    @IBOutlet weak var switchLoue: UISwitch!
    @IBAction func switchReserved(_ sender: UISwitch) {
        if updateSwitchDelegate == nil {
            print("Delegate not init")
        }
        else {
            self.updateSwitchDelegate?.updateStatusSwitch(newValue: sender.isOn, record: recordId, switchName: "reservation")
        }
    }
    
    @IBAction func switchLoue(_ sender: UISwitch) {
        if updateSwitchDelegate == nil {
            print("Delegate not init")
        }
        else {
            self.updateSwitchDelegate?.updateStatusSwitch(newValue: sender.isOn, record: recordId, switchName: "location")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
