//
//  RideMapSnapshotView.swift
//  Velik
//
//  Created by Nocero Beguhe on 04/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
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
