//
//  Weight.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 20/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Foundation

struct Weight {

    static func loss(energy: Measurement<UnitEnergy>) -> Measurement<UnitMass> {
        // 3,500 kcal ~ 0.45 kg of fat
        // 1 kcal = 0.000128571 kg
        let kcal = energy.converted(to: .kilocalories)
        return Measurement(value: 0.000128571 * kcal.value, unit: UnitMass.kilograms)
    }
}
