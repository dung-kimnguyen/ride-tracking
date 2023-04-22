//
//  DurationViewModel.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 01/05/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI
import Combine

class DurationViewModel: GaugeViewModel {

    override init() {
        super.init()

        rideService.elapsed
            .removeDuplicates()
            .map { RideViewModel.duration($0) }
            .assign(to: \.value, on: self)
            .store(in: &cancellable)
    }
}
