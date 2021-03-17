//
//  Settings.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 24/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import Foundation

struct Settings {

    static let shared = Settings()

    var speedUnit: UnitSpeed {
        Locale.current.usesMetricSystem ? .kilometersPerHour : .milesPerHour
    }

    var distanceUnit: UnitLength {
        Locale.current.usesMetricSystem ? .kilometers : .miles
    }

    var smallDistanceUnit: UnitLength {
        Locale.current.usesMetricSystem ? .meters : .miles
    }

    var elevationUnit: UnitLength {
        .meters
    }

    var distanceStepInMeters: Double {
        let one = Measurement(value: 1, unit: distanceUnit)
        return one.converted(to: .meters).value
    }
}
