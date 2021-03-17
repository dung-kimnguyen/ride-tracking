//
//  Applicable.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 23/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import CoreData

protocol Applicable { }

extension Applicable where Self: AnyObject {

    @inlinable
    func apply(_ block: (Self) throws -> Void) rethrows -> Self {
        try block(self)
        return self
    }
}

extension NSObject: Applicable { }
