//
//  ValueDescriptionView.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 19/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import SwiftUI

struct ValueDescriptionView: View {
    let text: String
    let details: String

    var body: some View {
        VStack {
            Text(text)
                .font(.headline)
            Text(details.localizedUppercase)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}
