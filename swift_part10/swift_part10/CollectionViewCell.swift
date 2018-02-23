//
//  CollectionViewCell.swift
//  swift_part10
//
//  Created by Romain Sickenberg on 23.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var adress_label: UILabel!
    @IBOutlet weak var isAdult_swich: UISwitch!
    @IBAction func isAdult_swich(_ sender: UISwitch) {
        print("Switch has changed")
    }
}
