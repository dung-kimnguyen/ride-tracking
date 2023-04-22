//
//  XMLElement.swift
//  ride-tracking
//
//  Created by Dung Kim Nguyen on 02/07/2020.
//  Copyright © 2020 Dung Kim Nguyen. All rights reserved.
//

import Foundation

final class XMLElement: XMLNode {
    let name: String
    var attributes = [String: String]()
    var children = [XMLNode]()
    var value: String?

    init(_ name: String, attributes: [String: String] = [:], value: String? = nil) {
        self.name = name
        self.attributes = attributes
        self.value = value
    }
}
