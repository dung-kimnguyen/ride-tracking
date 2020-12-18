//
//  DurationViewModel.swift
//  Velik
//
//  Created by Nocero Beguhe on 01/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
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
