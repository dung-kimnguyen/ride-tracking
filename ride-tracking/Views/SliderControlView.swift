//
//  SliderControlView.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 27/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI

struct SliderControlView: View {

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(UIColor.systemBackground))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 24, maxHeight: 24)
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color(UIColor.separator))
                .frame(width: 48, height: 3)
        }
    }
}
