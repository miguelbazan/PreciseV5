//
//  Heart.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/1/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation
import SwiftyJSON
import Antlr4


class Heart {
    
//    Singleton
    static let shared = Heart()
    
    var semanticCube : JSON!
    
    var cuadruplos = [Cuadruplos]()
    
    var stop = false
    
    var currentFunction = "global"
    
    let globalFunc = "global"
    
    var functions = [String:Funcion]()
    
    
    
    //   MARK: - Constantes memoria
    
    let constantBaseAddress = 3000
    let globalBaseAddress = 6000
    let localBaseAddress = 9000
    let tempBaseAdress = 12000
    let tempGlobalAddress = 15000
    
    
    
// DIRECTORIO DE PROCECIMIENTOS DONDE GUARDAMOS TODO NO SE TE OLVIDE WEY
    var DirectorioP = [Variables]()
    //     IMPORTANTE!!!!!!!
    
    // Brincos pendientes
    var jumps = Stack<Int>()
    var globalJumps = Stack<Int>()
    
    // pOper
    var operators = Stack<Operator>()
    
    // pTypes
    var types = Stack<Tipo>()
    
    /// PilaOperandos
    var operands = Stack<Int>()
    
    
    
    //    MARK: - Variables de memoria
    
    var constantMemory: Memory!
    var globalMemory: Memory!
    var localMemory: Memory!
    var tempMemory: Memory!
    
    var tempGlobalMemory: Memory!
    var tempLocalMemory: Memory!
    var tempTempMemory: Memory!
    
    
    
    
//    var viewCont = ViewController!

    
    var quadsCount: Int {
        get {
            return cuadruplos.count
        }
    }
    
    var isGlobal: Bool {
        get {
            return currentFunction == globalFunc
        }
    }
    
    func setup(){
        if let path = Bundle.main.path(forResource: "CuboSemantico", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                semanticCube = jsonObj["semanticCube"]
            } catch let error {
                print("Parse error \(error.localizedDescription)") // Poner funcion de compile error
            }
        } else {
            print("Couldn't find semanticCube") // Aqui tambien
            
        }
        
        
    }
    
    
    func runCode(input: String){
        
        do {
            let lexer = PreciseV5Lexer(ANTLRInputStream(input))
            let tokens = CommonTokenStream(lexer)
            let parser = try PreciseV5Parser(tokens)
            let tree = try parser.preciseV5()
            let walker = ParseTreeWalker()
            let extractor = PreciseV5Walker.init()
            try walker.walk(extractor, tree)
        } catch {
           print("Parse error: \(error.localizedDescription)")  // Poner compile error
        }
    }
    

    
    // MARK: - Manage Quadruples
    
    /// Create a Quad and add it to the quadruples array
    ///
    /// - Parameters:
    ///   - op: Operator
    ///   - opL: Left Operand
    ///   - opR: Right Operand
    ///   - temp: Temp var \ Sometimes direction for some instructions
    
    
    // MARk: - Semantic cube functions
    
    func getResultType(_ left: Type, _ right: Type, _ oper: Operator) -> Tipo {
        let rawType = semanticCube[String(left.rawValue)][String(right.rawValue)][String(oper.rawValue)].int!
        return Tipo(rawValue: rawType)!
    }
    
    private func addQuad(_ op: Operator, _ opL: Int?, _ opR: Int?, _ temp: Int?){
        
        let quad = Cuadruplos(op, opL, opR, temp)
        cuadruplos.append(quad)
    }
    
//    func compileError(_ message: String) {
//        editorVC.showCompileError(message)
//        stop = true
//    }
    
    // MARK: - Manage Stacks
    func addOperandToStacks(address: Int, type: Tipo) {
        operands.push(address)
        types.push(type)
    }
    
    func getOperandAndType() -> (operand: Int, type: Tipo) {
        let operand = operands.pop()!
        let type = types.pop()!
        return (operand, type)
    }
    
    // MARK: - Semantic cube functions
    
    func getResultType(_ left: Tipo, _ right: Tipo, _ oper: Operator) -> Tipo {
        let rawType = semanticCube[String(left.rawValue)][String(right.rawValue)][String(oper.rawValue)].int!
        return Tipo(rawValue: rawType)!
    }
    
    /// Fill the quad with direction
    ///
    /// - Parameters:
    ///   - quadToFill: index of the quad, in quadruples array, to fill with the direction
    ///   - direction: direction to fill to the quad
    private func fillGoTo(_ quadToFill: Int, with direction: Int) {
        cuadruplos[quadToFill].temp = direction
    }
    
    // MARK: - CTX functions
    
    func getTexto(from node: TerminalNode ) -> String {
        return (node.getSymbol()?.getText())!
    }
    
    func getType(from ctx: PreciseV5Parser.TypeContext) -> Tipo {
        
        if ctx.INT() != nil {
            return .Int
        } else if ctx.FLOAT() != nil {
            return .Float
        } else if ctx.BOOL() != nil {
            return .Bool
        } else if ctx.CHAR() != nil {
            return .Char
        }
        
        return .Void
    }
    
    func getReturnType(from functionCtx: PreciseV5Parser.FunctionContext) -> Tipo {
        return (functionCtx.VOID() != nil) ? .Void : getType(from: functionCtx.type().last!)
    }
    
    func getTempAddress(forType type: Tipo) -> Int {
        if isGlobal {
            return tempGlobalMemory.save(type)
        } else {
            return tempMemory.save(type)
        }
    }
    
    func addExprQuad(){
        let (opR, typeR) = getOperandAndType()
        let (opL, typeL) = getOperandAndType()
        let oper = operators.pop()!
        
        let resultType = getResultType(typeL, typeR, oper)
        
        if resultType != .Error {
            let resultAddress = getTempAddress(forType: resultType)
            addQuad(oper, opL, opR, resultAddress)
            addOperandToStacks(address: resultAddress, type: resultType)
        } else {
            print("Type mismatch")
        }
    
    }
}

// MARK: - Memory handling functions
extension Heart {
    
    func resetLocalMemory() {
        localMemory.reset()
        tempMemory.reset()
    }
    
    func getParamType(from funcName: String, paramNum: Int) -> Tipo {
        if let type = functions[funcName]?.paramsSecuence[paramNum-1] {
            return type
        }
        return .Error
    }
    
    func getFuncAddress(with funcName: String) -> Int {
        if let address = functions[funcName]?.address {
            return address
        }
        return -1
    }
    
//    func save(_ value: Any, in address: Int) {
//        switch address {
//        case ..<0:
//            let (arrayAddress,_) = getValue(from: -address)
//            //            return getValue(from: arrayAddress as! Address)
//            save(value, in: arrayAddress as! Int)
//        case ..<constantBaseAddress:
//            let function = getFuncWithAddress(address)
//            let funcName = getFuncName(of: function)
//            let globalReturnVar = functions[funcName]?.variables[funcName]
//            let globalReturnAddress = (globalReturnVar?.address)!
//            save(value, in: globalReturnAddress)
//        case ..<globalBaseAddress:
//            constantsMemory.save(value, in: address)
//        case ..<localBaseAddress:
//            globalMemory.save(value, in: address)
//        case ..<tempBaseAddress:
//            localMemory.save(value, in: address)
//        case ..<tempGlobalAddress:
//            tempMemory.save(value, in: address)
//        default:
//            tempGlobalMemory.save(value, in: address)
//        }
//    }
    
//    func getFuncName(of function: Function) -> String {
//        return functions.someKey(forValue: function)!
//    }
    
//    func getValue(from address: Address) -> (value: Any, type: Type) {
//
//        switch address {
//        case ..<0:
//            let (arrayAddress,_) = getValue(from: -address)
//            return getValue(from: arrayAddress as! Address)
//        case ..<constantsBaseAddress:
//            let function = getFuncWithAddress(address)
//            let funcName = getFuncName(of: function)
//            let globalReturnVar = functions[globalFunc]?.variables[funcName]
//            let globalReturnAddress = (globalReturnVar?.address)!
//
//            return getValue(from: globalReturnAddress)
//        case ..<globalBaseAddress:
//            return constantsMemory.getValue(from: address)
//        case ..<localBaseAddress:
//            return globalMemory.getValue(from: address)
//        case ..<tempBaseAddress:
//            return localMemory.getValue(from: address)
//        case ..<tempGlobalAddress:
//            return tempMemory.getValue(from: address)
//        default:
//            return tempGlobalMemory.getValue(from: address)
//        }
//    }

    
    func getVariable(withId id: String) -> Variables? {
        if let idVar = functions[currentFunction]?.variables[id] {
            return idVar
        } else if let idVar = functions[globalFunc]?.variables[id] {
            return idVar
        } else {
//            compileError("Variable '\(id)' does not exists")
            print("Variable '\(id)' does not exists")
            return nil
        }
        
    }
    
    func printQuads() {
        
        func formatNumber(_ string: String) -> String{
            var str = string
            let length = str.count
            let new = 6 - length
            
            for _ in 0..<new {
                str.insert(" ", at: str.startIndex)
            }
            
            return str
        }
        
        print("#  Operators   Left   Right  Temp  ")
        print("-----------------------------------")
        for index in 0..<quadsCount {
            let quad = cuadruplos[index]
            
            var indexString = "\(index)"
            var op = "\(quad.op)"
            var left = quad.operandLeft?.description ?? "_____"
            var right = quad.operandRight?.description ?? "_____"
            var temp = quad.temp?.description ?? "_____"
            
            let length = op.count
            if length != 11 {
                let new = 11 - length
                for _ in 1...new {
                    op += " "
                }
            }
            
            let newIndexString = indexString + " "
            indexString = indexString.count == 1 ? newIndexString : indexString
            left = formatNumber(left)
            right = formatNumber(right)
            temp = formatNumber(temp)
            
            print(indexString, op, left, right, temp)
            
        }
    }
}

extension Heart {
    
    
    
    func enterPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){

        if stop {return}
    }
    
    func exitPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){
        
        if stop {return}
        print(DirectorioP)
    }
    
    func enterDeclare(_ ctx:PreciseV5Parser.DeclareContext){
    
        if stop {return}
    }
    
    func exitDeclare(_ ctx:PreciseV5Parser.DeclareContext){
        
        if stop {return}
        
        let nombreVar = ctx.ID()!.getText()
        let varType = getType(from: ctx.type()!)
        
        //Crear la tabla de variables
        let variable = Variables(nombreVar, varType, currentFunction, 123)
        
        //Agregar la tabla de variables al directorio de procedimientos
        DirectorioP.append(variable)
        
    }
    
    func enterType(_ ctx:PreciseV5Parser.TypeContext){
        if stop {return}
    }
    
    func exitType(_ ctx:PreciseV5Parser.TypeContext){
        if stop {return}
    }
    
    func enterArray(_ ctx:PreciseV5Parser.ArrayContext){
        if stop {return}
    }
    
    func exitArray(_ ctx:PreciseV5Parser.ArrayContext){
        if stop {return}
    }
    
    func enterBody(_ ctx:PreciseV5Parser.BodyContext){
        if stop {return}
    }
    
    func exitBody(_ ctx:PreciseV5Parser.BodyContext){
        if stop {return}
    }
    
    func enterEstatuto(_ ctx:PreciseV5Parser.EstatutoContext){
        if stop {return}
    }
    
    func exitEstatuto(_ ctx:PreciseV5Parser.EstatutoContext){
        if stop {return}
    }
    
    func enterExpresionbool(_ ctx:PreciseV5Parser.ExpresionboolContext){
        if stop {return}
    }
    
    func exitExpresionbool(_ ctx:PreciseV5Parser.ExpresionboolContext){
        if stop {return}
    }
    
    func enterFunction(_ ctx:PreciseV5Parser.FunctionContext){
        
        if stop {return}
        
        let nombreFuncion = ctx.ID().first!
        
        print(nombreFuncion)
        
        currentFunction =  ctx.ID().first!.getText()
    }
    
    func exitFunction(_ ctx:PreciseV5Parser.FunctionContext){
        if stop {return}
    }
    
    func enterExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        if stop {return}
    }
    
    func exitExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        if stop {return}
    }
    
    func enterExp(_ ctx:PreciseV5Parser.ExpContext){
        if stop {return}
    }
    
    func exitExp(_ ctx:PreciseV5Parser.ExpContext){
        if stop {return}
    }
    
    func enterTermino(_ ctx:PreciseV5Parser.TerminoContext){
        if stop {return}
    }
    
    func exitTermino(_ ctx:PreciseV5Parser.TerminoContext){
        if stop {return}
    }
    
    func enterFactor(_ ctx:PreciseV5Parser.FactorContext){
        if stop {return}
    }
    
    func exitFactor(_ ctx:PreciseV5Parser.FactorContext){
        if stop {return}
    }
    
    func enterCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        if stop {return}
    }
    
    func exitCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        if stop {return}
    }
    
    func enterCiclo(_ ctx:PreciseV5Parser.CicloContext){
        if stop {return}
    }
    
    func exitCiclo(_ ctx:PreciseV5Parser.CicloContext){
        if stop {return}
    }
    
    func enterEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        if stop {return}
    }
    
    func exitEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        if stop {return}
    }
    
    func enterLectura(_ ctx:PreciseV5Parser.LecturaContext){
        
        if stop {return}
    }
    
    func exitLectura(_ ctx:PreciseV5Parser.LecturaContext){
        if stop {return}
    }
    
    func enterAsignacion(_ ctx:PreciseV5Parser.AsignacionContext){
        if stop {return}
    }
    
    func exitAsignacion(_ ctx:PreciseV5Parser.AsignacionContext){
        
        if stop {return}
        
        
        
        
    }
    
    func enterVarcte(_ ctx:PreciseV5Parser.VarcteContext){
        if stop {return}
    }
    
    func exitVarcte(_ ctx:PreciseV5Parser.VarcteContext){
        if stop {return}
    }
    
    
    
    
    
    
    
    
    // MARK: - Nodes and rules
    func enterEveryRule(_ ctx:ParserRuleContext){
        
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext){
        
    }
    
    func visitTerminal(_ node: TerminalNode){
        
    }
    
    func visitErrorNode(_ node: ErrorNode){
        
    }
}





