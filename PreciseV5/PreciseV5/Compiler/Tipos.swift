//
//  Tipos.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 3/24/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


enum Tipo: Int {
    case Int = 1
    case Float = 2
    case Char = 3
    case Bool = 4
    case String = 5
    case Void = 6
    case Error = -1
    
    
    init(_ string: String){
        
        switch string.lowercased(){
        case "int":
            self = .Int
        case "float":
            self = .Float
        case "char":
            self = .Char
        case "bool":
            self = .Bool
        case "void":
            self = .Void
        case "mostrar":
            self = .String
        default:
            self = .Error
        }
    }
}
