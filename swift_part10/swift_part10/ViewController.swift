//
//  ViewController.swift
//  swift_part10
//
//  Created by Romain Sickenberg on 23.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var dataCell: [(name: String, adress: String, isAdult: Bool)] = [("Romain Sickenberg", "Chemin des jonchets", true), ("Ivan Ilic", "Route de genvève", true)]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell
        
        cell.name_label.text = dataCell[indexPath.row].name
        cell.adress_label.text = dataCell[indexPath.row].adress
        cell.isAdult_swich.setOn(dataCell[indexPath.row].isAdult, animated: true)
        
        return cell
    }


}

