// Generated from PreciseV5.g4 by ANTLR 4.7.2
import Antlr4

open class PreciseV5Parser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PreciseV5Parser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(PreciseV5Parser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, PROGRAM = 1, VAR = 2, FUNCTION = 3, END = 4, MAIN = 5, 
                 IF = 6, ELSE = 7, PRINT = 8, READ = 9, WHILE = 10, INT = 11, 
                 FLOAT = 12, CHAR = 13, BOOL = 14, VOID = 15, COLON = 16, 
                 SCOLON = 17, COMA = 18, DOT = 19, RPAREN = 20, LPAREN = 21, 
                 RBRA = 22, LBRA = 23, RCBRA = 24, LCBRA = 25, PLUS = 26, 
                 MIN = 27, DIV = 28, MUL = 29, MOD = 30, GTHAN = 31, LTHAN = 32, 
                 GRTHAN = 33, LSTHAN = 34, NOTEQUAL = 35, EQUAL = 36, AND = 37, 
                 OR = 38, ASSIGN = 39, TRUE = 40, FALSE = 41, CTEINT = 42, 
                 CTEFLOAT = 43, CTEBOOL = 44, CTECHAR = 45, ID = 46, BSPACE = 47
	}

	public
	static let RULE_preciseV5 = 0, RULE_declare = 1, RULE_type = 2, RULE_array = 3, 
            RULE_body = 4, RULE_estatuto = 5, RULE_expresionbool = 6, RULE_function = 7, 
            RULE_expresion = 8, RULE_exp = 9, RULE_termino = 10, RULE_factor = 11, 
            RULE_condicion = 12, RULE_ciclo = 13, RULE_escritura = 14, RULE_lectura = 15, 
            RULE_asignacion = 16, RULE_varcte = 17

	public
	static let ruleNames: [String] = [
		"preciseV5", "declare", "type", "array", "body", "estatuto", "expresionbool", 
		"function", "expresion", "exp", "termino", "factor", "condicion", "ciclo", 
		"escritura", "lectura", "asignacion", "varcte"
	]

	private static let _LITERAL_NAMES: [String?] = [
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "PROGRAM", "VAR", "FUNCTION", "END", "MAIN", "IF", "ELSE", "PRINT", 
		"READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", "VOID", "COLON", "SCOLON", 
		"COMA", "DOT", "RPAREN", "LPAREN", "RBRA", "LBRA", "RCBRA", "LCBRA", "PLUS", 
		"MIN", "DIV", "MUL", "MOD", "GTHAN", "LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", 
		"EQUAL", "AND", "OR", "ASSIGN", "TRUE", "FALSE", "CTEINT", "CTEFLOAT", 
		"CTEBOOL", "CTECHAR", "ID", "BSPACE"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "PreciseV5.g4" }

	override open
	func getRuleNames() -> [String] { return PreciseV5Parser.ruleNames }

	override open
	func getSerializedATN() -> String { return PreciseV5Parser._serializedATN }

	override open
	func getATN() -> ATN { return PreciseV5Parser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return PreciseV5Parser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,PreciseV5Parser._ATN,PreciseV5Parser._decisionToDFA, PreciseV5Parser._sharedContextCache)
	}


	public class PreciseV5Context: ParserRuleContext {
			open
			func PROGRAM() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.PROGRAM.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.COLON.rawValue, 0)
			}
			open
			func body() -> BodyContext? {
				return getRuleContext(BodyContext.self, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.END.rawValue, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
			}
			open
			func declare() -> [DeclareContext] {
				return getRuleContexts(DeclareContext.self)
			}
			open
			func declare(_ i: Int) -> DeclareContext? {
				return getRuleContext(DeclareContext.self, i)
			}
			open
			func function() -> [FunctionContext] {
				return getRuleContexts(FunctionContext.self)
			}
			open
			func function(_ i: Int) -> FunctionContext? {
				return getRuleContext(FunctionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_preciseV5
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPreciseV5(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPreciseV5(self)
			}
		}
	}
	@discardableResult
	 open func preciseV5() throws -> PreciseV5Context {
		var _localctx: PreciseV5Context = PreciseV5Context(_ctx, getState())
		try enterRule(_localctx, 0, PreciseV5Parser.RULE_preciseV5)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(36)
		 	try match(PreciseV5Parser.Tokens.PROGRAM.rawValue)
		 	setState(37)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(38)
		 	try match(PreciseV5Parser.Tokens.COLON.rawValue)
		 	setState(42)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 	while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1+1 ) {
		 			setState(39)
		 			try declare()

		 	 
		 		}
		 		setState(44)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 	}
		 	setState(48)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.FUNCTION.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(45)
		 		try function()


		 		setState(50)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(51)
		 	try body()
		 	setState(52)
		 	try match(PreciseV5Parser.Tokens.END.rawValue)
		 	setState(53)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeclareContext: ParserRuleContext {
			open
			func VAR() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.VAR.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.COLON.rawValue, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
			}
			open
			func array() -> ArrayContext? {
				return getRuleContext(ArrayContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_declare
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterDeclare(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitDeclare(self)
			}
		}
	}
	@discardableResult
	 open func declare() throws -> DeclareContext {
		var _localctx: DeclareContext = DeclareContext(_ctx, getState())
		try enterRule(_localctx, 2, PreciseV5Parser.RULE_declare)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(55)
		 	try match(PreciseV5Parser.Tokens.VAR.rawValue)
		 	setState(56)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(58)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.LBRA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(57)
		 		try array()

		 	}

		 	setState(60)
		 	try match(PreciseV5Parser.Tokens.COLON.rawValue)
		 	setState(61)
		 	try type()
		 	setState(62)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeContext: ParserRuleContext {
			open
			func INT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.INT.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func BOOL() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.BOOL.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CHAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_type
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitType(self)
			}
		}
	}
	@discardableResult
	 open func type() throws -> TypeContext {
		var _localctx: TypeContext = TypeContext(_ctx, getState())
		try enterRule(_localctx, 4, PreciseV5Parser.RULE_type)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(64)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.INT.rawValue,PreciseV5Parser.Tokens.FLOAT.rawValue,PreciseV5Parser.Tokens.CHAR.rawValue,PreciseV5Parser.Tokens.BOOL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayContext: ParserRuleContext {
			open
			func LBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LBRA.rawValue, 0)
			}
			open
			func varcte() -> VarcteContext? {
				return getRuleContext(VarcteContext.self, 0)
			}
			open
			func RBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RBRA.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_array
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterArray(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitArray(self)
			}
		}
	}
	@discardableResult
	 open func array() throws -> ArrayContext {
		var _localctx: ArrayContext = ArrayContext(_ctx, getState())
		try enterRule(_localctx, 6, PreciseV5Parser.RULE_array)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(66)
		 	try match(PreciseV5Parser.Tokens.LBRA.rawValue)
		 	setState(67)
		 	try varcte()
		 	setState(68)
		 	try match(PreciseV5Parser.Tokens.RBRA.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BodyContext: ParserRuleContext {
			open
			func MAIN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.MAIN.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func LCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LCBRA.rawValue, 0)
			}
			open
			func RCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RCBRA.rawValue, 0)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_body
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitBody(self)
			}
		}
	}
	@discardableResult
	 open func body() throws -> BodyContext {
		var _localctx: BodyContext = BodyContext(_ctx, getState())
		try enterRule(_localctx, 8, PreciseV5Parser.RULE_body)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(70)
		 	try match(PreciseV5Parser.Tokens.MAIN.rawValue)
		 	setState(71)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(72)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(73)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(77)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.VAR.rawValue,PreciseV5Parser.Tokens.IF.rawValue,PreciseV5Parser.Tokens.PRINT.rawValue,PreciseV5Parser.Tokens.READ.rawValue,PreciseV5Parser.Tokens.WHILE.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(74)
		 		try estatuto()


		 		setState(79)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(80)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EstatutoContext: ParserRuleContext {
			open
			func condicion() -> CondicionContext? {
				return getRuleContext(CondicionContext.self, 0)
			}
			open
			func ciclo() -> CicloContext? {
				return getRuleContext(CicloContext.self, 0)
			}
			open
			func escritura() -> EscrituraContext? {
				return getRuleContext(EscrituraContext.self, 0)
			}
			open
			func lectura() -> LecturaContext? {
				return getRuleContext(LecturaContext.self, 0)
			}
			open
			func asignacion() -> AsignacionContext? {
				return getRuleContext(AsignacionContext.self, 0)
			}
			open
			func declare() -> DeclareContext? {
				return getRuleContext(DeclareContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_estatuto
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterEstatuto(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitEstatuto(self)
			}
		}
	}
	@discardableResult
	 open func estatuto() throws -> EstatutoContext {
		var _localctx: EstatutoContext = EstatutoContext(_ctx, getState())
		try enterRule(_localctx, 10, PreciseV5Parser.RULE_estatuto)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(88)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IF:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(82)
		 		try condicion()

		 		break

		 	case .WHILE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(83)
		 		try ciclo()

		 		break

		 	case .PRINT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(84)
		 		try escritura()

		 		break

		 	case .READ:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(85)
		 		try lectura()

		 		break

		 	case .ID:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(86)
		 		try asignacion()

		 		break

		 	case .VAR:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(87)
		 		try declare()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpresionboolContext: ParserRuleContext {
			open
			func expresion() -> [ExpresionContext] {
				return getRuleContexts(ExpresionContext.self)
			}
			open
			func expresion(_ i: Int) -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, i)
			}
			open
			func AND() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.AND.rawValue)
			}
			open
			func AND(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.AND.rawValue, i)
			}
			open
			func OR() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.OR.rawValue)
			}
			open
			func OR(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.OR.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_expresionbool
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterExpresionbool(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitExpresionbool(self)
			}
		}
	}
	@discardableResult
	 open func expresionbool() throws -> ExpresionboolContext {
		var _localctx: ExpresionboolContext = ExpresionboolContext(_ctx, getState())
		try enterRule(_localctx, 12, PreciseV5Parser.RULE_expresionbool)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(90)
		 	try expresion()
		 	setState(95)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.AND.rawValue || _la == PreciseV5Parser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(91)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.AND.rawValue || _la == PreciseV5Parser.Tokens.OR.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(92)
		 		try expresion()


		 		setState(97)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionContext: ParserRuleContext {
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.FUNCTION.rawValue, 0)
			}
			open
			func ID() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.ID.rawValue)
			}
			open
			func ID(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, i)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func LCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LCBRA.rawValue, 0)
			}
			open
			func RCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RCBRA.rawValue, 0)
			}
			open
			func type() -> [TypeContext] {
				return getRuleContexts(TypeContext.self)
			}
			open
			func type(_ i: Int) -> TypeContext? {
				return getRuleContext(TypeContext.self, i)
			}
			open
			func VOID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.VOID.rawValue, 0)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
			open
			func COMA() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.COMA.rawValue)
			}
			open
			func COMA(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.COMA.rawValue, i)
			}
			open
			func SCOLON() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.SCOLON.rawValue)
			}
			open
			func SCOLON(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_function
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterFunction(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitFunction(self)
			}
		}
	}
	@discardableResult
	 open func function() throws -> FunctionContext {
		var _localctx: FunctionContext = FunctionContext(_ctx, getState())
		try enterRule(_localctx, 14, PreciseV5Parser.RULE_function)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(98)
		 	try match(PreciseV5Parser.Tokens.FUNCTION.rawValue)
		 	setState(101)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .INT:fallthrough
		 	case .FLOAT:fallthrough
		 	case .CHAR:fallthrough
		 	case .BOOL:
		 		setState(99)
		 		try type()

		 		break

		 	case .VOID:
		 		setState(100)
		 		try match(PreciseV5Parser.Tokens.VOID.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(103)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(104)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(116)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.INT.rawValue,PreciseV5Parser.Tokens.FLOAT.rawValue,PreciseV5Parser.Tokens.CHAR.rawValue,PreciseV5Parser.Tokens.BOOL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(105)
		 		try type()
		 		setState(106)
		 		try match(PreciseV5Parser.Tokens.ID.rawValue)
		 		setState(113)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.COMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(107)
		 			try match(PreciseV5Parser.Tokens.COMA.rawValue)
		 			setState(108)
		 			try type()
		 			setState(109)
		 			try match(PreciseV5Parser.Tokens.ID.rawValue)


		 			setState(115)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(118)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(119)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(128)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.VAR.rawValue,PreciseV5Parser.Tokens.IF.rawValue,PreciseV5Parser.Tokens.PRINT.rawValue,PreciseV5Parser.Tokens.READ.rawValue,PreciseV5Parser.Tokens.WHILE.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(120)
		 		try estatuto()
		 		setState(125)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.SCOLON.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(121)
		 			try match(PreciseV5Parser.Tokens.SCOLON.rawValue)
		 			setState(122)
		 			try estatuto()


		 			setState(127)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(130)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpresionContext: ParserRuleContext {
			open
			func exp() -> [ExpContext] {
				return getRuleContexts(ExpContext.self)
			}
			open
			func exp(_ i: Int) -> ExpContext? {
				return getRuleContext(ExpContext.self, i)
			}
			open
			func GTHAN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.GTHAN.rawValue, 0)
			}
			open
			func LTHAN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LTHAN.rawValue, 0)
			}
			open
			func GRTHAN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.GRTHAN.rawValue, 0)
			}
			open
			func LSTHAN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LSTHAN.rawValue, 0)
			}
			open
			func NOTEQUAL() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.NOTEQUAL.rawValue, 0)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.EQUAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_expresion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterExpresion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitExpresion(self)
			}
		}
	}
	@discardableResult
	 open func expresion() throws -> ExpresionContext {
		var _localctx: ExpresionContext = ExpresionContext(_ctx, getState())
		try enterRule(_localctx, 16, PreciseV5Parser.RULE_expresion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(132)
		 	try exp()
		 	setState(135)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.GTHAN.rawValue,PreciseV5Parser.Tokens.LTHAN.rawValue,PreciseV5Parser.Tokens.GRTHAN.rawValue,PreciseV5Parser.Tokens.LSTHAN.rawValue,PreciseV5Parser.Tokens.NOTEQUAL.rawValue,PreciseV5Parser.Tokens.EQUAL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(133)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.GTHAN.rawValue,PreciseV5Parser.Tokens.LTHAN.rawValue,PreciseV5Parser.Tokens.GRTHAN.rawValue,PreciseV5Parser.Tokens.LSTHAN.rawValue,PreciseV5Parser.Tokens.NOTEQUAL.rawValue,PreciseV5Parser.Tokens.EQUAL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(134)
		 		try exp()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpContext: ParserRuleContext {
			open
			func termino() -> [TerminoContext] {
				return getRuleContexts(TerminoContext.self)
			}
			open
			func termino(_ i: Int) -> TerminoContext? {
				return getRuleContext(TerminoContext.self, i)
			}
			open
			func PLUS() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.PLUS.rawValue, 0)
			}
			open
			func MIN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.MIN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_exp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitExp(self)
			}
		}
	}
	@discardableResult
	 open func exp() throws -> ExpContext {
		var _localctx: ExpContext = ExpContext(_ctx, getState())
		try enterRule(_localctx, 18, PreciseV5Parser.RULE_exp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(137)
		 	try termino()
		 	setState(140)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,12,_ctx)) {
		 	case 1:
		 		setState(138)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.PLUS.rawValue || _la == PreciseV5Parser.Tokens.MIN.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(139)
		 		try termino()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TerminoContext: ParserRuleContext {
			open
			func factor() -> [FactorContext] {
				return getRuleContexts(FactorContext.self)
			}
			open
			func factor(_ i: Int) -> FactorContext? {
				return getRuleContext(FactorContext.self, i)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.DIV.rawValue, 0)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.MUL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_termino
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterTermino(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitTermino(self)
			}
		}
	}
	@discardableResult
	 open func termino() throws -> TerminoContext {
		var _localctx: TerminoContext = TerminoContext(_ctx, getState())
		try enterRule(_localctx, 20, PreciseV5Parser.RULE_termino)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(142)
		 	try factor()
		 	setState(145)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,13,_ctx)) {
		 	case 1:
		 		setState(143)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.DIV.rawValue || _la == PreciseV5Parser.Tokens.MUL.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(144)
		 		try factor()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FactorContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expresion() -> ExpresionContext? {
				return getRuleContext(ExpresionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func varcte() -> VarcteContext? {
				return getRuleContext(VarcteContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_factor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterFactor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitFactor(self)
			}
		}
	}
	@discardableResult
	 open func factor() throws -> FactorContext {
		var _localctx: FactorContext = FactorContext(_ctx, getState())
		try enterRule(_localctx, 22, PreciseV5Parser.RULE_factor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(152)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(147)
		 		try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 		setState(148)
		 		try expresion()
		 		setState(149)
		 		try match(PreciseV5Parser.Tokens.RPAREN.rawValue)

		 		break
		 	case .CTEINT:fallthrough
		 	case .CTEFLOAT:fallthrough
		 	case .CTEBOOL:fallthrough
		 	case .CTECHAR:fallthrough
		 	case .ID:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(151)
		 		try varcte()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CondicionContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.IF.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expresionbool() -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func LCBRA() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.LCBRA.rawValue)
			}
			open
			func LCBRA(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LCBRA.rawValue, i)
			}
			open
			func RCBRA() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.RCBRA.rawValue)
			}
			open
			func RCBRA(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RCBRA.rawValue, i)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ELSE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_condicion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterCondicion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitCondicion(self)
			}
		}
	}
	@discardableResult
	 open func condicion() throws -> CondicionContext {
		var _localctx: CondicionContext = CondicionContext(_ctx, getState())
		try enterRule(_localctx, 24, PreciseV5Parser.RULE_condicion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(154)
		 	try match(PreciseV5Parser.Tokens.IF.rawValue)
		 	setState(155)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(156)
		 	try expresionbool()
		 	setState(157)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(158)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(162)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.VAR.rawValue,PreciseV5Parser.Tokens.IF.rawValue,PreciseV5Parser.Tokens.PRINT.rawValue,PreciseV5Parser.Tokens.READ.rawValue,PreciseV5Parser.Tokens.WHILE.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(159)
		 		try estatuto()


		 		setState(164)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(165)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)
		 	setState(175)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(166)
		 		try match(PreciseV5Parser.Tokens.ELSE.rawValue)
		 		setState(167)
		 		try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 		setState(171)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.VAR.rawValue,PreciseV5Parser.Tokens.IF.rawValue,PreciseV5Parser.Tokens.PRINT.rawValue,PreciseV5Parser.Tokens.READ.rawValue,PreciseV5Parser.Tokens.WHILE.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(168)
		 			try estatuto()


		 			setState(173)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(174)
		 		try match(PreciseV5Parser.Tokens.RCBRA.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CicloContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.WHILE.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expresionbool() -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func LCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LCBRA.rawValue, 0)
			}
			open
			func RCBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RCBRA.rawValue, 0)
			}
			open
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_ciclo
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterCiclo(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitCiclo(self)
			}
		}
	}
	@discardableResult
	 open func ciclo() throws -> CicloContext {
		var _localctx: CicloContext = CicloContext(_ctx, getState())
		try enterRule(_localctx, 26, PreciseV5Parser.RULE_ciclo)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(177)
		 	try match(PreciseV5Parser.Tokens.WHILE.rawValue)
		 	setState(178)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(179)
		 	try expresionbool()
		 	setState(180)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(181)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(185)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.VAR.rawValue,PreciseV5Parser.Tokens.IF.rawValue,PreciseV5Parser.Tokens.PRINT.rawValue,PreciseV5Parser.Tokens.READ.rawValue,PreciseV5Parser.Tokens.WHILE.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(182)
		 		try estatuto()


		 		setState(187)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(188)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EscrituraContext: ParserRuleContext {
			open
			func PRINT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.PRINT.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
			}
			open
			func expresionbool() -> [ExpresionboolContext] {
				return getRuleContexts(ExpresionboolContext.self)
			}
			open
			func expresionbool(_ i: Int) -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, i)
			}
			open
			func varcte() -> [VarcteContext] {
				return getRuleContexts(VarcteContext.self)
			}
			open
			func varcte(_ i: Int) -> VarcteContext? {
				return getRuleContext(VarcteContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_escritura
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterEscritura(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitEscritura(self)
			}
		}
	}
	@discardableResult
	 open func escritura() throws -> EscrituraContext {
		var _localctx: EscrituraContext = EscrituraContext(_ctx, getState())
		try enterRule(_localctx, 28, PreciseV5Parser.RULE_escritura)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(190)
		 	try match(PreciseV5Parser.Tokens.PRINT.rawValue)
		 	setState(191)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(194) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(194)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,19, _ctx)) {
		 		case 1:
		 			setState(192)
		 			try expresionbool()

		 			break
		 		case 2:
		 			setState(193)
		 			try varcte()

		 			break
		 		default: break
		 		}

		 		setState(196); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.LPAREN.rawValue,PreciseV5Parser.Tokens.CTEINT.rawValue,PreciseV5Parser.Tokens.CTEFLOAT.rawValue,PreciseV5Parser.Tokens.CTEBOOL.rawValue,PreciseV5Parser.Tokens.CTECHAR.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())
		 	setState(198)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(199)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LecturaContext: ParserRuleContext {
			open
			func READ() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.READ.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
			}
			open
			func array() -> ArrayContext? {
				return getRuleContext(ArrayContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_lectura
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterLectura(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitLectura(self)
			}
		}
	}
	@discardableResult
	 open func lectura() throws -> LecturaContext {
		var _localctx: LecturaContext = LecturaContext(_ctx, getState())
		try enterRule(_localctx, 30, PreciseV5Parser.RULE_lectura)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(201)
		 	try match(PreciseV5Parser.Tokens.READ.rawValue)
		 	setState(202)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(203)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(205)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.LBRA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(204)
		 		try array()

		 	}

		 	setState(207)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(208)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AsignacionContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func expresionbool() -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
			}
			open
			func array() -> ArrayContext? {
				return getRuleContext(ArrayContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_asignacion
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterAsignacion(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitAsignacion(self)
			}
		}
	}
	@discardableResult
	 open func asignacion() throws -> AsignacionContext {
		var _localctx: AsignacionContext = AsignacionContext(_ctx, getState())
		try enterRule(_localctx, 32, PreciseV5Parser.RULE_asignacion)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(210)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(212)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.LBRA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(211)
		 		try array()

		 	}

		 	setState(214)
		 	try match(PreciseV5Parser.Tokens.ASSIGN.rawValue)
		 	setState(215)
		 	try expresionbool()
		 	setState(216)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VarcteContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func LBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LBRA.rawValue, 0)
			}
			open
			func exp() -> [ExpContext] {
				return getRuleContexts(ExpContext.self)
			}
			open
			func exp(_ i: Int) -> ExpContext? {
				return getRuleContext(ExpContext.self, i)
			}
			open
			func RBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RBRA.rawValue, 0)
			}
			open
			func LPAREN() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.LPAREN.rawValue)
			}
			open
			func LPAREN(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LPAREN.rawValue, i)
			}
			open
			func RPAREN() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.RPAREN.rawValue)
			}
			open
			func RPAREN(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RPAREN.rawValue, i)
			}
			open
			func COMA() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.COMA.rawValue)
			}
			open
			func COMA(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.COMA.rawValue, i)
			}
			open
			func CTEINT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEINT.rawValue, 0)
			}
			open
			func CTEFLOAT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEFLOAT.rawValue, 0)
			}
			open
			func CTEBOOL() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEBOOL.rawValue, 0)
			}
			open
			func CTECHAR() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTECHAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_varcte
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterVarcte(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitVarcte(self)
			}
		}
	}
	@discardableResult
	 open func varcte() throws -> VarcteContext {
		var _localctx: VarcteContext = VarcteContext(_ctx, getState())
		try enterRule(_localctx, 34, PreciseV5Parser.RULE_varcte)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(239)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ID:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(218)
		 		try match(PreciseV5Parser.Tokens.ID.rawValue)
		 		setState(233)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.LBRA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(219)
		 			try match(PreciseV5Parser.Tokens.LBRA.rawValue)
		 			setState(220)
		 			try exp()
		 			setState(221)
		 			try match(PreciseV5Parser.Tokens.RBRA.rawValue)
		 			setState(230)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,24,_ctx)
		 			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 				if ( _alt==1 ) {
		 					setState(228)
		 					try _errHandler.sync(self)
		 					switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 					case .LPAREN:
		 						setState(222)
		 						try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 						setState(223)
		 						try exp()
		 						setState(224)
		 						try match(PreciseV5Parser.Tokens.RPAREN.rawValue)

		 						break

		 					case .COMA:
		 						setState(226)
		 						try match(PreciseV5Parser.Tokens.COMA.rawValue)
		 						setState(227)
		 						try exp()

		 						break
		 					default:
		 						throw ANTLRException.recognition(e: NoViableAltException(self))
		 					}
		 			 
		 				}
		 				setState(232)
		 				try _errHandler.sync(self)
		 				_alt = try getInterpreter().adaptivePredict(_input,24,_ctx)
		 			}

		 		}


		 		break

		 	case .CTEINT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(235)
		 		try match(PreciseV5Parser.Tokens.CTEINT.rawValue)

		 		break

		 	case .CTEFLOAT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(236)
		 		try match(PreciseV5Parser.Tokens.CTEFLOAT.rawValue)

		 		break

		 	case .CTEBOOL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(237)
		 		try match(PreciseV5Parser.Tokens.CTEBOOL.rawValue)

		 		break

		 	case .CTECHAR:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(238)
		 		try match(PreciseV5Parser.Tokens.CTECHAR.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = PreciseV5ParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}