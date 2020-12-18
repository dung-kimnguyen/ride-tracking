//
//  InputProcessor.swift
//  Velik
//
//  Created by Nocero Beguhe on 16/07/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import Foundation

protocol InputProcessor {
    associatedtype Input
    associatedtype Output
    func process(input: Input) -> Output
}
