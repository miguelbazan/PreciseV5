//
//  Directorio.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


struct Variables {
    
    var nombre : String!
    var tipo: Tipo!
    var scope: String!
    var address: Int!
    
    init(_ nombre: String,_ tipo: Tipo,_ scope: String,_ address: Int){
        
        self.nombre = nombre
        self.tipo = tipo
        self.scope = scope
        self.address = address
    }
    
    

    
    
//    var type: Tipo!
//    var address: Int!
//    var arrSize: Int?
//    var paramIndex: Int?
//
//    init(_ type: Tipo, _ address: Int, _ arrSize: Int? = nil, paramIndex: Int? = nil){
//        self.type = type
//        self.address = address
//        self.arrSize = arrSize
//        self.paramIndex = paramIndex
//    }
}

