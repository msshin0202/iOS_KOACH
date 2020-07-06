//
//  User.swift
//  iOS_KOACH
//
//  Created by Matthew Shin on 2020-07-06.
//  Copyright © 2020 KOACH. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    @objc dynamic var name: String =  ""
    let teams = List<Team>()
    
}
