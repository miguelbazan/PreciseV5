// Generated from PreciseV5.g4 by ANTLR 4.7.2
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
	static let T__0=1, T__1=2, PROGRAM=3, VAR=4, FUNCTION=5, END=6, MAIN=7, 
            IF=8, ELSE=9, PRINT=10, READ=11, WHILE=12, INT=13, FLOAT=14, 
            CHAR=15, BOOL=16, VOID=17, RETURN=18, COLON=19, SCOLON=20, COMA=21, 
            DOT=22, RPAREN=23, LPAREN=24, RBRA=25, LBRA=26, RCBRA=27, LCBRA=28, 
            PLUS=29, MIN=30, DIV=31, MUL=32, MOD=33, GTHAN=34, LTHAN=35, 
            GRTHAN=36, LSTHAN=37, NOTEQUAL=38, EQUAL=39, AND=40, OR=41, 
            ASSIGN=42, TRUE=43, FALSE=44, CTEINT=45, CTEFLOAT=46, CTECHAR=47, 
            TEXT=48, ID=49, BSPACE=50

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
		"T__0", "T__1", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
		"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", 
		"Z", "DIGIT", "LOWERCASE", "UPPERCASE", "APOS", "QUOTE", "PROGRAM", "VAR", 
		"FUNCTION", "END", "MAIN", "IF", "ELSE", "PRINT", "READ", "WHILE", "INT", 
		"FLOAT", "CHAR", "BOOL", "VOID", "RETURN", "COLON", "SCOLON", "COMA", 
		"DOT", "RPAREN", "LPAREN", "RBRA", "LBRA", "RCBRA", "LCBRA", "PLUS", "MIN", 
		"DIV", "MUL", "MOD", "GTHAN", "LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", 
		"EQUAL", "AND", "OR", "ASSIGN", "TRUE", "FALSE", "CTEINT", "CTEFLOAT", 
		"CTECHAR", "TEXT", "ID", "BSPACE"
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
	func getVocabulary() -> Vocabulary {
		return PreciseV5Lexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
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