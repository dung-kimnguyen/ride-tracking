//
//  AvgSpeedViewModel.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 14/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Foundation

class AvgSpeedViewModel: GaugeViewModel {

    override init() {
        super.init()

        fontSize = 160
        title = Strings.avg_speed.uppercased()
        rideService.avgSpeed
            .removeDuplicates()
            .sink { value in // m/s
                let formatted = RideViewModel.speed(value, unit: Settings.shared.speedUnit)
                self.value = formatted.value
                self.units = formatted.units.uppercased()
            }
            .store(in: &cancellable)
    }
}
