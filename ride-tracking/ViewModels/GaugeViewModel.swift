//
//  GaugeViewModel.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 01/05/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Combine
import Injected

class GaugeViewModel: ViewModel, ObservableObject {

    @Published var value = ""
    @Published var units = ""
    @Published var title = ""
    @Published var fontName = "DIN Alternate"
    @Published var fontSize = 28
}
