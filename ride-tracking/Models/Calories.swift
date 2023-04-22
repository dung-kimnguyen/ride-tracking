//
//  Energy.swift
//  Fietscomputer
//
//  Created by Dung Kim Nguyen on 20/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Foundation

struct Energy {

    /// power [watt]
    /// duration [s]
    static func calories(power: Double, duration: TimeInterval) -> Double {
        return power / 1000 * duration
    }
}
