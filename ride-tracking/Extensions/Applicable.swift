//
//  Applicable.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 23/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
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
