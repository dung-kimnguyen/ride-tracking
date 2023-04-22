//
//  CGContext+Extensions.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 23/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import CoreGraphics

extension CGContext {
    func draw(_ block: (CGContext) -> Void) {
        defer { restoreGState() }
        saveGState()
        block(self)
    }
}
