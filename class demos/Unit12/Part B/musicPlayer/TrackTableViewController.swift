//
//  TrackTableViewController.swift
//  musicPlayer
//
//  Created by Maximilian Luttrell on 11/21/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class TrackTableViewController: UITableViewController, UISearchBarDelegate   {

    // property to store tracks returned from iTunes
    var tracks = [Track]()
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt \(indexPath.row)")
        print("track is: \(tracks[indexPath.row])")
        selectedRow = indexPath.row
        performSegue(withIdentifier: "playSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue")
        if let dest = segue.destination as? NowPlayingViewController {
            dest.currentTrack = tracks[selectedRow]
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            print("searchbar text: \(text)")
            search(search: text)
        }
        searchBar.resignFirstResponder()
    }
    
    func search(search: String) {
        let url = createURL(name: search)!
        print("url: \(url)")
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error)
                return
            }
            
            if let data = data {
                // try to do the JSON decode.  if it works, update the search results and reload the table view
                let jsonDecoder = JSONDecoder()
                if let searchResults = try? jsonDecoder.decode(Results.self, from: data) {
                    self.tracks = searchResults.results
                    print("we got \(self.tracks.count) tracks back from iTunes search")
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } else {
                    print("we didn't get any tracks back from iTunes search")
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
        
        
        return tracks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = tracks[indexPath.row].track
        cell.detailTextLabel?.text = tracks[indexPath.row].artist

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
