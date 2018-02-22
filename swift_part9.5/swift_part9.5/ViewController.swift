//
//  ViewController.swift
//  swift_part9.5
//
//  Created by Romain Sickenberg on 22.02.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let daysOfWeek = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
    let ficheContacts: [(photo: String, nomPrenom: String, adresse: String, tel: String, marie: Bool)] = [("romainPic", "Romain Sickenberg", "Route de genève 4", "078.907.32.02", false),
                                                                                                          ("ivanPic", "Ivan Ilic", "Route de bla 3", "087.312.31.43", true)]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ficheContacts.count
    }

//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
//
//        cell.textLabel?.text = daysOfWeek[indexPath.row]
//        return cell
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath) as! FicheContactTableViewCell
        
        contactCell.prenom_label.text = ficheContacts[indexPath.row].nomPrenom
        return contactCell
    }
}
