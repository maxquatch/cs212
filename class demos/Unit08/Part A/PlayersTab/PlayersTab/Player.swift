//
//  Player.swift
//  PlayersTab
//
//  Created by Maximilian Luttrell on 10/17/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import Foundation

enum Sport {
    case baseball, football, soccer, basketball
}

struct Player {
    var name: String
    var sport: Sport
    var rating: Int
}

var players = [Player(name: "Buster Posey", sport: .baseball, rating: 5),
               Player(name: "Joe Montana", sport: .football, rating: 5),
               Player(name: "Yasiel Puig", sport: .baseball, rating: 3)]
