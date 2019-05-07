//
//  MaquinaVirtual .swift
//  PreciseV5
//
//  Created by Miguel Bazán on 4/19/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation


// MARK: - Maquina Virtual
extension Heart{
    
    func Reinicio() {
        localMemory.reset()
        tempMemory.reset()
        globalMemory.reset()
        tempGlobalMemory.reset()
        
        localMemory.allocateArrays()
        tempMemory.allocateArrays()
        globalMemory.allocateArrays()
        tempGlobalMemory.allocateArrays()
    }
    
    //    MARK: - Funciones base para operaciones aritmeticas +, -, *, /
    
    func suma(leftAddres: Int, RightAddress: Int, temporal:Int){
        let (leftVal, leftType) = getValue(from: leftAddres)
        let (rightVal, rightType) = getValue(from: RightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL + numR, in: temporal)
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL + numR, in: temporal)
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL + numR, in: temporal)
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL + numR, in: temporal)
        }
        
    }
    func resta(leftAddres: Int, RightAddress: Int, temporal:Int){
        let (leftVal, leftType) = getValue(from: leftAddres)
        let (rightVal, rightType) = getValue(from: RightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL - numR, in: temporal)
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL - numR, in: temporal)
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL - numR, in: temporal)
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL - numR, in: temporal)
        }
        
    }
    func multiply(leftAddres: Int, RightAddress: Int, temporal:Int){
        let (leftVal, leftType) = getValue(from: leftAddres)
        let (rightVal, rightType) = getValue(from: RightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL * numR, in: temporal)
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL * numR, in: temporal)
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL * numR, in: temporal)
        }
        else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL * numR, in: temporal)
        }
        
    }
    func divide(leftAddres: Int, RightAddress: Int, temporal:Int){
        let (leftVal, leftType) = getValue(from: leftAddres)
        let (rightVal, rightType) = getValue(from: RightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL / numR, in: temporal)
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL / numR, in: temporal)
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL / numR, in: temporal)
        }
        else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL / numR, in: temporal)
        }
        
    }
    
    //    MARK: - Funciones base para: = , > , <, !=, ==
    
    func assign(leftAddress: Int, tempAddress: Int){
        let (leftVal, _) = getValue(from: leftAddress)
        save(leftVal, in: tempAddress)
    }
    
    func equal(leftAddress:Int, rightAddress:Int, temporal:Int){
        let (leftVal, leftType) = getValue(from: leftAddress)
        let (rightVal, rightType) = getValue(from: rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL == numR, in: temporal)
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL == numR, in: temporal)
        } else if leftType == .Char && rightType == .Char {
            let numL = leftVal as! Character
            let numR = rightVal as! Character
            
            save(numL == numR, in: temporal)
        } else if leftType == .Bool && rightType == .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL == numR, in: temporal)
        }
    }
    
    func notEqual(leftAddress:Int, rightAddress:Int, temporal:Int){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL != numR, in: temporal)
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL != numR, in: temporal)
        } else if leftType == .Char && rightType != .Char {
            let numL = leftVal as! Character
            let numR = rightVal as! Character
            
            save(numL != numR, in: temporal)
        } else if leftType == .Bool && rightType != .Bool {
            let numL = leftVal as! Bool
            let numR = rightVal as! Bool
            
            save(numL != numR, in: temporal)
        }
    }
    
    func lessThan(leftAddress:Int, rightAddress:Int, temporal:Int){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL < numR, in: temporal)
        } else if leftType == .Int && rightType == .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL < numR, in: temporal)
        } else if leftType == .Float && rightType == .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL < numR, in: temporal)
        } else if leftType == .Float && rightType == .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL < numR, in: temporal)
        }
    }
    
    func greatThan(leftAddress:Int, rightAddress:Int, temporal:Int){
        let (leftVal, leftType) = getValue(from:leftAddress)
        let (rightVal, rightType) = getValue(from:rightAddress)
        
        if leftType == .Int && rightType == .Int {
            let numL = leftVal as! Int
            let numR = rightVal as! Int
            
            save(numL > numR, in: temporal)
        } else if leftType == .Float && rightType != .Float {
            let numL = leftVal as! Float
            let numR = rightVal as! Float
            
            save(numL > numR, in: temporal)
        } else if leftType == .Int && rightType != .Float {
            let numL = Float(leftVal as! Int)
            let numR = rightVal as! Float
            
            save(numL > numR, in: temporal)
        } else if leftType == .Float && rightType != .Int {
            let numL = leftVal as! Float
            let numR = Float(rightVal as! Int)
            
            save(numL > numR, in: temporal)
        }
    }
    
    //    MARK: - Funciones para operadores AND y OR
    
    func andOperator(leftAddress:Int, rightAddress:Int, temporal:Int){
        //code
        let (leftVal, _) = getValue(from: leftAddress)
        let (rightVal, _) = getValue(from: rightAddress)
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        save(numL && numR, in: temporal)
    }
    
    func orOperator(leftAddress:Int, rightAddress:Int, temporal:Int){
        let (leftVal, _) = getValue(from: leftAddress)
        let (rightVal, _) = getValue(from: rightAddress)
        
        let numL = leftVal as! Bool
        let numR = rightVal as! Bool
        
        save(numL || numR, in: temporal)
    }
    
    //    MARK: - Funciones para cuadruplos de funciones GOTO, GOTOF, GOTOV, ERA, PARAM, ENDPROC, GOSUB
    func goTo(tempAddress: Int, quadIndex: inout Int) {
        quadIndex = tempAddress - 1 // al final le sumamos uno (por eso se le resta)
    }
    
    func goToFalse(leftAddress: Int, tempAddress:Int, quadIndex: inout Int) {
        let (leftVal, _) = getValue(from: leftAddress)
        
        if (!(leftVal as! Bool)){
            quadIndex = tempAddress - 1 // Aqui igual
        }
    }
    
    func era(leftAddress funcAddress:Int){
        comingFuncAddress.push(funcAddress)
        createNewFuncMemory()
    }
    
    func goSub(leftAddress funcAddress:Int, quadIndex: inout Int){
        saveCurrentMemory()
        addQuadToCallHistory(quadIndex)
        
        let function = getFuncWithAddress(funcAddress)
        
        _ = comingFuncAddress.pop()
        
        saveCurrentFuncAddress(funcAddress)
        
        quadIndex = function.quadAddress - 1
    }
    
    func param(leftAddress tempAddress:Int, tempAddress paramCount:Int){
        
        func getParamAddress(from paramIndex: Int) -> Int {
            
            func getParam(fromFunc function: Funcion, paramIndex: Int) -> Variables {
                let (_, varVal) = function.variables.first(where: {$1.paramIndex == paramIndex})!
                return varVal
            }
            
            let actualComingFuncAddress = comingFuncAddress.top()!
            let function = getFuncWithAddress(actualComingFuncAddress)
            let param = getParam(fromFunc: function, paramIndex: paramIndex)
            return param.address
        }
        
        let (tempVal, _) = getValue(from: tempAddress)
        let paramAddress = getParamAddress(from: paramCount-1)
        tempLocalMemory.save(tempVal, in: paramAddress)
        
    }
    
    func endProc(quadIndex: inout Int){
        quadIndex = getLastQuadFromCallHistory()
        deleteLastFuncAddress()
        recoverLastMemory()
    }
    
    func printOp(leftAddress:Int){
        let (outputVal, _) = getValue(from: leftAddress)
        let result = "\(outputVal)"
        output(result)
    }
    
    func verify(leftAddress: Int, tempAddress tempVal: Int, quadIndex: inout Int) {
        let (leftVal, _) = getValue(from: leftAddress)

        if (leftVal as! Int) >= tempVal {
            print("Error: Index in array is out of bounds")
            end(quadIndex: &quadIndex)
        }
    }
    
    func returnOp(leftAddress val: Int){
        let funcName = getCurrentFuncName()
        let globalReturnVar = functions[globalFunc]?.variables[funcName]
        let globalReturnAddress = (globalReturnVar?.address)!
        
        let (returnVal, _) = getValue(from: val)
        
        save(returnVal, in: globalReturnAddress)
    }
    
    func end(quadIndex: inout Int) {
        quadIndex = quadsCount
        sendResult()
    }
    
    
    func Maquina(){
        
        var Index = 0
        
        Reinicio()
        
        while Index < quadsCount {
            let cuad = cuadruplos[Index]
            
            switch cuad.op{
            case .Sum:
                suma(leftAddres: cuad.operandLeft!, RightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Sub:
                resta(leftAddres: cuad.operandLeft!, RightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Div:
                divide(leftAddres: cuad.operandLeft!, RightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Mult:
                multiply(leftAddres: cuad.operandLeft!, RightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Equal:
                equal(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .NotEqual:
                notEqual(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .GreaterThan:
                greatThan(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .LessThan:
                lessThan(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Assign:
                assign(leftAddress: cuad.operandLeft!, tempAddress: cuad.temp!)
            case .And:
                andOperator(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .Or:
                orOperator(leftAddress: cuad.operandLeft!, rightAddress: cuad.operandRight!, temporal: cuad.temp!)
            case .GoTo:
                goTo(tempAddress: cuad.temp!, quadIndex: &Index)
            case .GoToTrue:
                break
            case .GoToFalse:
                goToFalse(leftAddress: cuad.operandLeft!, tempAddress: cuad.temp!, quadIndex: &Index)
            case .GoSub:
                goSub(leftAddress: cuad.operandLeft!, quadIndex: &Index)
            case .ERA:
                era(leftAddress: cuad.operandLeft!)
            case .Param:
                param(leftAddress: cuad.operandLeft!, tempAddress: cuad.temp!)
            case .EndProc:
                endProc(quadIndex: &Index)
                break
            case .Print:
                printOp(leftAddress: cuad.operandLeft!)
            case .Verify:
                 verify(leftAddress: cuad.operandLeft!, tempAddress: cuad.temp!, quadIndex: &Index)
            case .Return:
                returnOp(leftAddress: cuad.operandLeft!)
            case .End:
                end(quadIndex: &Index)
            case .FalseBottomMark:
                break
            }
            Index += 1
        }
    }
}

    // MARK: - Funciones base de la maquina virtual
    extension Heart{
        
            func sendResult() {
                if errors.isEmpty {
                    vc.showResults(results: outputs, error: false)
                    print(outputs)
                } else {
                    vc.showResults(results: errors, error: true)
                    print(errors)
                }
            }
        
        //    MARK: - Funcion que agrega al stack de outputs
        func output(_ output: String) {
            if errors.isEmpty {
                outputs.append(output)
            }
        }
        //    MARK: - Funcion que agrega al stack de errores
        func error(_ error: String) {
            errors.append(error)
        }
    }
    
    extension Heart{
        
        func saveCurrentMemory() {
            localsHistory.push(localMemory)
            tempsHistory.push(tempMemory)
            
            localMemory = tempLocalMemory
            tempMemory = tempTempMemory
        }
        
        func createNewFuncMemory() {
            tempLocalMemory = localMemory
            tempTempMemory = tempMemory
            
            tempLocalMemory.reset()
            tempTempMemory.reset()
            tempLocalMemory.allocateArrays()
            tempTempMemory.allocateArrays()
        }
        
        func recoverLastMemory(){
            localMemory = localsHistory.pop()!
            tempMemory = tempsHistory.pop()!
        }
        
        func addQuadToCallHistory(_ quad: Int) {
            callsHistory.push(quad)
        }
        
        func getLastQuadFromCallHistory() -> Int {
            return callsHistory.pop()!
        }
        
        func saveCurrentFuncAddress(_ Int: Int) {
            funcAddressHistory.push(Int)
        }
        
        func getCurrentFunc() -> Funcion {
            let Int = funcAddressHistory.top()!
            return getFuncWithAddress(Int)
        }
        
        func getCurrentFuncName() -> String {
            let function = getCurrentFunc()
            
            if let funcName = functions.someKey(forValue: function) {
//                print(funcName)
            }
            
            return getFuncName(of: function)
        }
        
        func deleteLastFuncAddress() {
            _ = funcAddressHistory.pop()
        }
        
        func getFuncWithAddress(_ address: Int) -> Funcion {
            return functions.values.first(where: {$0.address == address})!
        }
}
