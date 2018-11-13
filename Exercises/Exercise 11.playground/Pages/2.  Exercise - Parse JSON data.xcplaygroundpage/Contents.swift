/*:
 ## Exercise - Parse JSON data
 */
import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

/*:
 1.  Create a struct `Track` to hold the artistName, trackName, and artworkUrl60 fields from an iTunes track.  Like in the example in class, you will need to make it conform to the `Codable` protocol.  Also, make sure to include an enum CodingKeys which confroms to the CodingKey protocol.
 */


/*:
 2.  Recall that querying the iTunes server returns two things: an Int `resultCount` containing the number of results, and an array of tracks.  I have created a Results struct for you here to use for this query.  You don't need to change it, but review it to make sure you understand it.  Note that it assumes you've created a good `Track` struct in part 1!  Until you do so, it won't compile.
 
 */

struct Results: Codable {
    let resultCount: Int
    let results: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case results
    }    
}


/*:
 3.  Using either the iTunes music query URL you generated in page 1 of this exercise, or the one provided below, query the iTunes server for your favorite song.  This time, instead of just printing out the returned data as a String, use a JSONDecoder to parse the returned data into a Results object.  Then, print out the artist, the track, and the artwork URL to the debug area.
 */
let musicSearchURL = URL(string: "https://itunes.apple.com/search?term=Johnny%20Cash&media=music&limit=1&lang=en_us")!


//: page 2 of 2  |  [Previous](@previous)
