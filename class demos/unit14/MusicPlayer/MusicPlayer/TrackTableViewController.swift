//
//  TrackTableViewController.swift
//  MusicPlayer
//
//  Created by Max Luttrell on 5/1/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TrackTableViewController: UITableViewController, UISearchBarDelegate {

    var searchTerm: String?
    var currentTracks: [Track] = []
    var selectedRow = 0
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = currentTracks[indexPath.row].artist
        cell.detailTextLabel?.text = currentTracks[indexPath.row].track
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row \(indexPath.row) was tapped")
        selectedRow = indexPath.row
        performSegue(withIdentifier: "nowPlayingSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue called")
        if let destination = segue.destination as? NowPlayingViewController {
            destination.currentTrack = currentTracks[selectedRow]
        }
    }
    
    // MARK: - Search Bar Delegate
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("searchBarSearchButtonClicked with \(searchBar.text)")
        if let searchTerm = searchBar.text {
            search(term: searchTerm)
        }
        searchBar.resignFirstResponder()
    }

    func search(term: String) {
        if let url = createURL(name: term) {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                print("in the completion handler")
                
                if let error = error {
                    print(error)
                    return
                }
                
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    
                    if let result = try? jsonDecoder.decode(Results.self, from: data) {
                        self.currentTracks = result.results
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    }
                }
            }
            task.resume()
        }
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
