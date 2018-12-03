//
//  TrackTableViewController.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 12/3/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TrackTableViewController: UITableViewController, UISearchBarDelegate {

    var artistName = ""
    var currentTracks = [Track]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchText = searchBar.text {
            artistName = searchText
        }
        print("search bar button clicked with \(artistName)")
        
        search(searchTerm: artistName)
        searchBar.resignFirstResponder()
    }
    
    // search iTunes for results for term searchTerm
    func search(searchTerm: String) {
        let searchUrl = createURL(name: searchTerm)
        
        let task = URLSession.shared.dataTask(with: searchUrl!)  { (data, response, error) in
            
            if let error = error {
                print(error)
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            if let data = data,
                let results = try? jsonDecoder.decode(Results.self, from: data) {
                self.currentTracks = results.results
                
                print(self.currentTracks[0])
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            
            
        }
        
        task.resume()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentTracks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt called")
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = currentTracks[indexPath.row].track
        cell.detailTextLabel?.text = currentTracks[indexPath.row].artist

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
