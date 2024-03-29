//
//  RideSummaryView.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 20/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI

struct RideSummaryView: View {
    var viewModel: RideViewModel
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 8) {
                ValueDescriptionView(text: viewModel.duration, details: viewModel.durationLabel)
                ValueDescriptionView(text: viewModel.avgSpeed, details: viewModel.avgSpeedLabel)
            }
            Spacer()
            VStack(spacing: 8) {
                ValueDescriptionView(text: viewModel.distance, details: viewModel.distanceLabel)
                ValueDescriptionView(text: viewModel.maxSpeed, details: viewModel.maxSpeedLabel)
            }
            Spacer()
        }
    }
}
