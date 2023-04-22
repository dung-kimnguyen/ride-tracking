//
//  UserTrackingButton.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 18/05/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import MapKit
import SwiftUI

struct UserTrackingButton: UIViewRepresentable {

    typealias UIViewType = MKUserTrackingButton

    func makeUIView(context: Context) -> MKUserTrackingButton {
        MKUserTrackingButton(mapView: context.environment.mkMapView)
    }

    func updateUIView(_ view: MKUserTrackingButton, context: Context) { }
}
