//
//  RideMapViewModel.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 09/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import MapKit
import SwiftUI

class RideMapViewModel {

    let ride: Ride

    var region: MKCoordinateRegion? {
        ride.track?.region?.asMKCoordinateRegion()
    }

    var locations: [CLLocation] {
        ride.track?.locations() ?? []
    }

    var coordinates: [CLLocationCoordinate2D] {
        locations.map { $0.coordinate }
    }

    init(ride: Ride) {
        self.ride = ride
    }
}
