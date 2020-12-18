//
//  AvgSpeedViewModel.swift
//  Velik
//
//  Created by Nocero Beguhe on 14/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
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
