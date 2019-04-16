//
//  Memoria.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/9/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


struct Memory {
    
    // MARK: - Constantes
    private let intBase = 0
    private let floatBase = 1000
    private let charBase = 2000
    private let boolBase = 3000
    private let stringBase = 4000
    
    // MARK: - Estructuras de memoria
    private var ints: [Int?] = []
    private var floats: [Float?] = []
    private var chars: [Character?] = []
    private var bools: [Bool?] = []
    private var strings: [String?] = []
    
    private var baseAddress = 0
    
    // MARK: - Get Variables
    private var intStartAddress : Int {
        get {
            return baseAddress + intBase
        }
    }
    private var floatStartAddress : Int {
        get {
            return baseAddress + floatBase
        }
    }
    private var charStartAddress : Int {
        get {
            return baseAddress + charBase
        }
    }
    private var boolStartAddress : Int {
        get {
            return baseAddress + boolBase
        }
    }
    private var stringStartAddress : Int {
        get {
            return baseAddress + stringBase
        }
    }
    
    // MARK: - Init
    init(baseAddress: Int){
        self.baseAddress = baseAddress
    }
    
    // MARK: - Custom functions
    
    mutating func save(_ value: Any, in address: Int) {
        switch address {
        case ..<floatStartAddress:
            ints[address - intStartAddress] = value as? Int
        case ..<charStartAddress:
            floats[address - floatStartAddress] = value as? Float
        case ..<boolStartAddress:
            chars[address - charStartAddress] = value as? Character
        case ..<stringStartAddress:
            bools[address - boolStartAddress] = value as? Bool
        default:
            strings[address - stringStartAddress] = value as? String
        }
    }
    
    mutating func save(_ type: Tipo) -> Int {
        switch type {
        case .Int:
            return save(int: nil)
        case .Float:
            return save(float: nil)
        case .Char:
            return save(char: nil)
        case .Bool:
            return save(bool: nil)
        case .String:
            return save(string: nil)
        default:
            return -1
        }
    }
    
    mutating func reset() {
        ints.removeAll()
        floats.removeAll()
        chars.removeAll()
        bools.removeAll()
        strings.removeAll()
    }
    
    func getValue(from address: Int) -> (value: Any, type: Tipo) {
        switch address {
        case ..<floatStartAddress:
            return (ints[address - intStartAddress]!, .Int)
        case ..<charStartAddress:
            return (floats[address - floatStartAddress]!, .Float)
        case ..<boolStartAddress:
            return (chars[address - charStartAddress]!, .Char)
        case ..<stringStartAddress:
            return (bools[address - boolStartAddress]!, .Bool)
        default:
            return (strings[address - stringStartAddress]!, .String)
        }
    }
    
    mutating func save(int: Int?) -> Int {
        ints.append(int)
        return intStartAddress + ints.count - 1
    }
    
    mutating func save(float: Float?) -> Int {
        floats.append(float)
        return floatStartAddress + floats.count - 1
    }
    
    mutating func save(char: Character?) -> Int {
        chars.append(char)
        return charStartAddress + chars.count - 1
    }
    
    mutating func save(bool: Bool?) -> Int {
        bools.append(bool)
        return boolStartAddress + bools.count - 1
    }
    
    mutating func save(string: String?) -> Int {
        strings.append(string)
        return stringStartAddress + strings.count - 1
    }
    
}

