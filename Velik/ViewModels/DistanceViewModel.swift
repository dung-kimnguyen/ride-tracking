//
//  DistanceView.swift
//  Velik
//
//  Created by Nocero Beguhe on 01/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI
import Combine

class DistanceViewModel: GaugeViewModel {

    override init() {
        super.init()

        rideService.distance
            .removeDuplicates()
            .map { RideViewModel.distance($0, unit: Settings.shared.distanceUnit) }
            .assign(to: \.value, on: self)
            .store(in: &cancellable)
    }
}
