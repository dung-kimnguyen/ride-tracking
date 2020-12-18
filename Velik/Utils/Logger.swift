//
//  Logger.swift
//  Velik
//
//  Created by Nocero Beguhe on 13/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import os

struct Logger {

    static let main = Logger()

    private let logger = OSLog(subsystem: "fiets", category: "gps")

    func log(_ message: String) {
        os_log(.error, log: logger, "%{public}@", message)
    }
}
