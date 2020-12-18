//
//  UserTrackingButton.swift
//  Velik
//
//  Created by Nocero Beguhe on 18/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
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
