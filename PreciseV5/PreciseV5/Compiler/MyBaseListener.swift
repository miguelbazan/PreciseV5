//
//  MyBaseListener.swift
//  PreciseV5
//
//  Created by Miguel Bazán on 3/20/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import Foundation
import Antlr4


class PreciseV5Walker: PreciseV5BaseListener {
    
    let wizard = Heart.shared
    
    
    
    
    override func enterPreciseV5(_ ctx: PreciseV5Parser.PreciseV5Context) {
        
        wizard.enterPreciseV5(ctx)
        
    }
    
   override func exitPreciseV5(_ ctx: PreciseV5Parser.PreciseV5Context) {
        
    wizard.exitPreciseV5(ctx)
        
    }
    
    override func enterDeclare(_ ctx: PreciseV5Parser.DeclareContext) {
        wizard.enterDeclare(ctx)
        
    }

    override func exitDeclare(_ ctx: PreciseV5Parser.DeclareContext) {
        wizard.exitDeclare(ctx)
    }
    
    
    override func enterType(_ ctx: PreciseV5Parser.TypeContext) {
        wizard.enterType(ctx)
    }
    
    override func exitType(_ ctx: PreciseV5Parser.TypeContext) {
        wizard.exitType(ctx)
    }
    
    
    override func enterArray(_ ctx: PreciseV5Parser.ArrayContext) {
        
        wizard.enterArray(ctx)
        
    }
    
    override func exitArray(_ ctx: PreciseV5Parser.ArrayContext) {
        wizard.exitArray(ctx)
    }
    
    override func enterBody(_ ctx: PreciseV5Parser.BodyContext) {
        wizard.enterBody(ctx)
    }
    
    override func exitBody(_ ctx: PreciseV5Parser.BodyContext) {
        wizard.exitBody(ctx)
    }
    
    override func enterEstatuto(_ ctx: PreciseV5Parser.EstatutoContext) {
        wizard.enterEstatuto(ctx)
    }
    
    override func exitEstatuto(_ ctx: PreciseV5Parser.EstatutoContext) {
        wizard.exitEstatuto(ctx)
    }
    
    override func enterExpresionbool(_ ctx: PreciseV5Parser.ExpresionboolContext) {
        wizard.enterExpresionbool(ctx)
    }
   
    override func exitExpresionbool(_ ctx: PreciseV5Parser.ExpresionboolContext) {
        wizard.exitExpresionbool(ctx)
    }
   
    override func enterFunction(_ ctx: PreciseV5Parser.FunctionContext) {
        wizard.enterFunction(ctx)
    }
    
    override func exitFunction(_ ctx: PreciseV5Parser.FunctionContext) {
        wizard.exitFunction(ctx)
    }
    
   
    override func enterExpresion(_ ctx: PreciseV5Parser.ExpresionContext) {
        wizard.enterExpresion(ctx)
    }
    
    override func exitExpresion(_ ctx: PreciseV5Parser.ExpresionContext) {
        wizard.exitExpresion(ctx)
    }
    
    override func enterExp(_ ctx: PreciseV5Parser.ExpContext) {
        wizard.enterExp(ctx)
        
    }
    
    override func exitExp(_ ctx: PreciseV5Parser.ExpContext) {
        wizard.exitExp(ctx)
    }
    
   
    override func enterTermino(_ ctx: PreciseV5Parser.TerminoContext) {
        wizard.enterTermino(ctx)
    }
  
    override func exitTermino(_ ctx: PreciseV5Parser.TerminoContext) {
        wizard.exitTermino(ctx)
    }
    
  
    override func enterFactor(_ ctx: PreciseV5Parser.FactorContext) {
        wizard.enterFactor(ctx)
    }
    
    override func exitFactor(_ ctx: PreciseV5Parser.FactorContext) {
        wizard.exitFactor(ctx)
    }
   
    override func enterCondicion(_ ctx: PreciseV5Parser.CondicionContext) {
        wizard.enterCondicion(ctx)
    }
   
    override func exitCondicion(_ ctx: PreciseV5Parser.CondicionContext) {
        wizard.exitCondicion(ctx)
    }
    
   
    override func enterCiclo(_ ctx: PreciseV5Parser.CicloContext) {
        wizard.enterCiclo(ctx)
    }
   
    override func exitCiclo(_ ctx: PreciseV5Parser.CicloContext) {
        wizard.exitCiclo(ctx)
    }
    
   
    override func enterEscritura(_ ctx: PreciseV5Parser.EscrituraContext) {
        wizard.enterEscritura(ctx)
    }
   
    override func exitEscritura(_ ctx: PreciseV5Parser.EscrituraContext) {
        wizard.exitEscritura(ctx)
    }
    
   
    override func enterLectura(_ ctx: PreciseV5Parser.LecturaContext) {
        wizard.enterLectura(ctx)
        
    }
  
    override func exitLectura(_ ctx: PreciseV5Parser.LecturaContext) {
        wizard.exitLectura(ctx)
    }
    
   
    override func enterAsignacion(_ ctx: PreciseV5Parser.AsignacionContext) {
        wizard.enterAsignacion(ctx)
    }
   
    override func exitAsignacion(_ ctx: PreciseV5Parser.AsignacionContext) {
        wizard.exitAsignacion(ctx)
    }
    
    override func enterVarcte(_ ctx: PreciseV5Parser.VarcteContext) {
        wizard.enterVarcte(ctx)
    }
    
    override func exitVarcte(_ ctx: PreciseV5Parser.VarcteContext) {
        wizard.exitVarcte(ctx)
    }
   
    
    
    
    
    
    
    
    
    
    
        //    Reglas fijas
    override func enterEveryRule(_ ctx: ParserRuleContext) {
        wizard.enterEveryRule(ctx)
    }
   
    override func exitEveryRule(_ ctx: ParserRuleContext) {
        wizard.exitEveryRule(ctx)
    }
   
    override func visitTerminal(_ node: TerminalNode) {
        wizard.visitTerminal(node)
    }
    
    override func visitErrorNode(_ node: ErrorNode) {
        wizard.visitErrorNode(node)
    }

    
    
}
