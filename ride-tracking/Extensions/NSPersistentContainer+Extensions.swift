//
//  NSPersistentContainer+Extensions.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 24/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import CoreData

extension NSPersistentContainer {
    convenience init(_ name: String) throws {
        self.init(
            name: name,
            managedObjectModel: try! PersistentContainer.model(name: name)
        )
    }
}
