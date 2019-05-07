//
//  Archivo.swift
//  
//
//  Created by Miguel Bazán on 5/6/19.
//

import UIKit

class Archivo: NSObject {
    
    var nombre : String = ""
    var code : String =  ""
    
    override init() {
        self.nombre = ""
        self.code = ""
    }
    
    init(nombre: String, code: String)
    {
        self.nombre = nombre
        self.code = code
    }

}
