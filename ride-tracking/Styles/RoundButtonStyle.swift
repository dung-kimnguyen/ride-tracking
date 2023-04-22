//
//  RoundButtonStyle.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 05/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI

struct RoundButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .fill()
            configuration.label
                .font(Font
                    .system(.title)
                    .bold()
                    .italic()
                )
                .foregroundColor(.white)
                .padding(12)
        }
        .opacity(configuration.isPressed ? 0.9 : 1.0)
        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
