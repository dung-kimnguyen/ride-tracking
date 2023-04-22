//
//  HistoryCoordinator.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 11/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import SwiftUI

class HistoryCoordinator: Coordinator, ViewRunner {

    private var isPresented: Binding<Bool>

    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
    }

    func start() -> some View {
        NavigationLink(destination: EmptyView(), isActive: isPresented) {
            EmptyView()
        }
    }
}
