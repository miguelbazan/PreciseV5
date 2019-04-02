// Generated from PreciseV5.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link PreciseV5Parser}.
 */
public protocol PreciseV5Listener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#preciseV5}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPreciseV5(_ ctx: PreciseV5Parser.PreciseV5Context)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#preciseV5}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPreciseV5(_ ctx: PreciseV5Parser.PreciseV5Context)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#declare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclare(_ ctx: PreciseV5Parser.DeclareContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#declare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclare(_ ctx: PreciseV5Parser.DeclareContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType(_ ctx: PreciseV5Parser.TypeContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType(_ ctx: PreciseV5Parser.TypeContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#array}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArray(_ ctx: PreciseV5Parser.ArrayContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#array}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArray(_ ctx: PreciseV5Parser.ArrayContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBody(_ ctx: PreciseV5Parser.BodyContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBody(_ ctx: PreciseV5Parser.BodyContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#estatuto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEstatuto(_ ctx: PreciseV5Parser.EstatutoContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#estatuto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEstatuto(_ ctx: PreciseV5Parser.EstatutoContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#expresionbool}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpresionbool(_ ctx: PreciseV5Parser.ExpresionboolContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#expresionbool}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpresionbool(_ ctx: PreciseV5Parser.ExpresionboolContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#function}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunction(_ ctx: PreciseV5Parser.FunctionContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#function}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunction(_ ctx: PreciseV5Parser.FunctionContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpresion(_ ctx: PreciseV5Parser.ExpresionContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#expresion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpresion(_ ctx: PreciseV5Parser.ExpresionContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp(_ ctx: PreciseV5Parser.ExpContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp(_ ctx: PreciseV5Parser.ExpContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTermino(_ ctx: PreciseV5Parser.TerminoContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#termino}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTermino(_ ctx: PreciseV5Parser.TerminoContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFactor(_ ctx: PreciseV5Parser.FactorContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFactor(_ ctx: PreciseV5Parser.FactorContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#condicion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCondicion(_ ctx: PreciseV5Parser.CondicionContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#condicion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCondicion(_ ctx: PreciseV5Parser.CondicionContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#ciclo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCiclo(_ ctx: PreciseV5Parser.CicloContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#ciclo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCiclo(_ ctx: PreciseV5Parser.CicloContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#escritura}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEscritura(_ ctx: PreciseV5Parser.EscrituraContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#escritura}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEscritura(_ ctx: PreciseV5Parser.EscrituraContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#lectura}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLectura(_ ctx: PreciseV5Parser.LecturaContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#lectura}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLectura(_ ctx: PreciseV5Parser.LecturaContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#asignacion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAsignacion(_ ctx: PreciseV5Parser.AsignacionContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#asignacion}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAsignacion(_ ctx: PreciseV5Parser.AsignacionContext)
	/**
	 * Enter a parse tree produced by {@link PreciseV5Parser#varcte}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVarcte(_ ctx: PreciseV5Parser.VarcteContext)
	/**
	 * Exit a parse tree produced by {@link PreciseV5Parser#varcte}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVarcte(_ ctx: PreciseV5Parser.VarcteContext)
}