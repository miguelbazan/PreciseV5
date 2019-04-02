//
//  Stack.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation

struct Stack<T> {
    var array: [T] = []
    
    func top() -> T? {
        if !array.isEmpty {
            return array.last
        } else {
            return nil
        }
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    mutating func pop() -> T? {
        if !array.isEmpty {
            let index = array.count - 1
            let poppedValue = array.remove(at: index)
            return poppedValue
        } else {
            return nil
        }
    }
    
    mutating func removeAll() {
        array.removeAll()
    }
}
