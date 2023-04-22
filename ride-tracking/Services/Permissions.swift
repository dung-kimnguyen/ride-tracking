//
//  Permissions.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 30/04/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import UIKit
import Combine
import CoreLocation

protocol Permissions: Service {
    associatedtype Status

    var status: AnyPublisher<Status, Never> { get }

    func request() -> Future<Status, Never>
}
