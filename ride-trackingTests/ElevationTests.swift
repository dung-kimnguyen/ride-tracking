//
//  ElevationTests.swift
//  ride-trackingTests
//
//  Created by Dung Kim Nguyen on 16/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import XCTest
@testable import ride-tracking

class ElevationTests: XCTestCase {

    func testElevationGain() throws {
        let xml = GPXUtils.read(file: .long)
        let gpx: GPXTrack = try XMLDecoder.decode(xml)

        let elevationGainProcessor = ElevationGainProcessor(initialAltitude: gpx.locations.first!.altitude)
        var elevationGain = 0.0

        gpx.locations.dropFirst().forEach {
            elevationGain = elevationGainProcessor.process(input: $0.altitude)
        }

        XCTAssertEqual(17.2, elevationGain, accuracy: 1)
    }
}
