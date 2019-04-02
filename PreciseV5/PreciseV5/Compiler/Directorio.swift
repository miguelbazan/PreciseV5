//
//  Directorio.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


struct Variable {
    var type: Tipo!
    var address: Int!
    var arrSize: Int?
    var paramIndex: Int?
    
    init(_ type: Tipo, _ address: Int, _ arrSize: Int? = nil, paramIndex: Int? = nil){
        self.type = type
        self.address = address
        self.arrSize = arrSize
        self.paramIndex = paramIndex
    }
}

struct Function: Equatable {
    
    
    // MARK: - Variables
    var returnType: Tipo!
    var address: Int!
    var quadAddress: Int!
    var variables = [String: Variable]()
    var paramsSecuence = [Tipo]() // used to know parameters of function
    
    
    // MARK: - Init function
    
    init(returnType: Tipo, address: Int, quadAddress: Int) {
        self.returnType = returnType
        self.address = address
        self.quadAddress = quadAddress
    }
    
    
    // MARK: - Equatable functions
    
    static func == (lhs: Function, rhs: Function) -> Bool {
        return lhs.address == rhs.address
    }
}
