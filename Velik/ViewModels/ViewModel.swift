//
//  ViewModel.swift
//  Velik
//
//  Created by Nocero Beguhe on 18/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import Combine
import Injected

class ViewModel {
    @Injected var rideService: RideService
    @Injected var locationService: LocationService
    @Injected var bluetoothService: BluetoothScanner

    var cancellable = Set<AnyCancellable>()
}
