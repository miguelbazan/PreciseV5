// Generated from PreciseV5.g4 by ANTLR 4.7.1
import Antlr4

open class PreciseV5Lexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PreciseV5Lexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(PreciseV5Lexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let PROGRAM=1, DECLARE=2, FUNCTION=3, END=4, MAIN=5, IF=6, ELSE=7, 
            PRINT=8, READ=9, WHILE=10, INT=11, FLOAT=12, CHAR=13, BOOL=14, 
            VOID=15, COLON=16, SCOLON=17, COMA=18, DOT=19, RPAREN=20, LPAREN=21, 
            RBRA=22, LBRA=23, RCBRA=24, LCBRA=25, PLUS=26, MIN=27, DIV=28, 
            MUL=29, MOD=30, GTHAN=31, LTHAN=32, GRTHAN=33, LSTHAN=34, NOTEQUAL=35, 
            EQUAL=36, AND=37, OR=38, ASSIGN=39, TRUE=40, FALSE=41, CTEINT=42, 
            CTEFLOAT=43, CTEBOOL=44, CTECHAR=45, ID=46, BSPACE=47

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "DIGIT", "LOWERCASE", 
		"UPPERCASE", "APOS", "PROGRAM", "DECLARE", "FUNCTION", "END", "MAIN", 
		"IF", "ELSE", "PRINT", "READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", 
		"VOID", "COLON", "SCOLON", "COMA", "DOT", "RPAREN", "LPAREN", "RBRA", 
		"LBRA", "RCBRA", "LCBRA", "PLUS", "MIN", "DIV", "MUL", "MOD", "GTHAN", 
		"LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", "EQUAL", "AND", "OR", "ASSIGN", 
		"TRUE", "FALSE", "CTEINT", "CTEFLOAT", "CTEBOOL", "CTECHAR", "ID", "BSPACE"
	]

	private static let _LITERAL_NAMES: [String?] = [
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "PROGRAM", "DECLARE", "FUNCTION", "END", "MAIN", "IF", "ELSE", "PRINT", 
		"READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", "VOID", "COLON", "SCOLON", 
		"COMA", "DOT", "RPAREN", "LPAREN", "RBRA", "LBRA", "RCBRA", "LCBRA", "PLUS", 
		"MIN", "DIV", "MUL", "MOD", "GTHAN", "LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", 
		"EQUAL", "AND", "OR", "ASSIGN", "TRUE", "FALSE", "CTEINT", "CTEFLOAT", 
		"CTEBOOL", "CTECHAR", "ID", "BSPACE"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return PreciseV5Lexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, PreciseV5Lexer._ATN, PreciseV5Lexer._decisionToDFA, PreciseV5Lexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "PreciseV5.g4" }

	override open
	func getRuleNames() -> [String] { return PreciseV5Lexer.ruleNames }

	override open
	func getSerializedATN() -> String { return PreciseV5Lexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return PreciseV5Lexer.channelNames }

	override open
	func getModeNames() -> [String] { return PreciseV5Lexer.modeNames }

	override open
	func getATN() -> ATN { return PreciseV5Lexer._ATN }


	public
	static let _serializedATN: String = PreciseV5LexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}