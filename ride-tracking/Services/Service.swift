//
//  Service.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 01/05/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

protocol Service {

    var shouldAutostart: Bool { get }

    func start()
    func stop()
}
