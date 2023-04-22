//
//  RideSummary.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 19/06/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import CoreData

extension RideSummary {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        id = UUID()
    }

    @discardableResult
    static func create(context: NSManagedObjectContext) -> RideSummary {
        RideSummary(context: context)
    }
}
