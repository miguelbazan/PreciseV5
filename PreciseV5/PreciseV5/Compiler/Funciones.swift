//
//  Funciones.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/8/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation

struct Funcion: Equatable {
    
    
    // MARK: - Variables
    var returnType: Tipo!
    var address: Int!
    var quadAddress: Int!
    var variables = [String: Variables]()
    var paramsSecuence = [Tipo]() // used to know parameters of function
    
    
    // MARK: - Init function
    
    init(returnType: Tipo, address: Int, quadAddress: Int) {
        self.returnType = returnType
        self.address = address
        self.quadAddress = quadAddress
    }
    
    
    // MARK: - Equatable functions
    
    static func == (lhs: Funcion, rhs: Funcion) -> Bool {
        return lhs.address == rhs.address
    }
}


