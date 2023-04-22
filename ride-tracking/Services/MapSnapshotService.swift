//
//  MapSnapshotService.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 19/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import UIKit
import MapKit
import Combine
import struct CoreLocation.CLLocationCoordinate2D

protocol MapSnapshotProtocol {
    func makeSnapshot(region: MKCoordinateRegion,
                      size: CGSize,
                      processor: MapSnapshotProcessor) -> AnyPublisher<UIImage?, Error>
}

class MapKitSnapshot: MapSnapshotProtocol {

    func makeSnapshot(region: MKCoordinateRegion,
                      size: CGSize,
                      processor: MapSnapshotProcessor) -> AnyPublisher<UIImage?, Error> {

        MKMapSnapshotter
            .Publisher(region: region, size: size, processor: processor)
            .eraseToAnyPublisher()
    }
}
