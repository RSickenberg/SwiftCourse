//
//  FicheContactTableViewCell.swift
//  swift_part9.5
//
//  Created by Romain Sickenberg on 22.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class FicheContactTableViewCell: UITableViewCell {

    @IBOutlet weak var marie_switch: UISwitch!
    @IBOutlet weak var picture_view: UIImageView!
    @IBOutlet weak var telephone_label: UILabel!
    @IBOutlet weak var adresse_label: UILabel!
    @IBOutlet weak var prenom_label: UILabel!
    @IBAction func marie_switch(_ sender: UISwitch) {
        
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
