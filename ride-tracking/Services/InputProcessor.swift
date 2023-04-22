//
//  InputProcessor.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 16/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Foundation

protocol InputProcessor {
    associatedtype Input
    associatedtype Output
    func process(input: Input) -> Output
}
