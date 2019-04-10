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
//            print("Parse error: \(error.localizedDescription)")// Poner compile error
        }
    }
    
//    func runCode(input: String, vc: ViewController){
////        clearModels()
//
//        viewCont = vc
//
//        do {
//            let lexer = PreciseV5Lexer(ANTLRInputStream(input))
//            let tokens = CommonTokenStream(lexer)
//            let parser = try PreciseV5Parser(tokens)
//            let tree = try parser.preciseV5()
//
//            let walker = ParseTreeWalker()
//            let extractor = PreciseV5Walker.init()
//            try walker.walk(extractor, tree)
//        } catch {
//            print("Parse error: \(error.localizedDescription)")// Poner compile error
//        }
//    }
    
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
    
}




extension Heart {
    
    
    
    func enterPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){

        
    }
    
    func exitPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){
        print(DirectorioP)
    }
    
    func enterDeclare(_ ctx:PreciseV5Parser.DeclareContext){
    
    }
    
    func exitDeclare(_ ctx:PreciseV5Parser.DeclareContext){
        
        let nombreVar = ctx.ID()!.getText()
        let varType = getType(from: ctx.type()!)
        
        //Crear la tabla de variables
        let variable = Variables(nombreVar, varType, currentFunction, 123)
        
        //Agregar la tabla de variables al directorio de procedimientos
        DirectorioP.append(variable)
        
    }
    
    func enterType(_ ctx:PreciseV5Parser.TypeContext){
        
    }
    
    func exitType(_ ctx:PreciseV5Parser.TypeContext){
        
    }
    
    func enterArray(_ ctx:PreciseV5Parser.ArrayContext){
        
    }
    
    func exitArray(_ ctx:PreciseV5Parser.ArrayContext){
        
    }
    
    func enterBody(_ ctx:PreciseV5Parser.BodyContext){
        
    }
    
    func exitBody(_ ctx:PreciseV5Parser.BodyContext){
        
    }
    
    func enterEstatuto(_ ctx:PreciseV5Parser.EstatutoContext){
        
    }
    
    func exitEstatuto(_ ctx:PreciseV5Parser.EstatutoContext){
        
    }
    
    func enterExpresionbool(_ ctx:PreciseV5Parser.ExpresionboolContext){
        
    }
    
    func exitExpresionbool(_ ctx:PreciseV5Parser.ExpresionboolContext){
        
    }
    
    func enterFunction(_ ctx:PreciseV5Parser.FunctionContext){
        
        let nombreFuncion = ctx.ID().first!
        
//        print(nombreFuncion)
        
        currentFunction =  ctx.ID().first!.getText()
    }
    
    func exitFunction(_ ctx:PreciseV5Parser.FunctionContext){
        
    }
    
    func enterExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        
    }
    
    func exitExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        
    }
    
    func enterExp(_ ctx:PreciseV5Parser.ExpContext){
        
    }
    
    func exitExp(_ ctx:PreciseV5Parser.ExpContext){
        
    }
    
    func enterTermino(_ ctx:PreciseV5Parser.TerminoContext){
        
    }
    
    func exitTermino(_ ctx:PreciseV5Parser.TerminoContext){
        
    }
    
    func enterFactor(_ ctx:PreciseV5Parser.FactorContext){
        
    }
    
    func exitFactor(_ ctx:PreciseV5Parser.FactorContext){
        
    }
    
    func enterCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        
    }
    
    func exitCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        
    }
    
    func enterCiclo(_ ctx:PreciseV5Parser.CicloContext){
        
    }
    
    func exitCiclo(_ ctx:PreciseV5Parser.CicloContext){
        
    }
    
    func enterEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        
    }
    
    func exitEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        
    }
    
    func enterLectura(_ ctx:PreciseV5Parser.LecturaContext){
        
        
    }
    
    func exitLectura(_ ctx:PreciseV5Parser.LecturaContext){
        
    }
    
    func enterAsignacion(_ ctx:PreciseV5Parser.AsignacionContext){
        
    }
    
    func exitAsignacion(_ ctx:PreciseV5Parser.AsignacionContext){
        
        
        
        
        
        
    }
    
    func enterVarcte(_ ctx:PreciseV5Parser.VarcteContext){
        
    }
    
    func exitVarcte(_ ctx:PreciseV5Parser.VarcteContext){
      
    }
    
    func enterEveryRule(_ ctx:ParserRuleContext){
        
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext){
        
    }
    
    func visitTerminal(_ node: TerminalNode){
        
    }
    
    func visitErrorNode(_ node: ErrorNode){
        
    }
}





