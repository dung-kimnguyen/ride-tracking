//
//  GaugeView.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 01/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI

struct GaugeView<ViewModel: GaugeViewModel>: View {

    @ObservedObject var viewModel: ViewModel
    @State var offset = CGSize.zero

    var body: some View {
        Text(viewModel.value)
            .minimumScaleFactor(0.2)
            .scaledFont(name: viewModel.fontName, size: CGFloat(viewModel.fontSize))
    }
}
