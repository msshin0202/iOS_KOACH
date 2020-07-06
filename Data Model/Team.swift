//
//  Team.swift
//  iOS_KOACH
//
//  Created by Matthew Shin on 2020-07-06.
//  Copyright © 2020 KOACH. All rights reserved.
//

import Foundation
import RealmSwift

class Team: Object {
    @objc dynamic var name: String = ""
    let players = List<Player>()
    var parentUser = LinkingObjects(fromType: User.self, property: "teams")

}
