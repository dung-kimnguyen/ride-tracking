//
//  MapImageCache.swift
//  ride-tracking
//
//  Created by Nocero Beguhe on 26/06/2020.
//  Copyright © 2020 Nocero Beguhe. All rights reserved.
//

import UIKit

class MapImageCache {

    // Just to have CGSize Hashable
    struct Size: Hashable {
        let width: CGFloat
        let height: CGFloat

        init(_ size: CGSize) {
            self.width = size.width
            self.height = size.height
        }
    }

    // Keep different size caches
    struct Key: Hashable {
        let uuid: UUID
        let size: Size
    }

    static var inMemory = [Key: UIImage]()

    static func key(uuid: UUID, size: CGSize) -> Key {
        Key(uuid: uuid, size: Size(size))
    }
}
