//
//  Player.swift
//  iOS_KOACH
//
//  Created by Matthew Shin on 2020-07-06.
//  Copyright © 2020 KOACH. All rights reserved.
//

import Foundation
import RealmSwift

class Player: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var number: Int = 0
    @objc dynamic var goals: Int = 0
    @objc dynamic var yellowCards: Int = 0
    @objc dynamic var redCards: Int = 0
    @objc dynamic var minutesPlayed: Int = 0
    @objc dynamic var numOfGames: Int = 0
    var parentTeam = LinkingObjects(fromType: Team.self, property: "players")
}
