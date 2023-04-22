//
//  RideMapSnapshotView.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 04/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI

struct RideMapSnapshotView: View {

    let viewModel: RideViewModel
    let mapSize: CGSize

    var body: some View {
        AsyncMapImage(
            uuid: viewModel.uuid,
            region: viewModel.mapRegion,
            size: mapSize,
            processor: viewModel.mapProcessor()) {
                Rectangle() // placeholder
                    .foregroundColor(Color(UIColor.systemFill))
        }
    }
}
