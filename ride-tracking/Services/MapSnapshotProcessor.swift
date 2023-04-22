//
//  MapSnapshotProcessor.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 23/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

protocol MapSnapshotProcessor {
    func process(_ snapshot: MKMapSnapshotter.Snapshot?) -> UIImage?
}
