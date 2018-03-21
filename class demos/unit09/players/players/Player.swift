//
//  Player.swift
//  players
//
//  Created by Max Luttrell on 3/20/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import Foundation

enum Sport {
    case baseball, basketball, football, soccer
}

struct Player {
    var name: String?
    var sport: Sport
    var rating: Int
}

var players = [ Player(name: "Buster Posey", sport: .baseball, rating: 5),
                Player(name: "Sergio Romo", sport: .baseball, rating: 3),
                Player(name: "Evan Longoria", sport: .baseball, rating:4)

]

var soccerPlayers = [ Player(name: "David Beckham", sport: .soccer, rating: 3),
                      Player(name: "Christian Ronaldo", sport: .soccer, rating: 4),
                      Player(name: "Alexei Lalas", sport: .soccer, rating: 3)
]


