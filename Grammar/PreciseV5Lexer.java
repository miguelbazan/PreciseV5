// Generated from PreciseV5.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class PreciseV5Lexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		PROGRAM=1, DECLARE=2, FUNCTION=3, END=4, MAIN=5, IF=6, ELSE=7, PRINT=8, 
		READ=9, WHILE=10, INT=11, FLOAT=12, CHAR=13, BOOL=14, VOID=15, COLON=16, 
		SCOLON=17, COMA=18, DOT=19, RPAREN=20, LPAREN=21, RBRA=22, LBRA=23, RCBRA=24, 
		LCBRA=25, PLUS=26, MIN=27, DIV=28, MUL=29, MOD=30, GTHAN=31, LTHAN=32, 
		GRTHAN=33, LSTHAN=34, NOTEQUAL=35, EQUAL=36, AND=37, OR=38, ASSIGN=39, 
		TRUE=40, FALSE=41, CTEINT=42, CTEFLOAT=43, CTEBOOL=44, CTECHAR=45, ID=46, 
		BSPACE=47;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", 
		"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "DIGIT", "LOWERCASE", 
		"UPPERCASE", "APOS", "PROGRAM", "DECLARE", "FUNCTION", "END", "MAIN", 
		"IF", "ELSE", "PRINT", "READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", 
		"VOID", "COLON", "SCOLON", "COMA", "DOT", "RPAREN", "LPAREN", "RBRA", 
		"LBRA", "RCBRA", "LCBRA", "PLUS", "MIN", "DIV", "MUL", "MOD", "GTHAN", 
		"LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", "EQUAL", "AND", "OR", "ASSIGN", 
		"TRUE", "FALSE", "CTEINT", "CTEFLOAT", "CTEBOOL", "CTECHAR", "ID", "BSPACE"
	};

	private static final String[] _LITERAL_NAMES = {
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, "PROGRAM", "DECLARE", "FUNCTION", "END", "MAIN", "IF", "ELSE", "PRINT", 
		"READ", "WHILE", "INT", "FLOAT", "CHAR", "BOOL", "VOID", "COLON", "SCOLON", 
		"COMA", "DOT", "RPAREN", "LPAREN", "RBRA", "LBRA", "RCBRA", "LCBRA", "PLUS", 
		"MIN", "DIV", "MUL", "MOD", "GTHAN", "LTHAN", "GRTHAN", "LSTHAN", "NOTEQUAL", 
		"EQUAL", "AND", "OR", "ASSIGN", "TRUE", "FALSE", "CTEINT", "CTEFLOAT", 
		"CTEBOOL", "CTECHAR", "ID", "BSPACE"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public PreciseV5Lexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "PreciseV5.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\61\u0194\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t"+
		"=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4"+
		"I\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6"+
		"\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3"+
		"\16\3\17\3\17\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3"+
		"\25\3\26\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34\3"+
		"\34\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3 \3 \3 \3 \3 \3 \3!\3!\3!\3!"+
		"\3!\3!\3!\3!\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3#\3#\3#\3#\3$\3$\3$"+
		"\3$\3$\3%\3%\3%\3&\3&\3&\3&\3&\3\'\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3("+
		"\3)\3)\3)\3)\3)\3)\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3,\3,\3,\3,\3,\3-\3-"+
		"\3-\3-\3-\3.\3.\3.\3.\3.\3/\3/\3\60\3\60\3\61\3\61\3\62\3\62\3\63\3\63"+
		"\3\64\3\64\3\65\3\65\3\66\3\66\3\67\3\67\38\38\39\39\3:\3:\3;\3;\3<\3"+
		"<\3=\3=\3>\3>\3?\3?\3@\3@\3@\3A\3A\3A\3B\3B\3B\3C\3C\3C\3D\3D\3D\3E\3"+
		"E\3E\3F\3F\3G\3G\3G\3G\3G\3H\3H\3H\3H\3H\3H\3I\6I\u0170\nI\rI\16I\u0171"+
		"\3J\6J\u0175\nJ\rJ\16J\u0176\3J\3J\6J\u017b\nJ\rJ\16J\u017c\3K\3K\5K\u0181"+
		"\nK\3L\3L\3L\3L\3M\3M\7M\u0189\nM\fM\16M\u018c\13M\3N\6N\u018f\nN\rN\16"+
		"N\u0190\3N\3N\2\2O\3\2\5\2\7\2\t\2\13\2\r\2\17\2\21\2\23\2\25\2\27\2\31"+
		"\2\33\2\35\2\37\2!\2#\2%\2\'\2)\2+\2-\2/\2\61\2\63\2\65\2\67\29\2;\2="+
		"\2?\3A\4C\5E\6G\7I\bK\tM\nO\13Q\fS\rU\16W\17Y\20[\21]\22_\23a\24c\25e"+
		"\26g\27i\30k\31m\32o\33q\34s\35u\36w\37y {!}\"\177#\u0081$\u0083%\u0085"+
		"&\u0087\'\u0089(\u008b)\u008d*\u008f+\u0091,\u0093-\u0095.\u0097/\u0099"+
		"\60\u009b\61\3\2!\4\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2"+
		"IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4"+
		"\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZz"+
		"z\4\2[[{{\4\2\\\\||\3\2c|\3\2C\\\6\2\62;C\\aac|\4\2C\\c|\5\2\13\f\17\17"+
		"\"\"\2\u017b\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2"+
		"I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3"+
		"\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2"+
		"\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2"+
		"o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3"+
		"\2\2\2\2}\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2\2\u0083\3\2\2\2\2\u0085"+
		"\3\2\2\2\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2\u008b\3\2\2\2\2\u008d\3\2\2"+
		"\2\2\u008f\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2\2\2\u0095\3\2\2\2\2\u0097"+
		"\3\2\2\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\3\u009d\3\2\2\2\5\u009f\3\2\2"+
		"\2\7\u00a1\3\2\2\2\t\u00a3\3\2\2\2\13\u00a5\3\2\2\2\r\u00a7\3\2\2\2\17"+
		"\u00a9\3\2\2\2\21\u00ab\3\2\2\2\23\u00ad\3\2\2\2\25\u00af\3\2\2\2\27\u00b1"+
		"\3\2\2\2\31\u00b3\3\2\2\2\33\u00b5\3\2\2\2\35\u00b7\3\2\2\2\37\u00b9\3"+
		"\2\2\2!\u00bb\3\2\2\2#\u00bd\3\2\2\2%\u00bf\3\2\2\2\'\u00c1\3\2\2\2)\u00c3"+
		"\3\2\2\2+\u00c5\3\2\2\2-\u00c7\3\2\2\2/\u00c9\3\2\2\2\61\u00cb\3\2\2\2"+
		"\63\u00cd\3\2\2\2\65\u00cf\3\2\2\2\67\u00d1\3\2\2\29\u00d3\3\2\2\2;\u00d5"+
		"\3\2\2\2=\u00d7\3\2\2\2?\u00d9\3\2\2\2A\u00e1\3\2\2\2C\u00e9\3\2\2\2E"+
		"\u00f2\3\2\2\2G\u00f6\3\2\2\2I\u00fb\3\2\2\2K\u00fe\3\2\2\2M\u0103\3\2"+
		"\2\2O\u0109\3\2\2\2Q\u010e\3\2\2\2S\u0114\3\2\2\2U\u0118\3\2\2\2W\u011e"+
		"\3\2\2\2Y\u0123\3\2\2\2[\u0128\3\2\2\2]\u012d\3\2\2\2_\u012f\3\2\2\2a"+
		"\u0131\3\2\2\2c\u0133\3\2\2\2e\u0135\3\2\2\2g\u0137\3\2\2\2i\u0139\3\2"+
		"\2\2k\u013b\3\2\2\2m\u013d\3\2\2\2o\u013f\3\2\2\2q\u0141\3\2\2\2s\u0143"+
		"\3\2\2\2u\u0145\3\2\2\2w\u0147\3\2\2\2y\u0149\3\2\2\2{\u014b\3\2\2\2}"+
		"\u014d\3\2\2\2\177\u014f\3\2\2\2\u0081\u0152\3\2\2\2\u0083\u0155\3\2\2"+
		"\2\u0085\u0158\3\2\2\2\u0087\u015b\3\2\2\2\u0089\u015e\3\2\2\2\u008b\u0161"+
		"\3\2\2\2\u008d\u0163\3\2\2\2\u008f\u0168\3\2\2\2\u0091\u016f\3\2\2\2\u0093"+
		"\u0174\3\2\2\2\u0095\u0180\3\2\2\2\u0097\u0182\3\2\2\2\u0099\u0186\3\2"+
		"\2\2\u009b\u018e\3\2\2\2\u009d\u009e\t\2\2\2\u009e\4\3\2\2\2\u009f\u00a0"+
		"\t\3\2\2\u00a0\6\3\2\2\2\u00a1\u00a2\t\4\2\2\u00a2\b\3\2\2\2\u00a3\u00a4"+
		"\t\5\2\2\u00a4\n\3\2\2\2\u00a5\u00a6\t\6\2\2\u00a6\f\3\2\2\2\u00a7\u00a8"+
		"\t\7\2\2\u00a8\16\3\2\2\2\u00a9\u00aa\t\b\2\2\u00aa\20\3\2\2\2\u00ab\u00ac"+
		"\t\t\2\2\u00ac\22\3\2\2\2\u00ad\u00ae\t\n\2\2\u00ae\24\3\2\2\2\u00af\u00b0"+
		"\t\13\2\2\u00b0\26\3\2\2\2\u00b1\u00b2\t\f\2\2\u00b2\30\3\2\2\2\u00b3"+
		"\u00b4\t\r\2\2\u00b4\32\3\2\2\2\u00b5\u00b6\t\16\2\2\u00b6\34\3\2\2\2"+
		"\u00b7\u00b8\t\17\2\2\u00b8\36\3\2\2\2\u00b9\u00ba\t\20\2\2\u00ba \3\2"+
		"\2\2\u00bb\u00bc\t\21\2\2\u00bc\"\3\2\2\2\u00bd\u00be\t\22\2\2\u00be$"+
		"\3\2\2\2\u00bf\u00c0\t\23\2\2\u00c0&\3\2\2\2\u00c1\u00c2\t\24\2\2\u00c2"+
		"(\3\2\2\2\u00c3\u00c4\t\25\2\2\u00c4*\3\2\2\2\u00c5\u00c6\t\26\2\2\u00c6"+
		",\3\2\2\2\u00c7\u00c8\t\27\2\2\u00c8.\3\2\2\2\u00c9\u00ca\t\30\2\2\u00ca"+
		"\60\3\2\2\2\u00cb\u00cc\t\31\2\2\u00cc\62\3\2\2\2\u00cd\u00ce\t\32\2\2"+
		"\u00ce\64\3\2\2\2\u00cf\u00d0\t\33\2\2\u00d0\66\3\2\2\2\u00d1\u00d2\4"+
		"\62;\2\u00d28\3\2\2\2\u00d3\u00d4\t\34\2\2\u00d4:\3\2\2\2\u00d5\u00d6"+
		"\t\35\2\2\u00d6<\3\2\2\2\u00d7\u00d8\7)\2\2\u00d8>\3\2\2\2\u00d9\u00da"+
		"\5!\21\2\u00da\u00db\5%\23\2\u00db\u00dc\5\37\20\2\u00dc\u00dd\5\17\b"+
		"\2\u00dd\u00de\5%\23\2\u00de\u00df\5\3\2\2\u00df\u00e0\5\33\16\2\u00e0"+
		"@\3\2\2\2\u00e1\u00e2\5\t\5\2\u00e2\u00e3\5\13\6\2\u00e3\u00e4\5\7\4\2"+
		"\u00e4\u00e5\5\31\r\2\u00e5\u00e6\5\3\2\2\u00e6\u00e7\5%\23\2\u00e7\u00e8"+
		"\5\13\6\2\u00e8B\3\2\2\2\u00e9\u00ea\5\r\7\2\u00ea\u00eb\5+\26\2\u00eb"+
		"\u00ec\5\35\17\2\u00ec\u00ed\5\7\4\2\u00ed\u00ee\5)\25\2\u00ee\u00ef\5"+
		"\23\n\2\u00ef\u00f0\5\37\20\2\u00f0\u00f1\5\35\17\2\u00f1D\3\2\2\2\u00f2"+
		"\u00f3\5\13\6\2\u00f3\u00f4\5\35\17\2\u00f4\u00f5\5\t\5\2\u00f5F\3\2\2"+
		"\2\u00f6\u00f7\5\33\16\2\u00f7\u00f8\5\3\2\2\u00f8\u00f9\5\23\n\2\u00f9"+
		"\u00fa\5\35\17\2\u00faH\3\2\2\2\u00fb\u00fc\5\23\n\2\u00fc\u00fd\5\r\7"+
		"\2\u00fdJ\3\2\2\2\u00fe\u00ff\5\13\6\2\u00ff\u0100\5\31\r\2\u0100\u0101"+
		"\5\'\24\2\u0101\u0102\5\13\6\2\u0102L\3\2\2\2\u0103\u0104\5!\21\2\u0104"+
		"\u0105\5%\23\2\u0105\u0106\5\23\n\2\u0106\u0107\5\35\17\2\u0107\u0108"+
		"\5)\25\2\u0108N\3\2\2\2\u0109\u010a\5%\23\2\u010a\u010b\5\13\6\2\u010b"+
		"\u010c\5\3\2\2\u010c\u010d\5\t\5\2\u010dP\3\2\2\2\u010e\u010f\5/\30\2"+
		"\u010f\u0110\5\21\t\2\u0110\u0111\5\23\n\2\u0111\u0112\5\31\r\2\u0112"+
		"\u0113\5\13\6\2\u0113R\3\2\2\2\u0114\u0115\5\23\n\2\u0115\u0116\5\35\17"+
		"\2\u0116\u0117\5)\25\2\u0117T\3\2\2\2\u0118\u0119\5\r\7\2\u0119\u011a"+
		"\5\31\r\2\u011a\u011b\5\37\20\2\u011b\u011c\5\3\2\2\u011c\u011d\5)\25"+
		"\2\u011dV\3\2\2\2\u011e\u011f\5\7\4\2\u011f\u0120\5\21\t\2\u0120\u0121"+
		"\5\3\2\2\u0121\u0122\5%\23\2\u0122X\3\2\2\2\u0123\u0124\5\5\3\2\u0124"+
		"\u0125\5\37\20\2\u0125\u0126\5\37\20\2\u0126\u0127\5\31\r\2\u0127Z\3\2"+
		"\2\2\u0128\u0129\5-\27\2\u0129\u012a\5\37\20\2\u012a\u012b\5\23\n\2\u012b"+
		"\u012c\5\t\5\2\u012c\\\3\2\2\2\u012d\u012e\7<\2\2\u012e^\3\2\2\2\u012f"+
		"\u0130\7=\2\2\u0130`\3\2\2\2\u0131\u0132\7.\2\2\u0132b\3\2\2\2\u0133\u0134"+
		"\7\60\2\2\u0134d\3\2\2\2\u0135\u0136\7+\2\2\u0136f\3\2\2\2\u0137\u0138"+
		"\7*\2\2\u0138h\3\2\2\2\u0139\u013a\7_\2\2\u013aj\3\2\2\2\u013b\u013c\7"+
		"]\2\2\u013cl\3\2\2\2\u013d\u013e\7\177\2\2\u013en\3\2\2\2\u013f\u0140"+
		"\7}\2\2\u0140p\3\2\2\2\u0141\u0142\7-\2\2\u0142r\3\2\2\2\u0143\u0144\7"+
		"/\2\2\u0144t\3\2\2\2\u0145\u0146\7\61\2\2\u0146v\3\2\2\2\u0147\u0148\7"+
		",\2\2\u0148x\3\2\2\2\u0149\u014a\7\'\2\2\u014az\3\2\2\2\u014b\u014c\7"+
		"@\2\2\u014c|\3\2\2\2\u014d\u014e\7>\2\2\u014e~\3\2\2\2\u014f\u0150\7@"+
		"\2\2\u0150\u0151\7?\2\2\u0151\u0080\3\2\2\2\u0152\u0153\7>\2\2\u0153\u0154"+
		"\7?\2\2\u0154\u0082\3\2\2\2\u0155\u0156\7#\2\2\u0156\u0157\7?\2\2\u0157"+
		"\u0084\3\2\2\2\u0158\u0159\7?\2\2\u0159\u015a\7?\2\2\u015a\u0086\3\2\2"+
		"\2\u015b\u015c\7(\2\2\u015c\u015d\7(\2\2\u015d\u0088\3\2\2\2\u015e\u015f"+
		"\7~\2\2\u015f\u0160\7~\2\2\u0160\u008a\3\2\2\2\u0161\u0162\7?\2\2\u0162"+
		"\u008c\3\2\2\2\u0163\u0164\5)\25\2\u0164\u0165\5%\23\2\u0165\u0166\5+"+
		"\26\2\u0166\u0167\5\13\6\2\u0167\u008e\3\2\2\2\u0168\u0169\5\r\7\2\u0169"+
		"\u016a\5\3\2\2\u016a\u016b\5\31\r\2\u016b\u016c\5\'\24\2\u016c\u016d\5"+
		"\13\6\2\u016d\u0090\3\2\2\2\u016e\u0170\5\67\34\2\u016f\u016e\3\2\2\2"+
		"\u0170\u0171\3\2\2\2\u0171\u016f\3\2\2\2\u0171\u0172\3\2\2\2\u0172\u0092"+
		"\3\2\2\2\u0173\u0175\5\67\34\2\u0174\u0173\3\2\2\2\u0175\u0176\3\2\2\2"+
		"\u0176\u0174\3\2\2\2\u0176\u0177\3\2\2\2\u0177\u0178\3\2\2\2\u0178\u017a"+
		"\5c\62\2\u0179\u017b\5\67\34\2\u017a\u0179\3\2\2\2\u017b\u017c\3\2\2\2"+
		"\u017c\u017a\3\2\2\2\u017c\u017d\3\2\2\2\u017d\u0094\3\2\2\2\u017e\u0181"+
		"\5\u008dG\2\u017f\u0181\5\u008fH\2\u0180\u017e\3\2\2\2\u0180\u017f\3\2"+
		"\2\2\u0181\u0096\3\2\2\2\u0182\u0183\5=\37\2\u0183\u0184\t\36\2\2\u0184"+
		"\u0185\5=\37\2\u0185\u0098\3\2\2\2\u0186\u018a\t\37\2\2\u0187\u0189\t"+
		"\36\2\2\u0188\u0187\3\2\2\2\u0189\u018c\3\2\2\2\u018a\u0188\3\2\2\2\u018a"+
		"\u018b\3\2\2\2\u018b\u009a\3\2\2\2\u018c\u018a\3\2\2\2\u018d\u018f\t "+
		"\2\2\u018e\u018d\3\2\2\2\u018f\u0190\3\2\2\2\u0190\u018e\3\2\2\2\u0190"+
		"\u0191\3\2\2\2\u0191\u0192\3\2\2\2\u0192\u0193\bN\2\2\u0193\u009c\3\2"+
		"\2\2\t\2\u0171\u0176\u017c\u0180\u018a\u0190\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}