//
//  Filter.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 13/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import Foundation

class LowPassFilter: InputProcessor {

    var value: Double = 0
    let factor: Double

    init(initialValue: Double? = .zero, factor: Double) {
        self.value = initialValue ?? .zero
        self.factor = factor
    }

    func process(input: Double) -> Double {
        value = factor * input + value * (1.0 - factor)
        return value
    }
}
