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
		case EOF = -1, T__0 = 1, T__1 = 2, PROGRAM = 3, VAR = 4, FUNCTION = 5, 
                 END = 6, MAIN = 7, IF = 8, ELSE = 9, PRINT = 10, READ = 11, 
                 WHILE = 12, INT = 13, FLOAT = 14, CHAR = 15, BOOL = 16, 
                 VOID = 17, RETURN = 18, COLON = 19, SCOLON = 20, COMA = 21, 
                 DOT = 22, RPAREN = 23, LPAREN = 24, RBRA = 25, LBRA = 26, 
                 RCBRA = 27, LCBRA = 28, PLUS = 29, MIN = 30, DIV = 31, 
                 MUL = 32, MOD = 33, GTHAN = 34, LTHAN = 35, GRTHAN = 36, 
                 LSTHAN = 37, NOTEQUAL = 38, EQUAL = 39, AND = 40, OR = 41, 
                 ASSIGN = 42, TRUE = 43, FALSE = 44, CTEINT = 45, CTEFLOAT = 46, 
                 CTECHAR = 47, TEXT = 48, ID = 49, BSPACE = 50
	}

	public
	static let RULE_preciseV5 = 0, RULE_declare = 1, RULE_type = 2, RULE_array = 3, 
            RULE_body = 4, RULE_estatuto = 5, RULE_expresionbool = 6, RULE_function = 7, 
            RULE_expresion = 8, RULE_exp = 9, RULE_termino = 10, RULE_factor = 11, 
            RULE_condicion = 12, RULE_ciclo = 13, RULE_escritura = 14, RULE_lectura = 15, 
            RULE_asignacion = 16, RULE_varcte = 17, RULE_llamada = 18, RULE_pnCond = 19, 
            RULE_pnEq = 20, RULE_pnSA = 21, RULE_pnDM = 22, RULE_pnIfWh = 23, 
            RULE_pnElse = 24, RULE_pnLlamadaL = 25, RULE_pnLlamadaN = 26

	public
	static let ruleNames: [String] = [
		"preciseV5", "declare", "type", "array", "body", "estatuto", "expresionbool", 
		"function", "expresion", "exp", "termino", "factor", "condicion", "ciclo", 
		"escritura", "lectura", "asignacion", "varcte", "llamada", "pnCond", "pnEq", 
		"pnSA", "pnDM", "pnIfWh", "pnElse", "pnLlamadaL", "pnLlamadaN"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'true'", "'false'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, "PROGRAM", "VAR", "FUNCTION", "END", "MAIN", "IF", "ELSE", 
		"PRINT", "READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", "VOID", "RETURN", 
		"COLON", "SCOLON", "COMA", "DOT", "RPAREN", "LPAREN", "RBRA", "LBRA", 
		"RCBRA", "LCBRA", "PLUS", "MIN", "DIV", "MUL", "MOD", "GTHAN", "LTHAN", 
		"GRTHAN", "LSTHAN", "NOTEQUAL", "EQUAL", "AND", "OR", "ASSIGN", "TRUE", 
		"FALSE", "CTEINT", "CTEFLOAT", "CTECHAR", "TEXT", "ID", "BSPACE"
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
			func estatuto() -> [EstatutoContext] {
				return getRuleContexts(EstatutoContext.self)
			}
			open
			func estatuto(_ i: Int) -> EstatutoContext? {
				return getRuleContext(EstatutoContext.self, i)
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
		 	setState(54)
		 	try match(PreciseV5Parser.Tokens.PROGRAM.rawValue)
		 	setState(55)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(56)
		 	try match(PreciseV5Parser.Tokens.COLON.rawValue)
		 	setState(60)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 	while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1+1 ) {
		 			setState(57)
		 			try estatuto()

		 	 
		 		}
		 		setState(62)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
		 	}
		 	setState(66)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.FUNCTION.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(63)
		 		try function()


		 		setState(68)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(69)
		 	try body()
		 	setState(70)
		 	try match(PreciseV5Parser.Tokens.END.rawValue)
		 	setState(71)
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
			func LBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LBRA.rawValue, 0)
			}
			open
			func CTEINT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEINT.rawValue, 0)
			}
			open
			func RBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RBRA.rawValue, 0)
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
		 	setState(73)
		 	try match(PreciseV5Parser.Tokens.VAR.rawValue)
		 	setState(74)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(78)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.LBRA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(75)
		 		try match(PreciseV5Parser.Tokens.LBRA.rawValue)
		 		setState(76)
		 		try match(PreciseV5Parser.Tokens.CTEINT.rawValue)
		 		setState(77)
		 		try match(PreciseV5Parser.Tokens.RBRA.rawValue)

		 	}

		 	setState(80)
		 	try match(PreciseV5Parser.Tokens.COLON.rawValue)
		 	setState(81)
		 	try type()
		 	setState(82)
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
		 	setState(84)
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
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func LBRA() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.LBRA.rawValue, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
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
		 	setState(86)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(87)
		 	try match(PreciseV5Parser.Tokens.LBRA.rawValue)
		 	setState(88)
		 	try exp()
		 	setState(89)
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
		 	setState(91)
		 	try match(PreciseV5Parser.Tokens.MAIN.rawValue)
		 	setState(92)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(93)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(94)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(98)
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
		 		setState(95)
		 		try estatuto()


		 		setState(100)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(101)
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
			open
			func llamada() -> LlamadaContext? {
				return getRuleContext(LlamadaContext.self, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
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
		 	setState(112)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(103)
		 		try condicion()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(104)
		 		try ciclo()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(105)
		 		try escritura()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(106)
		 		try lectura()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(107)
		 		try asignacion()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(108)
		 		try declare()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(109)
		 		try llamada()
		 		setState(110)
		 		try match(PreciseV5Parser.Tokens.SCOLON.rawValue)


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
			func pnCond() -> [PnCondContext] {
				return getRuleContexts(PnCondContext.self)
			}
			open
			func pnCond(_ i: Int) -> PnCondContext? {
				return getRuleContext(PnCondContext.self, i)
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
		 	setState(114)
		 	try expresion()
		 	setState(121)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.AND.rawValue || _la == PreciseV5Parser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(115)
		 		try pnCond()
		 		setState(116)
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
		 		setState(117)
		 		try expresion()


		 		setState(123)
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
			func RETURN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.RETURN.rawValue, 0)
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
			func COMA() -> [TerminalNode] {
				return getTokens(PreciseV5Parser.Tokens.COMA.rawValue)
			}
			open
			func COMA(_ i:Int) -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.COMA.rawValue, i)
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
		 	setState(124)
		 	try match(PreciseV5Parser.Tokens.FUNCTION.rawValue)
		 	setState(127)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .INT:fallthrough
		 	case .FLOAT:fallthrough
		 	case .CHAR:fallthrough
		 	case .BOOL:
		 		setState(125)
		 		try type()

		 		break

		 	case .VOID:
		 		setState(126)
		 		try match(PreciseV5Parser.Tokens.VOID.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(129)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(130)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(142)
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
		 		setState(131)
		 		try type()
		 		setState(132)
		 		try match(PreciseV5Parser.Tokens.ID.rawValue)
		 		setState(139)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.COMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(133)
		 			try match(PreciseV5Parser.Tokens.COMA.rawValue)
		 			setState(134)
		 			try type()
		 			setState(135)
		 			try match(PreciseV5Parser.Tokens.ID.rawValue)


		 			setState(141)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(144)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(145)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(149)
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
		 		setState(146)
		 		try estatuto()


		 		setState(151)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(156)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.RETURN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(152)
		 		try match(PreciseV5Parser.Tokens.RETURN.rawValue)
		 		setState(153)
		 		try expresionbool()
		 		setState(154)
		 		try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

		 	}

		 	setState(158)
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
			func pnEq() -> PnEqContext? {
				return getRuleContext(PnEqContext.self, 0)
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
		 	setState(160)
		 	try exp()
		 	setState(165)
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
		 		setState(161)
		 		try pnEq()
		 		setState(162)
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
		 		setState(163)
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
			func pnSA() -> PnSAContext? {
				return getRuleContext(PnSAContext.self, 0)
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
		 	setState(167)
		 	try termino()
		 	setState(172)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.PLUS.rawValue || _la == PreciseV5Parser.Tokens.MIN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(168)
		 		try pnSA()
		 		setState(169)
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
		 		setState(170)
		 		try termino()

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
			func pnDM() -> PnDMContext? {
				return getRuleContext(PnDMContext.self, 0)
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
		 	setState(174)
		 	try factor()
		 	setState(179)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.DIV.rawValue || _la == PreciseV5Parser.Tokens.MUL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(175)
		 		try pnDM()
		 		setState(176)
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
		 		setState(177)
		 		try factor()

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
			open
			func array() -> ArrayContext? {
				return getRuleContext(ArrayContext.self, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
			}
			open
			func llamada() -> LlamadaContext? {
				return getRuleContext(LlamadaContext.self, 0)
			}
			open
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
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
		 	setState(191)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(181)
		 		try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 		setState(182)
		 		try expresion()
		 		setState(183)
		 		try match(PreciseV5Parser.Tokens.RPAREN.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(185)
		 		try varcte()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(186)
		 		try array()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(187)
		 		try match(PreciseV5Parser.Tokens.ID.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(188)
		 		try llamada()
		 		setState(189)
		 		try match(PreciseV5Parser.Tokens.SCOLON.rawValue)


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
			func pnIfWh() -> PnIfWhContext? {
				return getRuleContext(PnIfWhContext.self, 0)
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
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
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
			open
			func pnElse() -> PnElseContext? {
				return getRuleContext(PnElseContext.self, 0)
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
		 	setState(193)
		 	try match(PreciseV5Parser.Tokens.IF.rawValue)
		 	setState(194)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(195)
		 	try expresionbool()
		 	setState(196)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(197)
		 	try pnIfWh()
		 	setState(198)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(202)
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
		 		setState(199)
		 		try estatuto()


		 		setState(204)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(205)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)
		 	setState(217)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(206)
		 		try match(PreciseV5Parser.Tokens.ELSE.rawValue)
		 		setState(207)
		 		try pnElse()
		 		setState(208)
		 		try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 		setState(212)
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
		 			setState(209)
		 			try estatuto()


		 			setState(214)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(215)
		 		try match(PreciseV5Parser.Tokens.RCBRA.rawValue)

		 	}

		 	setState(219)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

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
			func pnIfWh() -> PnIfWhContext? {
				return getRuleContext(PnIfWhContext.self, 0)
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
			func SCOLON() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.SCOLON.rawValue, 0)
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
		 	setState(221)
		 	try match(PreciseV5Parser.Tokens.WHILE.rawValue)
		 	setState(222)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(223)
		 	try expresionbool()
		 	setState(224)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(225)
		 	try pnIfWh()
		 	setState(226)
		 	try match(PreciseV5Parser.Tokens.LCBRA.rawValue)
		 	setState(230)
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
		 		setState(227)
		 		try estatuto()


		 		setState(232)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(233)
		 	try match(PreciseV5Parser.Tokens.RCBRA.rawValue)
		 	setState(234)
		 	try match(PreciseV5Parser.Tokens.SCOLON.rawValue)

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
			func TEXT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.TEXT.rawValue, 0)
			}
			open
			func expresionbool() -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, 0)
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
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(236)
		 	try match(PreciseV5Parser.Tokens.PRINT.rawValue)
		 	setState(237)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(240)
		 	try _errHandler.sync(self)
		 	switch (PreciseV5Parser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .TEXT:
		 		setState(238)
		 		try match(PreciseV5Parser.Tokens.TEXT.rawValue)

		 		break
		 	case .T__0:fallthrough
		 	case .T__1:fallthrough
		 	case .LPAREN:fallthrough
		 	case .MIN:fallthrough
		 	case .CTEINT:fallthrough
		 	case .CTEFLOAT:fallthrough
		 	case .CTECHAR:fallthrough
		 	case .ID:
		 		setState(239)
		 		try expresionbool()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(242)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(243)
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
		 	setState(245)
		 	try match(PreciseV5Parser.Tokens.READ.rawValue)
		 	setState(246)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(247)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(249)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == PreciseV5Parser.Tokens.ID.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(248)
		 		try array()

		 	}

		 	setState(251)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)
		 	setState(252)
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
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
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
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(256)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,21, _ctx)) {
		 	case 1:
		 		setState(254)
		 		try match(PreciseV5Parser.Tokens.ID.rawValue)

		 		break
		 	case 2:
		 		setState(255)
		 		try array()

		 		break
		 	default: break
		 	}
		 	setState(258)
		 	try match(PreciseV5Parser.Tokens.ASSIGN.rawValue)
		 	setState(259)
		 	try expresionbool()
		 	setState(260)
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
			func CTEINT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEINT.rawValue, 0)
			}
			open
			func MIN() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.MIN.rawValue, 0)
			}
			open
			func CTEFLOAT() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.CTEFLOAT.rawValue, 0)
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
		 	setState(273)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,24, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(263)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.MIN.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(262)
		 			try match(PreciseV5Parser.Tokens.MIN.rawValue)

		 		}

		 		setState(265)
		 		try match(PreciseV5Parser.Tokens.CTEINT.rawValue)


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(267)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.MIN.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(266)
		 			try match(PreciseV5Parser.Tokens.MIN.rawValue)

		 		}

		 		setState(269)
		 		try match(PreciseV5Parser.Tokens.CTEFLOAT.rawValue)


		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(270)
		 		try match(PreciseV5Parser.Tokens.CTECHAR.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(271)
		 		try match(PreciseV5Parser.Tokens.T__0.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(272)
		 		try match(PreciseV5Parser.Tokens.T__1.rawValue)

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

	public class LlamadaContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(PreciseV5Parser.Tokens.ID.rawValue, 0)
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
			func expresionbool() -> [ExpresionboolContext] {
				return getRuleContexts(ExpresionboolContext.self)
			}
			open
			func expresionbool(_ i: Int) -> ExpresionboolContext? {
				return getRuleContext(ExpresionboolContext.self, i)
			}
			open
			func pnLlamadaL() -> [PnLlamadaLContext] {
				return getRuleContexts(PnLlamadaLContext.self)
			}
			open
			func pnLlamadaL(_ i: Int) -> PnLlamadaLContext? {
				return getRuleContext(PnLlamadaLContext.self, i)
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
			func pnLlamadaN() -> [PnLlamadaNContext] {
				return getRuleContexts(PnLlamadaNContext.self)
			}
			open
			func pnLlamadaN(_ i: Int) -> PnLlamadaNContext? {
				return getRuleContext(PnLlamadaNContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_llamada
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterLlamada(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitLlamada(self)
			}
		}
	}
	@discardableResult
	 open func llamada() throws -> LlamadaContext {
		var _localctx: LlamadaContext = LlamadaContext(_ctx, getState())
		try enterRule(_localctx, 36, PreciseV5Parser.RULE_llamada)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(275)
		 	try match(PreciseV5Parser.Tokens.ID.rawValue)
		 	setState(276)
		 	try match(PreciseV5Parser.Tokens.LPAREN.rawValue)
		 	setState(289)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, PreciseV5Parser.Tokens.T__0.rawValue,PreciseV5Parser.Tokens.T__1.rawValue,PreciseV5Parser.Tokens.LPAREN.rawValue,PreciseV5Parser.Tokens.MIN.rawValue,PreciseV5Parser.Tokens.CTEINT.rawValue,PreciseV5Parser.Tokens.CTEFLOAT.rawValue,PreciseV5Parser.Tokens.CTECHAR.rawValue,PreciseV5Parser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(277)
		 		try expresionbool()
		 		setState(278)
		 		try pnLlamadaL()
		 		setState(286)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == PreciseV5Parser.Tokens.COMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(279)
		 			try match(PreciseV5Parser.Tokens.COMA.rawValue)
		 			setState(280)
		 			try pnLlamadaN()
		 			setState(281)
		 			try expresionbool()
		 			setState(282)
		 			try pnLlamadaL()


		 			setState(288)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(291)
		 	try match(PreciseV5Parser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnCondContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnCond
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnCond(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnCond(self)
			}
		}
	}
	@discardableResult
	 open func pnCond() throws -> PnCondContext {
		var _localctx: PnCondContext = PnCondContext(_ctx, getState())
		try enterRule(_localctx, 38, PreciseV5Parser.RULE_pnCond)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnEqContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnEq
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnEq(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnEq(self)
			}
		}
	}
	@discardableResult
	 open func pnEq() throws -> PnEqContext {
		var _localctx: PnEqContext = PnEqContext(_ctx, getState())
		try enterRule(_localctx, 40, PreciseV5Parser.RULE_pnEq)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnSAContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnSA
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnSA(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnSA(self)
			}
		}
	}
	@discardableResult
	 open func pnSA() throws -> PnSAContext {
		var _localctx: PnSAContext = PnSAContext(_ctx, getState())
		try enterRule(_localctx, 42, PreciseV5Parser.RULE_pnSA)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnDMContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnDM
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnDM(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnDM(self)
			}
		}
	}
	@discardableResult
	 open func pnDM() throws -> PnDMContext {
		var _localctx: PnDMContext = PnDMContext(_ctx, getState())
		try enterRule(_localctx, 44, PreciseV5Parser.RULE_pnDM)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnIfWhContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnIfWh
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnIfWh(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnIfWh(self)
			}
		}
	}
	@discardableResult
	 open func pnIfWh() throws -> PnIfWhContext {
		var _localctx: PnIfWhContext = PnIfWhContext(_ctx, getState())
		try enterRule(_localctx, 46, PreciseV5Parser.RULE_pnIfWh)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnElseContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnElse
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnElse(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnElse(self)
			}
		}
	}
	@discardableResult
	 open func pnElse() throws -> PnElseContext {
		var _localctx: PnElseContext = PnElseContext(_ctx, getState())
		try enterRule(_localctx, 48, PreciseV5Parser.RULE_pnElse)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnLlamadaLContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnLlamadaL
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnLlamadaL(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnLlamadaL(self)
			}
		}
	}
	@discardableResult
	 open func pnLlamadaL() throws -> PnLlamadaLContext {
		var _localctx: PnLlamadaLContext = PnLlamadaLContext(_ctx, getState())
		try enterRule(_localctx, 50, PreciseV5Parser.RULE_pnLlamadaL)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PnLlamadaNContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return PreciseV5Parser.RULE_pnLlamadaN
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.enterPnLlamadaN(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PreciseV5Listener {
				listener.exitPnLlamadaN(self)
			}
		}
	}
	@discardableResult
	 open func pnLlamadaN() throws -> PnLlamadaNContext {
		var _localctx: PnLlamadaNContext = PnLlamadaNContext(_ctx, getState())
		try enterRule(_localctx, 52, PreciseV5Parser.RULE_pnLlamadaN)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)

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