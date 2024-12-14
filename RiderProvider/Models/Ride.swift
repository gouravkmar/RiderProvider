//
//  Ride.swift
//  RiderProvider
//
//  Created by Adarsh Singh on 14/12/24.
//

import Foundation
struct Ride {
    let rideID: String // Unique ID
    let providerID: String // Links to `User.phone`
    var riderIDs: [String] // List of Rider `User.phone`
    let timeCreated: Date
    var departureTime: Date
    let seatsOffered: Int
    var car: Car // Mandatory at the time of ride creation
    let price: Double
    let upiID: String
    var isCompleted: Bool
    let pickupPoints: [Location]
    let dropPoints: [Location]
}

extension Ride {
    var availableSeats: Int {
        seatsOffered - riderIDs.count
    }

    var isAvailable: Bool {
        availableSeats > 0 && !isCompleted
    }
}
