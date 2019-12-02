//
//  DwarfTableViewController.swift
//  Dwarves
//
//  Created by Max Luttrell on 5/4/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class DwarfTableViewController: UITableViewController {

    let dwarves = Dwarves()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func addDwarf(_ sender: UIBarButtonItem) {
        // add a random dwarf to the model and refresh the table view
        dwarves.addRandomDwarf()
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dwarves.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dwarfCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel!.text = dwarves[indexPath.row]
        
        return cell
    }
    

    
}

