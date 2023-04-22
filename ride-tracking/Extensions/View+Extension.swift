//
//  View+Extension.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 14/05/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI

extension View {

    func scaledFont(name: String, size: CGFloat) -> some View {
        modifier(ScaledFont(name: name, size: size))
    }
}
