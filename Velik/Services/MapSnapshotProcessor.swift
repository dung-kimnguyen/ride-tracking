//
//  MapSnapshotProcessor.swift
//  Velik
//
//  Created by Nocero Beguhe on 23/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

protocol MapSnapshotProcessor {
    func process(_ snapshot: MKMapSnapshotter.Snapshot?) -> UIImage?
}
