//
//  User.swift
//  RiderProvider
//
//  Created by Adarsh Singh on 14/12/24.
//

import Foundation
struct User {
    let phone: String // Unique ID
    var name: String
    var isProvider: Bool
    var cars: [Car]? // Optional, as the user may not be a provider or have cars
}

