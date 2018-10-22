//
//  Player.swift
//  players
//
//  Created by Max Luttrell on 10/17/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import Foundation

enum Sport {
    case baseball, soccer, football
}

struct Player {
    var name: String
    var sport: Sport
    var rating: Int
}

var players = [
    Player(name: "Joe Montana", sport: .football, rating: 5),
    Player(name: "Buster Posey", sport: .baseball, rating: 4),
    Player(name: "Yasiel Puig", sport: .baseball, rating: 3)
]

func filteredPlayers(sport: Sport) -> [Player] {
    var filteredPlayers = [Player]()
    
    for player in players {
        if player.sport == sport {
            filteredPlayers.append(player)
        }
    }
    
    return filteredPlayers
}
