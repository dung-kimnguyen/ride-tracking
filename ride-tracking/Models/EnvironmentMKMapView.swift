//
//  EnvironmentMKMapView.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 18/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import MapKit
import SwiftUI

struct EnvironmentMKMapView: EnvironmentKey {
    typealias Value = MKMapView

    static var defaultValue = MKMapView()
}

extension EnvironmentValues {
    var mkMapView: MKMapView {
        get { self[EnvironmentMKMapView.self] }
        set { self[EnvironmentMKMapView.self] = newValue }
    }
}
