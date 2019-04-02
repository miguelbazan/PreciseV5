//
//  Cuadruplos.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation

class Cuadruplos {
    var op: Operator
    var operandLeft: Int?
    var operandRight: Int?
    var temp: Int?
    
    init(_ op: Operator,_ opLeft: Int?,_ opRight: Int?,_ temp: Int?) {
        self.op = op
        self.operandLeft = opLeft
        self.operandRight = opRight
        self.temp = temp
    }
}
