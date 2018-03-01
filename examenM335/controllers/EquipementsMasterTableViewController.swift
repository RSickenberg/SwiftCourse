//
//  TableViewController.swift
//  examenM335
//
//  Created by Romain Sickenberg on 01.03.18.
//  Copyright © 2018 Romain Sickenberg. All rights reserved.
//

import UIKit

class EquipementsMasterTableViewController: UITableViewController, updateStatusSwitchProtocol {
    
    var boutique = EquipementPhotoALouer()
    var tableCell = EquipementMasterDetailTableViewCell()
    var index: Int?
    var switchProtocol: updateStatusSwitchProtocol?
    
    @IBOutlet var table: UITableView!
    @IBAction func editionButton(_ sender: UIBarButtonItem) {
        if table.isEditing == false {
            table.isEditing = true
        }
        else {
            table.isEditing = false
        }
    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        index = 0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boutique.count()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        index = indexPath.row
        
        performSegue(withIdentifier: "showData", sender: self)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = boutique.read(index: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath) as! EquipementMasterDetailTableViewCell
        
        // Configure the cell...
        cell.labelModel.text = data.modele
        cell.labelMarque.text = data.marque
        cell.labelSpec.text = data.specificationsTech
        cell.labelEval.text = data.evalutationEtat
        cell.switchLoue.isOn = data.estLoue
        cell.switchReserved.isOn = data.estReserve
        
        cell.updateSwitchDelegate = self
        cell.recordId = indexPath.row

        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            boutique.delete(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
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
        
        self.tableView.reloadData()
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        switch segue.identifier! {
        case "showData":
            let detailEquipement: DetailEquipementViewController = segue.destination as! DetailEquipementViewController
            
            detailEquipement.newData = self.boutique.returnCollection()
            detailEquipement.index = self.index!
            detailEquipement.updateSwitchDelegate = self.switchProtocol
        default:
            break
        }
    }
}
