//
//  Logger.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 13/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import os

struct Logger {

    static let main = Logger()

    private let logger = OSLog(subsystem: "fiets", category: "gps")

    func log(_ message: String) {
        os_log(.error, log: logger, "%{public}@", message)
    }
}
