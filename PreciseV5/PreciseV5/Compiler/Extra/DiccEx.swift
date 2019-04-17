//
//  DiccEx.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/16/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation

extension Dictionary where Value: Equatable {
    func someKey(forValue val: Value) -> Key? {
        return first(where: { $1 == val })?.key
    }
}
