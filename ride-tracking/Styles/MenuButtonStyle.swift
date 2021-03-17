//
//  MenuButtonStyle.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 11/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI

struct MenuButtonStyle: ButtonStyle {

    let tintColor = Color(UIColor.systemGreen)
    let backgroundColor = Color(UIColor.systemBackground)

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .fill()
                .foregroundColor(configuration.isPressed ? tintColor : backgroundColor)
                .frame(width: 36, height: 36)
                .shadow(radius: 2)
            configuration.label
                .foregroundColor(configuration.isPressed ? backgroundColor : tintColor)
        }
        //.opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}
