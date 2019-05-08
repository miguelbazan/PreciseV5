//
//  Directorio.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


struct Variables {
    
    var tipo : Tipo!
    var address: Int!
    var arrSize: Int?
    var paramIndex: Int?
    
    init(_ tipo: Tipo,_ address: Int,_ arrSize: Int? = nil, _ paramIndex: Int? = nil){
        
        self.tipo = tipo
        self.address = address
        self.arrSize = arrSize
        self.paramIndex = paramIndex
        
    }
    
    

}

