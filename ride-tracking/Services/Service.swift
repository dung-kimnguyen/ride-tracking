//
//  Service.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 01/05/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

protocol Service {

    var shouldAutostart: Bool { get }

    func start()
    func stop()
}
