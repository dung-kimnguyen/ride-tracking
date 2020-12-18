//
//  CGContext+Extensions.swift
//  Velik
//
//  Created by Nocero Beguhe on 23/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import CoreGraphics

extension CGContext {
    func draw(_ block: (CGContext) -> Void) {
        defer { restoreGState() }
        saveGState()
        block(self)
    }
}
