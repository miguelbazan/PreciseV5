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
    
//    Cubo semantico
    var semanticCube : JSON!
    
//    Estructura de datos para los cuadruplos de tipo Cuadruplos
    var cuadruplos = [Cuadruplos]()
//    Variable para detener la ejecucion de la compilacion si hay error en alguna entrada o salida de gramatica
    var stop = false
//    Variable para saber si el scope es global o "local"
    var currentFunction = "global"
//    Variable para definir cuando el scope es global
    let globalFunc = "global"
//  Directorio de procedimientos de tipo Funcion
    var functions = [String: Funcion]()
    
//    Outputs para la maquina virtual
    var outputs: [String] = []
    
//    Array de los errores de la maquina virtual
    var errors: [String] = []
    
    
    
    //   MARK: - Constantes memoria en ejecucion
    
    let constantBaseAddress = 5000
    let globalBaseAddress = 10000
    let localBaseAddress = 15000
    let tempBaseAdress = 20000
    let tempGlobalAddress = 25000
    
    
    
// DIRECTORIO DE PROCECIMIENTOS DONDE GUARDAMOS TODO NO SE TE OLVIDE WEY
    var DirectorioP = [Variables]()
    //     IMPORTANTE!!!!!!!
    
    // Estructura de datos para los saltos pendientes en cuadruplos
    var jumps = Stack<Int>()
    var globalJumps = Stack<Int>()
    
    // pOper
    var operators = Stack<Operator>()
    
    // pTypes
    var types = Stack<Tipo>()
    
    /// Pila Operandos
    var operands = Stack<Int>()
    
    
    
    //    MARK: - Variables de memoria
    
    var constantMemory: Memory!
    var globalMemory: Memory!
    var localMemory: Memory!
    var tempMemory: Memory!
    
    var tempGlobalMemory: Memory!
    var tempLocalMemory: Memory!
    var tempTempMemory: Memory!
    
    //    MARK: - Funcion para contar los cuadruplos
    var quadsCount: Int {
        get {
            return cuadruplos.count
        }
    }
    //    MARK: - Funcion para revisar si estamos en global o local
    var isGlobal: Bool {
        get {
            return currentFunction == globalFunc
        }
    }
    //    MARK: - Funcion para inicializar el cubo semantico
        init(){
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
    
    //    MARK: - Funcion para inicializar memoria y limpiar todas las estructuras de datos
    func clearModels() {
        cuadruplos.removeAll()
        
        stop = false
        
        currentFunction = globalFunc
        
        functions.removeAll()
        globalJumps.removeAll()
        jumps.removeAll()
        types.removeAll()
        operands.removeAll()
        
        constantMemory = Memory(baseAddress: constantBaseAddress)
        globalMemory = Memory(baseAddress: globalBaseAddress)
        localMemory = Memory(baseAddress: localBaseAddress)
        tempMemory = Memory(baseAddress: tempBaseAdress)
        tempGlobalMemory = Memory(baseAddress: tempGlobalAddress)
        
        outputs.removeAll()
        errors.removeAll()
        
        functions[currentFunction] = Funcion(returnType: .Void, address: -1, quadAddress: -1)
    }
    
    //    MARK: - Funcion para inicializar el Lexer y Parser de ANTLR4
    func runCode(input: String){
        
        clearModels()
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
    

    
    // MARK: - Manejo de cuadruplos
    
    
    
    /// - Parameters:
    ///   - op: Operator
    ///   - opL: Left Operand
    ///   - opR: Right Operand
    ///   - temp: Temp var \ Sometimes direction for some instructions
    
    
    // MARk: - Funciones del cubo semantico
    
    func getResultType(_ left: Type, _ right: Type, _ oper: Operator) -> Tipo {
        let rawType = semanticCube[String(left.rawValue)][String(right.rawValue)][String(oper.rawValue)].int!
        return Tipo(rawValue: rawType)!
    }
    
    private func addQuad(_ op: Operator, _ opL: Int?, _ opR: Int?, _ temp: Int?){
        
        let quad = Cuadruplos(op, opL, opR, temp)
        cuadruplos.append(quad)
    }
    
    //    MARK: - Funcion para mostrar el compile error y detener la compilacion
//    func compileError(_ message: String) {
//        ViewController.showCompileError(message)
//        stop = true
//    }
    
    // MARK: - Funcion para agregar memoria y tipo a sus respectivas estructuras d datos
    func addOperandToStacks(address: Int, type: Tipo) {
        operands.push(address)
        types.push(type)
    }
    //    MARK: - Funcion que retorna el operando y el tipo de las pilas respectivas
    func getOperandAndType() -> (operand: Int, type: Tipo) {
        let operand = operands.pop()!
        let type = types.pop()!
        return (operand, type)
    }
    
    // MARK: - Funcion que retorna la respuesta del cubo semantico
    
    func getResultType(_ left: Tipo, _ right: Tipo, _ oper: Operator) -> Tipo {
        let rawType = semanticCube[String(left.rawValue)][String(right.rawValue)][String(oper.rawValue)].int!
        return Tipo(rawValue: rawType)!
    }
    
  
    //    MARK: - Funcion para llenar el GoTo faltante en los cuadruplos
    
    private func fillGoTo(_ quadToFill: Int, with direction: Int) {
        cuadruplos[quadToFill].temp = direction
    }
    
    // MARK: - Funciones para traer el texto explicito del ctx
    
    func getTexto(from node: TerminalNode ) -> String {
        return (node.getSymbol()?.getText())!
    }
    //    MARK: - Funcion para retornar el tipo de dato segun lo obtenido en el token
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
    //    MARK: - Funcion para retornar si el tipo de la funcion es void o tiene return
    func getReturnType(from functionCtx: PreciseV5Parser.FunctionContext) -> Tipo {
        return (functionCtx.VOID() != nil) ? .Void : getType(from: functionCtx.type().last!)
    }
    //    MARK: - Funcion que retorna la direccion de memoria de temporales
    func getTempAddress(forType type: Tipo) -> Int {
        if isGlobal {
            return tempGlobalMemory.save(type)
        } else {
            return tempMemory.save(type)
        }
    }
    //    MARK: - Funcion que agrega a los cuadruplos el respectivo cuadruplo
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

    // MARK: - Seccion de funciones para le manejo de la memoria
extension Heart {
    
    //    MARK: - Funcion para poner en ceros la memoria local y temporal
    func resetLocalMemory() {
        localMemory.reset()
        tempMemory.reset()
    }
    //    MARK: -
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
    

    //    MARK: - Funcion para verificar las variables existan en el directorio de procedimientos y si no existe retorna error
    func getVariable(withId id: String) -> Variables? {
        if let idVar = functions[currentFunction]?.variables[id] {
            return idVar
        } else if let idVar = functions[globalFunc]?.variables[id] {
            return idVar
        } else {
//         compileError("Variable '\(id)' does not exists")
            print("Variable '\(id)' does not exists")
            return nil
        }
    
    }
    
    //    MARK: - Funcion utilizada para imprimir los cuadruplos
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
    //MARK: - Funciones ctx, entrada y salida a las producciones de la gramatica
extension Heart {
    
    
    func enterPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){
        if stop {return}
        
    }
    
    func exitPreciseV5(_ ctx:PreciseV5Parser.PreciseV5Context){
        
        if stop {return}
        
        if let globalJumps = globalJumps.pop(){
            
            fillGoTo(globalJumps, with: quadsCount)
        }
        addQuad(.End, nil, nil, nil)
        printQuads()
    }
    
    func enterDeclare(_ ctx:PreciseV5Parser.DeclareContext){
        if stop {return}
    }
    
    func exitDeclare(_ ctx:PreciseV5Parser.DeclareContext){
        if stop {return}
        
        let nombreVariable = getTexto(from: ctx.ID()!)
        if (functions[currentFunction]?.variables.keys.contains(nombreVariable))!{
            print("La variable '\(nombreVariable)'ya existe")
            return
        }
        
        let varType = getType(from: ctx.type()!)
        
        let varAddress = isGlobal ? globalMemory.save(varType) : localMemory.save(varType)
        let variable = Variables(varType, varAddress)
        functions[currentFunction]?.variables[nombreVariable] = variable
        print("jalo")
//        print(functions)
        
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
        
        if currentFunction == globalFunc{
            if let globalJump = globalJumps.pop(){
                fillGoTo(globalJump, with: quadsCount)
            }
        }
        
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
    }
    
    func exitFunction(_ ctx:PreciseV5Parser.FunctionContext){
        if stop {return}
    }
    
    func enterExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        if stop {return}
    }
    
    func exitExpresion(_ ctx:PreciseV5Parser.ExpresionContext){
        if stop {return}
        
        if let operador = operators.top(){
            
            switch operador{
                
            case .And, .Or:
                addExprQuad()
            default:
                break
            }
        }
    }
    
    func enterExp(_ ctx:PreciseV5Parser.ExpContext){
        if stop {return}
    }
    
    func exitExp(_ ctx:PreciseV5Parser.ExpContext){
        if stop {return}
        
        if let operador = operators.top(){
            
            switch operador{
                
            case .LessThan, .GreaterThan, .Equal, .NotEqual:
                addExprQuad()
            default:
                break
            }
        }
    }
    
    func enterTermino(_ ctx:PreciseV5Parser.TerminoContext){
        if stop {return}
    }
    
    func exitTermino(_ ctx:PreciseV5Parser.TerminoContext){
        if stop {return}
        
        if let operador = operators.top(){
            
            switch operador{
                
            case .Sum, .Sub:
                addExprQuad()
            default:
                break
            }
        }
    }
    
    func enterFactor(_ ctx:PreciseV5Parser.FactorContext){
        if stop {return}
        
        if ctx.LPAREN() != nil{
            
            operators.push(.FalseBottomMark)
        }
    }
    
    func exitFactor(_ ctx:PreciseV5Parser.FactorContext){
        if stop {return}
        
        if ctx.RPAREN() != nil{
            _ = operators.pop()
        }
        
        if let operador = operators.top(){
            
            switch operador{
                
            case .Mult, .Div:
                addExprQuad()
            default:
                break
            }
        }
    }
    
    func enterCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        if stop {return}
    }
    
    func exitCondicion(_ ctx:PreciseV5Parser.CondicionContext){
        if stop {return}
        
        let goto = jumps.pop()
        fillGoTo(goto!, with: quadsCount)
    }
    
    func enterCiclo(_ ctx:PreciseV5Parser.CicloContext){
        if stop {return}
        
        jumps.push(quadsCount)
    }
    
    func exitCiclo(_ ctx:PreciseV5Parser.CicloContext){
        if stop {return}
        
        let goto = jumps.pop()
        let dir = jumps.pop()
        addQuad(.GoTo, nil, nil, dir)
        fillGoTo(goto!, with: quadsCount)
    }
    
    func enterEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        if stop {return}
    }
    
    func exitEscritura(_ ctx:PreciseV5Parser.EscrituraContext){
        if stop {return}
        
        if let textNode = ctx.TEXT() {
            let sentence = getTexto(from: textNode)
            
            if let sentenceAddress = constantMemory.find(string: sentence){
                addOperandToStacks(address: sentenceAddress, type: .String)
                addQuad(.Print, sentenceAddress, nil, nil)
            } else {
                let sentenceAddress = constantMemory.save(string: sentence)
                addQuad(.Print, sentenceAddress, nil, nil)
            }
        } else {
            let (operando, _) = getOperandAndType()
            addQuad(.Print, operando, nil, nil)
        }
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
        
        if ctx.ID() != nil {
            let id = getTexto(from: ctx.ID()!)
            
            guard let variable = getVariable(withId: id) else {return}
            addOperandToStacks(address: variable.address, type: variable.tipo)
            print(operands)
            print(types)
            
        }
        
        let (resultValue,resultType) = getOperandAndType()
        let (idValue,idType) = getOperandAndType()
        
//        Preguntar al cubo semantico si se puede o no
        let assignType = getResultType(idType, resultType, .Assign)
        if assignType == .Error{
            print("No se puede asignar la expresion de tipo '\(resultType)'")
        } else{
//            Estos esta al revez para que si jale, pero debe ser .Assign, resultValue, nil, idValue
            addQuad(.Assign, idValue, nil, resultValue)
            print("se agrego")
        }
    }
    
    func enterVarcte(_ ctx:PreciseV5Parser.VarcteContext){
        if stop {return}
        
        if let idNode = ctx.ID() {
            let id = getTexto(from: idNode)
            guard let idVar = getVariable(withId: id) else {return}
            addOperandToStacks(address: idVar.address, type: idVar.tipo)
        }
        
        if let floatNode = ctx.CTEFLOAT(){
            let float = Float(getTexto(from: floatNode))!
            
            if let floatAddress = constantMemory.find(float: float){
                addOperandToStacks(address: floatAddress, type: .Float)
            }else{
                let floatAddress = constantMemory.save(float: float)
                addOperandToStacks(address: floatAddress, type: .Float)
            }
        } else if let intNode = ctx.CTEINT(){
            
            let int = Int(getTexto(from: intNode))!
            
            if let intAddress = constantMemory.find(int: int){
                addOperandToStacks(address: intAddress, type: .Int)
            }else{
                let intAddress = constantMemory.save(int: int)
                addOperandToStacks(address: intAddress, type: .Int)
            }
        } else if let charNode = ctx.CTECHAR() {
            
            let charText = getTexto(from: charNode)
            let char = Character(charText[1])
            
            if let charAddress = constantMemory.find(char: char){
                addOperandToStacks(address: charAddress, type: .Char)
            } else {
                let charAddress = constantMemory.save(char: char)
                addOperandToStacks(address: charAddress, type: .Char)
            }
        }
//            else {
//
//            let boolText = ctx.getText()
//
//            let bool = boolText == "true" ? true : false
//
//            if let boolAddres = constantMemory.find(bool: bool){
//                addOperandToStacks(address: boolAddres, type: .Bool)
//            } else {
//                let boolAddress = constantMemory.save(bool: bool)
//                addOperandToStacks(address: boolAddress, type: .Bool)
//            }
//            }
    }
    
    func exitVarcte(_ ctx:PreciseV5Parser.VarcteContext){
        if stop {return}
    }
    
    func enterPnCond(_ ctx: PreciseV5Parser.PnCondContext) {
        if stop {return}
        
        let parent = ctx.parent as! PreciseV5Parser.ExpresionboolContext
        
        let operador: Operator = parent.AND() != nil ? .And : .Or
        
        operators.push(operador)
    }
  
    func exitPnCond(_ ctx: PreciseV5Parser.PnCondContext) {
        if stop {return}
    }

    func enterPnEq(_ ctx: PreciseV5Parser.PnEqContext) {
        if stop {return}
        
        let parent = ctx.parent as! PreciseV5Parser.ExpresionContext
        let operador : Operator
        
        if parent.LTHAN() != nil{
            operador = .LessThan
        } else if parent.GTHAN() != nil{
            operador = .GreaterThan
        } else if parent.EQUAL() != nil {
            operador = .Equal
        } else{
            operador = .NotEqual
        }
        
        operators.push(operador)
        
    }
   
    func exitPnEq(_ ctx: PreciseV5Parser.PnEqContext) {
        if stop {return}
        
    }
    
    func enterPnSA(_ ctx: PreciseV5Parser.PnSAContext) {
        if stop {return}
        
        print("Entro pnSA")
        
        let parent = ctx.parent as! PreciseV5Parser.ExpContext
        
        let operador : Operator = parent.PLUS() != nil ? .Sum : .Sub
        
        operators.push(operador)
    }
   
    func exitPnSA(_ ctx: PreciseV5Parser.PnSAContext) {
        if stop {return}
    }
    
   
    func enterPnDM(_ ctx: PreciseV5Parser.PnDMContext) {
        if stop {return}
        
        let parent = ctx.parent as! PreciseV5Parser.TerminoContext
        
        let operador : Operator = parent.MUL() != nil ? .Mult : .Div
        
        operators.push(operador)
        
    }
    
    func exitPnDM(_ ctx: PreciseV5Parser.PnDMContext) {
        if stop {return}
    }
    
    func enterPnIfWh(_ ctx: PreciseV5Parser.PnIfWhContext) {
        if stop {return}
        
        let expresionType = types.pop()
        
        if (expresionType != .Bool){
            print("Type mismatch")
        }else {
            let resultado = operands.pop()
            jumps.push(quadsCount)
            addQuad(.GoToFalse, resultado, nil, nil)
        }
    }
  
    func exitPnIfWh(_ ctx: PreciseV5Parser.PnIfWhContext) {
        if stop {return}
    }

    func enterPnElse(_ ctx: PreciseV5Parser.PnElseContext) {
        if stop {return}
        
        addQuad(.GoTo, nil, nil, nil)
        let goto = jumps.pop()
        jumps.push(quadsCount - 1)
        fillGoTo(goto!, with: quadsCount)
    }
    
    func exitPnElse(_ ctx: PreciseV5Parser.PnElseContext) {
        if stop {return}
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
