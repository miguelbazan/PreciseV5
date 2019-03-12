// Generated from PreciseV5.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class PreciseV5Parser extends Parser {
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
	public static final int
		RULE_preciseV5 = 0, RULE_declare = 1, RULE_type = 2, RULE_array = 3, RULE_body = 4, 
		RULE_estatuto = 5, RULE_expresionbool = 6, RULE_function = 7, RULE_expresion = 8, 
		RULE_exp = 9, RULE_termino = 10, RULE_factor = 11, RULE_condicion = 12, 
		RULE_ciclo = 13, RULE_escritura = 14, RULE_lectura = 15, RULE_asignacion = 16, 
		RULE_varcte = 17;
	public static final String[] ruleNames = {
		"preciseV5", "declare", "type", "array", "body", "estatuto", "expresionbool", 
		"function", "expresion", "exp", "termino", "factor", "condicion", "ciclo", 
		"escritura", "lectura", "asignacion", "varcte"
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

	@Override
	public String getGrammarFileName() { return "PreciseV5.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public PreciseV5Parser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class PreciseV5Context extends ParserRuleContext {
		public TerminalNode PROGRAM() { return getToken(PreciseV5Parser.PROGRAM, 0); }
		public TerminalNode ID() { return getToken(PreciseV5Parser.ID, 0); }
		public TerminalNode COLON() { return getToken(PreciseV5Parser.COLON, 0); }
		public BodyContext body() {
			return getRuleContext(BodyContext.class,0);
		}
		public TerminalNode END() { return getToken(PreciseV5Parser.END, 0); }
		public TerminalNode SCOLON() { return getToken(PreciseV5Parser.SCOLON, 0); }
		public DeclareContext declare() {
			return getRuleContext(DeclareContext.class,0);
		}
		public FunctionContext function() {
			return getRuleContext(FunctionContext.class,0);
		}
		public PreciseV5Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_preciseV5; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterPreciseV5(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitPreciseV5(this);
		}
	}

	public final PreciseV5Context preciseV5() throws RecognitionException {
		PreciseV5Context _localctx = new PreciseV5Context(_ctx, getState());
		enterRule(_localctx, 0, RULE_preciseV5);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(36);
			match(PROGRAM);
			setState(37);
			match(ID);
			setState(38);
			match(COLON);
			setState(40);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==DECLARE) {
				{
				setState(39);
				declare();
				}
			}

			setState(43);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==FUNCTION) {
				{
				setState(42);
				function();
				}
			}

			setState(45);
			body();
			setState(46);
			match(END);
			setState(47);
			match(SCOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclareContext extends ParserRuleContext {
		public TerminalNode DECLARE() { return getToken(PreciseV5Parser.DECLARE, 0); }
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<TerminalNode> ID() { return getTokens(PreciseV5Parser.ID); }
		public TerminalNode ID(int i) {
			return getToken(PreciseV5Parser.ID, i);
		}
		public List<TerminalNode> SCOLON() { return getTokens(PreciseV5Parser.SCOLON); }
		public TerminalNode SCOLON(int i) {
			return getToken(PreciseV5Parser.SCOLON, i);
		}
		public List<ArrayContext> array() {
			return getRuleContexts(ArrayContext.class);
		}
		public ArrayContext array(int i) {
			return getRuleContext(ArrayContext.class,i);
		}
		public List<TerminalNode> COMA() { return getTokens(PreciseV5Parser.COMA); }
		public TerminalNode COMA(int i) {
			return getToken(PreciseV5Parser.COMA, i);
		}
		public DeclareContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declare; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterDeclare(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitDeclare(this);
		}
	}

	public final DeclareContext declare() throws RecognitionException {
		DeclareContext _localctx = new DeclareContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_declare);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(49);
			match(DECLARE);
			setState(50);
			type();
			setState(51);
			match(ID);
			setState(53);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LBRA) {
				{
				setState(52);
				array();
				}
			}

			setState(62);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==COMA) {
				{
				{
				setState(55);
				match(COMA);
				setState(56);
				match(ID);
				setState(58);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LBRA) {
					{
					setState(57);
					array();
					}
				}

				}
				}
				setState(64);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(65);
			match(SCOLON);
			setState(83);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << FLOAT) | (1L << CHAR) | (1L << BOOL))) != 0)) {
				{
				setState(66);
				type();
				setState(67);
				match(ID);
				setState(69);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LBRA) {
					{
					setState(68);
					array();
					}
				}

				setState(78);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMA) {
					{
					{
					setState(71);
					match(COMA);
					setState(72);
					match(ID);
					setState(74);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la==LBRA) {
						{
						setState(73);
						array();
						}
					}

					}
					}
					setState(80);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(81);
				match(SCOLON);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TerminalNode INT() { return getToken(PreciseV5Parser.INT, 0); }
		public TerminalNode FLOAT() { return getToken(PreciseV5Parser.FLOAT, 0); }
		public TerminalNode BOOL() { return getToken(PreciseV5Parser.BOOL, 0); }
		public TerminalNode CHAR() { return getToken(PreciseV5Parser.CHAR, 0); }
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(85);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << FLOAT) | (1L << CHAR) | (1L << BOOL))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayContext extends ParserRuleContext {
		public TerminalNode LBRA() { return getToken(PreciseV5Parser.LBRA, 0); }
		public VarcteContext varcte() {
			return getRuleContext(VarcteContext.class,0);
		}
		public TerminalNode RBRA() { return getToken(PreciseV5Parser.RBRA, 0); }
		public ArrayContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_array; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterArray(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitArray(this);
		}
	}

	public final ArrayContext array() throws RecognitionException {
		ArrayContext _localctx = new ArrayContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_array);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(87);
			match(LBRA);
			setState(88);
			varcte();
			setState(89);
			match(RBRA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BodyContext extends ParserRuleContext {
		public TerminalNode MAIN() { return getToken(PreciseV5Parser.MAIN, 0); }
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public TerminalNode LCBRA() { return getToken(PreciseV5Parser.LCBRA, 0); }
		public TerminalNode RCBRA() { return getToken(PreciseV5Parser.RCBRA, 0); }
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public BodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_body; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterBody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitBody(this);
		}
	}

	public final BodyContext body() throws RecognitionException {
		BodyContext _localctx = new BodyContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_body);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(91);
			match(MAIN);
			setState(92);
			match(LPAREN);
			setState(93);
			match(RPAREN);
			setState(94);
			match(LCBRA);
			setState(98);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << DECLARE) | (1L << IF) | (1L << PRINT) | (1L << READ) | (1L << WHILE) | (1L << ID))) != 0)) {
				{
				{
				setState(95);
				estatuto();
				}
				}
				setState(100);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(101);
			match(RCBRA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EstatutoContext extends ParserRuleContext {
		public CondicionContext condicion() {
			return getRuleContext(CondicionContext.class,0);
		}
		public CicloContext ciclo() {
			return getRuleContext(CicloContext.class,0);
		}
		public EscrituraContext escritura() {
			return getRuleContext(EscrituraContext.class,0);
		}
		public LecturaContext lectura() {
			return getRuleContext(LecturaContext.class,0);
		}
		public AsignacionContext asignacion() {
			return getRuleContext(AsignacionContext.class,0);
		}
		public DeclareContext declare() {
			return getRuleContext(DeclareContext.class,0);
		}
		public EstatutoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_estatuto; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterEstatuto(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitEstatuto(this);
		}
	}

	public final EstatutoContext estatuto() throws RecognitionException {
		EstatutoContext _localctx = new EstatutoContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_estatuto);
		try {
			setState(109);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case IF:
				enterOuterAlt(_localctx, 1);
				{
				setState(103);
				condicion();
				}
				break;
			case WHILE:
				enterOuterAlt(_localctx, 2);
				{
				setState(104);
				ciclo();
				}
				break;
			case PRINT:
				enterOuterAlt(_localctx, 3);
				{
				setState(105);
				escritura();
				}
				break;
			case READ:
				enterOuterAlt(_localctx, 4);
				{
				setState(106);
				lectura();
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 5);
				{
				setState(107);
				asignacion();
				}
				break;
			case DECLARE:
				enterOuterAlt(_localctx, 6);
				{
				setState(108);
				declare();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpresionboolContext extends ParserRuleContext {
		public List<ExpresionContext> expresion() {
			return getRuleContexts(ExpresionContext.class);
		}
		public ExpresionContext expresion(int i) {
			return getRuleContext(ExpresionContext.class,i);
		}
		public List<TerminalNode> AND() { return getTokens(PreciseV5Parser.AND); }
		public TerminalNode AND(int i) {
			return getToken(PreciseV5Parser.AND, i);
		}
		public List<TerminalNode> OR() { return getTokens(PreciseV5Parser.OR); }
		public TerminalNode OR(int i) {
			return getToken(PreciseV5Parser.OR, i);
		}
		public ExpresionboolContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expresionbool; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterExpresionbool(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitExpresionbool(this);
		}
	}

	public final ExpresionboolContext expresionbool() throws RecognitionException {
		ExpresionboolContext _localctx = new ExpresionboolContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_expresionbool);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(111);
			expresion();
			setState(116);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==AND || _la==OR) {
				{
				{
				setState(112);
				_la = _input.LA(1);
				if ( !(_la==AND || _la==OR) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(113);
				expresion();
				}
				}
				setState(118);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionContext extends ParserRuleContext {
		public TerminalNode FUNCTION() { return getToken(PreciseV5Parser.FUNCTION, 0); }
		public List<TerminalNode> ID() { return getTokens(PreciseV5Parser.ID); }
		public TerminalNode ID(int i) {
			return getToken(PreciseV5Parser.ID, i);
		}
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public TerminalNode LCBRA() { return getToken(PreciseV5Parser.LCBRA, 0); }
		public TerminalNode RCBRA() { return getToken(PreciseV5Parser.RCBRA, 0); }
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public TerminalNode VOID() { return getToken(PreciseV5Parser.VOID, 0); }
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public List<TerminalNode> SCOLON() { return getTokens(PreciseV5Parser.SCOLON); }
		public TerminalNode SCOLON(int i) {
			return getToken(PreciseV5Parser.SCOLON, i);
		}
		public List<TerminalNode> COMA() { return getTokens(PreciseV5Parser.COMA); }
		public TerminalNode COMA(int i) {
			return getToken(PreciseV5Parser.COMA, i);
		}
		public FunctionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_function; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitFunction(this);
		}
	}

	public final FunctionContext function() throws RecognitionException {
		FunctionContext _localctx = new FunctionContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_function);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(119);
			match(FUNCTION);
			setState(122);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
			case FLOAT:
			case CHAR:
			case BOOL:
				{
				setState(120);
				type();
				}
				break;
			case VOID:
				{
				setState(121);
				match(VOID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(124);
			match(ID);
			setState(125);
			match(LPAREN);
			setState(137);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << FLOAT) | (1L << CHAR) | (1L << BOOL))) != 0)) {
				{
				setState(126);
				type();
				setState(127);
				match(ID);
				setState(134);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==COMA) {
					{
					{
					setState(128);
					match(COMA);
					setState(129);
					type();
					setState(130);
					match(ID);
					}
					}
					setState(136);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(139);
			match(RPAREN);
			setState(140);
			match(LCBRA);
			{
			setState(141);
			estatuto();
			setState(146);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==SCOLON) {
				{
				{
				setState(142);
				match(SCOLON);
				setState(143);
				estatuto();
				}
				}
				setState(148);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
			setState(149);
			match(RCBRA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpresionContext extends ParserRuleContext {
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode GTHAN() { return getToken(PreciseV5Parser.GTHAN, 0); }
		public TerminalNode LTHAN() { return getToken(PreciseV5Parser.LTHAN, 0); }
		public TerminalNode GRTHAN() { return getToken(PreciseV5Parser.GRTHAN, 0); }
		public TerminalNode LSTHAN() { return getToken(PreciseV5Parser.LSTHAN, 0); }
		public TerminalNode NOTEQUAL() { return getToken(PreciseV5Parser.NOTEQUAL, 0); }
		public TerminalNode EQUAL() { return getToken(PreciseV5Parser.EQUAL, 0); }
		public ExpresionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expresion; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterExpresion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitExpresion(this);
		}
	}

	public final ExpresionContext expresion() throws RecognitionException {
		ExpresionContext _localctx = new ExpresionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_expresion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(151);
			exp();
			setState(154);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << GTHAN) | (1L << LTHAN) | (1L << GRTHAN) | (1L << LSTHAN) | (1L << NOTEQUAL) | (1L << EQUAL))) != 0)) {
				{
				setState(152);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << GTHAN) | (1L << LTHAN) | (1L << GRTHAN) | (1L << LSTHAN) | (1L << NOTEQUAL) | (1L << EQUAL))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(153);
				exp();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpContext extends ParserRuleContext {
		public List<TerminoContext> termino() {
			return getRuleContexts(TerminoContext.class);
		}
		public TerminoContext termino(int i) {
			return getRuleContext(TerminoContext.class,i);
		}
		public TerminalNode PLUS() { return getToken(PreciseV5Parser.PLUS, 0); }
		public TerminalNode MIN() { return getToken(PreciseV5Parser.MIN, 0); }
		public ExpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterExp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitExp(this);
		}
	}

	public final ExpContext exp() throws RecognitionException {
		ExpContext _localctx = new ExpContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_exp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			termino();
			setState(159);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
			case 1:
				{
				setState(157);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MIN) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(158);
				termino();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TerminoContext extends ParserRuleContext {
		public List<FactorContext> factor() {
			return getRuleContexts(FactorContext.class);
		}
		public FactorContext factor(int i) {
			return getRuleContext(FactorContext.class,i);
		}
		public TerminalNode DIV() { return getToken(PreciseV5Parser.DIV, 0); }
		public TerminalNode MUL() { return getToken(PreciseV5Parser.MUL, 0); }
		public TerminoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_termino; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterTermino(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitTermino(this);
		}
	}

	public final TerminoContext termino() throws RecognitionException {
		TerminoContext _localctx = new TerminoContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_termino);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(161);
			factor();
			setState(164);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				{
				setState(162);
				_la = _input.LA(1);
				if ( !(_la==DIV || _la==MUL) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(163);
				factor();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FactorContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public ExpresionContext expresion() {
			return getRuleContext(ExpresionContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public VarcteContext varcte() {
			return getRuleContext(VarcteContext.class,0);
		}
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterFactor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitFactor(this);
		}
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_factor);
		try {
			setState(171);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LPAREN:
				enterOuterAlt(_localctx, 1);
				{
				setState(166);
				match(LPAREN);
				setState(167);
				expresion();
				setState(168);
				match(RPAREN);
				}
				break;
			case CTEINT:
			case CTEFLOAT:
			case CTEBOOL:
			case CTECHAR:
			case ID:
				enterOuterAlt(_localctx, 2);
				{
				setState(170);
				varcte();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CondicionContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(PreciseV5Parser.IF, 0); }
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public ExpresionboolContext expresionbool() {
			return getRuleContext(ExpresionboolContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public List<TerminalNode> LCBRA() { return getTokens(PreciseV5Parser.LCBRA); }
		public TerminalNode LCBRA(int i) {
			return getToken(PreciseV5Parser.LCBRA, i);
		}
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public List<TerminalNode> RCBRA() { return getTokens(PreciseV5Parser.RCBRA); }
		public TerminalNode RCBRA(int i) {
			return getToken(PreciseV5Parser.RCBRA, i);
		}
		public TerminalNode ELSE() { return getToken(PreciseV5Parser.ELSE, 0); }
		public CondicionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condicion; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterCondicion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitCondicion(this);
		}
	}

	public final CondicionContext condicion() throws RecognitionException {
		CondicionContext _localctx = new CondicionContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_condicion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(173);
			match(IF);
			setState(174);
			match(LPAREN);
			setState(175);
			expresionbool();
			setState(176);
			match(RPAREN);
			setState(177);
			match(LCBRA);
			setState(178);
			estatuto();
			setState(179);
			match(RCBRA);
			setState(185);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(180);
				match(ELSE);
				setState(181);
				match(LCBRA);
				setState(182);
				estatuto();
				setState(183);
				match(RCBRA);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CicloContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(PreciseV5Parser.WHILE, 0); }
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public ExpresionboolContext expresionbool() {
			return getRuleContext(ExpresionboolContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public TerminalNode LCBRA() { return getToken(PreciseV5Parser.LCBRA, 0); }
		public TerminalNode RCBRA() { return getToken(PreciseV5Parser.RCBRA, 0); }
		public List<EstatutoContext> estatuto() {
			return getRuleContexts(EstatutoContext.class);
		}
		public EstatutoContext estatuto(int i) {
			return getRuleContext(EstatutoContext.class,i);
		}
		public CicloContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ciclo; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterCiclo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitCiclo(this);
		}
	}

	public final CicloContext ciclo() throws RecognitionException {
		CicloContext _localctx = new CicloContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_ciclo);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(187);
			match(WHILE);
			setState(188);
			match(LPAREN);
			setState(189);
			expresionbool();
			setState(190);
			match(RPAREN);
			setState(191);
			match(LCBRA);
			setState(195);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << DECLARE) | (1L << IF) | (1L << PRINT) | (1L << READ) | (1L << WHILE) | (1L << ID))) != 0)) {
				{
				{
				setState(192);
				estatuto();
				}
				}
				setState(197);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(198);
			match(RCBRA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EscrituraContext extends ParserRuleContext {
		public TerminalNode PRINT() { return getToken(PreciseV5Parser.PRINT, 0); }
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public TerminalNode SCOLON() { return getToken(PreciseV5Parser.SCOLON, 0); }
		public List<ExpresionboolContext> expresionbool() {
			return getRuleContexts(ExpresionboolContext.class);
		}
		public ExpresionboolContext expresionbool(int i) {
			return getRuleContext(ExpresionboolContext.class,i);
		}
		public List<VarcteContext> varcte() {
			return getRuleContexts(VarcteContext.class);
		}
		public VarcteContext varcte(int i) {
			return getRuleContext(VarcteContext.class,i);
		}
		public EscrituraContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_escritura; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterEscritura(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitEscritura(this);
		}
	}

	public final EscrituraContext escritura() throws RecognitionException {
		EscrituraContext _localctx = new EscrituraContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_escritura);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(200);
			match(PRINT);
			setState(201);
			match(LPAREN);
			setState(204); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(204);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
				case 1:
					{
					setState(202);
					expresionbool();
					}
					break;
				case 2:
					{
					setState(203);
					varcte();
					}
					break;
				}
				}
				setState(206); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LPAREN) | (1L << CTEINT) | (1L << CTEFLOAT) | (1L << CTEBOOL) | (1L << CTECHAR) | (1L << ID))) != 0) );
			setState(208);
			match(RPAREN);
			setState(209);
			match(SCOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LecturaContext extends ParserRuleContext {
		public TerminalNode READ() { return getToken(PreciseV5Parser.READ, 0); }
		public TerminalNode LPAREN() { return getToken(PreciseV5Parser.LPAREN, 0); }
		public TerminalNode ID() { return getToken(PreciseV5Parser.ID, 0); }
		public TerminalNode RPAREN() { return getToken(PreciseV5Parser.RPAREN, 0); }
		public TerminalNode SCOLON() { return getToken(PreciseV5Parser.SCOLON, 0); }
		public ArrayContext array() {
			return getRuleContext(ArrayContext.class,0);
		}
		public LecturaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lectura; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterLectura(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitLectura(this);
		}
	}

	public final LecturaContext lectura() throws RecognitionException {
		LecturaContext _localctx = new LecturaContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_lectura);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(211);
			match(READ);
			setState(212);
			match(LPAREN);
			setState(213);
			match(ID);
			setState(215);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LBRA) {
				{
				setState(214);
				array();
				}
			}

			setState(217);
			match(RPAREN);
			setState(218);
			match(SCOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AsignacionContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(PreciseV5Parser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(PreciseV5Parser.ASSIGN, 0); }
		public ExpresionboolContext expresionbool() {
			return getRuleContext(ExpresionboolContext.class,0);
		}
		public TerminalNode SCOLON() { return getToken(PreciseV5Parser.SCOLON, 0); }
		public ArrayContext array() {
			return getRuleContext(ArrayContext.class,0);
		}
		public AsignacionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_asignacion; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterAsignacion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitAsignacion(this);
		}
	}

	public final AsignacionContext asignacion() throws RecognitionException {
		AsignacionContext _localctx = new AsignacionContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_asignacion);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(220);
			match(ID);
			setState(222);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==LBRA) {
				{
				setState(221);
				array();
				}
			}

			setState(224);
			match(ASSIGN);
			setState(225);
			expresionbool();
			setState(226);
			match(SCOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarcteContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(PreciseV5Parser.ID, 0); }
		public TerminalNode LBRA() { return getToken(PreciseV5Parser.LBRA, 0); }
		public List<ExpContext> exp() {
			return getRuleContexts(ExpContext.class);
		}
		public ExpContext exp(int i) {
			return getRuleContext(ExpContext.class,i);
		}
		public TerminalNode RBRA() { return getToken(PreciseV5Parser.RBRA, 0); }
		public List<TerminalNode> LPAREN() { return getTokens(PreciseV5Parser.LPAREN); }
		public TerminalNode LPAREN(int i) {
			return getToken(PreciseV5Parser.LPAREN, i);
		}
		public List<TerminalNode> RPAREN() { return getTokens(PreciseV5Parser.RPAREN); }
		public TerminalNode RPAREN(int i) {
			return getToken(PreciseV5Parser.RPAREN, i);
		}
		public List<TerminalNode> COMA() { return getTokens(PreciseV5Parser.COMA); }
		public TerminalNode COMA(int i) {
			return getToken(PreciseV5Parser.COMA, i);
		}
		public TerminalNode CTEINT() { return getToken(PreciseV5Parser.CTEINT, 0); }
		public TerminalNode CTEFLOAT() { return getToken(PreciseV5Parser.CTEFLOAT, 0); }
		public TerminalNode CTEBOOL() { return getToken(PreciseV5Parser.CTEBOOL, 0); }
		public TerminalNode CTECHAR() { return getToken(PreciseV5Parser.CTECHAR, 0); }
		public VarcteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varcte; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).enterVarcte(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof PreciseV5Listener ) ((PreciseV5Listener)listener).exitVarcte(this);
		}
	}

	public final VarcteContext varcte() throws RecognitionException {
		VarcteContext _localctx = new VarcteContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_varcte);
		int _la;
		try {
			int _alt;
			setState(249);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(228);
				match(ID);
				setState(243);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==LBRA) {
					{
					setState(229);
					match(LBRA);
					setState(230);
					exp();
					setState(231);
					match(RBRA);
					setState(240);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
					while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
						if ( _alt==1 ) {
							{
							setState(238);
							_errHandler.sync(this);
							switch (_input.LA(1)) {
							case LPAREN:
								{
								setState(232);
								match(LPAREN);
								setState(233);
								exp();
								setState(234);
								match(RPAREN);
								}
								break;
							case COMA:
								{
								setState(236);
								match(COMA);
								setState(237);
								exp();
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							} 
						}
						setState(242);
						_errHandler.sync(this);
						_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
					}
					}
				}

				}
				break;
			case CTEINT:
				enterOuterAlt(_localctx, 2);
				{
				setState(245);
				match(CTEINT);
				}
				break;
			case CTEFLOAT:
				enterOuterAlt(_localctx, 3);
				{
				setState(246);
				match(CTEFLOAT);
				}
				break;
			case CTEBOOL:
				enterOuterAlt(_localctx, 4);
				{
				setState(247);
				match(CTEBOOL);
				}
				break;
			case CTECHAR:
				enterOuterAlt(_localctx, 5);
				{
				setState(248);
				match(CTECHAR);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\61\u00fe\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\3\2\3\2\5\2+\n\2\3\2\5\2.\n\2\3\2\3\2\3\2\3\2\3\3\3"+
		"\3\3\3\3\3\5\38\n\3\3\3\3\3\3\3\5\3=\n\3\7\3?\n\3\f\3\16\3B\13\3\3\3\3"+
		"\3\3\3\3\3\5\3H\n\3\3\3\3\3\3\3\5\3M\n\3\7\3O\n\3\f\3\16\3R\13\3\3\3\3"+
		"\3\5\3V\n\3\3\4\3\4\3\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\7\6c\n\6\f\6\16"+
		"\6f\13\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\7\5\7p\n\7\3\b\3\b\3\b\7\bu\n\b"+
		"\f\b\16\bx\13\b\3\t\3\t\3\t\5\t}\n\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\7"+
		"\t\u0087\n\t\f\t\16\t\u008a\13\t\5\t\u008c\n\t\3\t\3\t\3\t\3\t\3\t\7\t"+
		"\u0093\n\t\f\t\16\t\u0096\13\t\3\t\3\t\3\n\3\n\3\n\5\n\u009d\n\n\3\13"+
		"\3\13\3\13\5\13\u00a2\n\13\3\f\3\f\3\f\5\f\u00a7\n\f\3\r\3\r\3\r\3\r\3"+
		"\r\5\r\u00ae\n\r\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\5\16\u00bc\n\16\3\17\3\17\3\17\3\17\3\17\3\17\7\17\u00c4\n\17\f"+
		"\17\16\17\u00c7\13\17\3\17\3\17\3\20\3\20\3\20\3\20\6\20\u00cf\n\20\r"+
		"\20\16\20\u00d0\3\20\3\20\3\20\3\21\3\21\3\21\3\21\5\21\u00da\n\21\3\21"+
		"\3\21\3\21\3\22\3\22\5\22\u00e1\n\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\7\23\u00f1\n\23\f\23\16\23\u00f4\13"+
		"\23\5\23\u00f6\n\23\3\23\3\23\3\23\3\23\5\23\u00fc\n\23\3\23\2\2\24\2"+
		"\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$\2\7\3\2\r\20\3\2\'(\3\2!&\3"+
		"\2\34\35\3\2\36\37\2\u0110\2&\3\2\2\2\4\63\3\2\2\2\6W\3\2\2\2\bY\3\2\2"+
		"\2\n]\3\2\2\2\fo\3\2\2\2\16q\3\2\2\2\20y\3\2\2\2\22\u0099\3\2\2\2\24\u009e"+
		"\3\2\2\2\26\u00a3\3\2\2\2\30\u00ad\3\2\2\2\32\u00af\3\2\2\2\34\u00bd\3"+
		"\2\2\2\36\u00ca\3\2\2\2 \u00d5\3\2\2\2\"\u00de\3\2\2\2$\u00fb\3\2\2\2"+
		"&\'\7\3\2\2\'(\7\60\2\2(*\7\22\2\2)+\5\4\3\2*)\3\2\2\2*+\3\2\2\2+-\3\2"+
		"\2\2,.\5\20\t\2-,\3\2\2\2-.\3\2\2\2./\3\2\2\2/\60\5\n\6\2\60\61\7\6\2"+
		"\2\61\62\7\23\2\2\62\3\3\2\2\2\63\64\7\4\2\2\64\65\5\6\4\2\65\67\7\60"+
		"\2\2\668\5\b\5\2\67\66\3\2\2\2\678\3\2\2\28@\3\2\2\29:\7\24\2\2:<\7\60"+
		"\2\2;=\5\b\5\2<;\3\2\2\2<=\3\2\2\2=?\3\2\2\2>9\3\2\2\2?B\3\2\2\2@>\3\2"+
		"\2\2@A\3\2\2\2AC\3\2\2\2B@\3\2\2\2CU\7\23\2\2DE\5\6\4\2EG\7\60\2\2FH\5"+
		"\b\5\2GF\3\2\2\2GH\3\2\2\2HP\3\2\2\2IJ\7\24\2\2JL\7\60\2\2KM\5\b\5\2L"+
		"K\3\2\2\2LM\3\2\2\2MO\3\2\2\2NI\3\2\2\2OR\3\2\2\2PN\3\2\2\2PQ\3\2\2\2"+
		"QS\3\2\2\2RP\3\2\2\2ST\7\23\2\2TV\3\2\2\2UD\3\2\2\2UV\3\2\2\2V\5\3\2\2"+
		"\2WX\t\2\2\2X\7\3\2\2\2YZ\7\31\2\2Z[\5$\23\2[\\\7\30\2\2\\\t\3\2\2\2]"+
		"^\7\7\2\2^_\7\27\2\2_`\7\26\2\2`d\7\33\2\2ac\5\f\7\2ba\3\2\2\2cf\3\2\2"+
		"\2db\3\2\2\2de\3\2\2\2eg\3\2\2\2fd\3\2\2\2gh\7\32\2\2h\13\3\2\2\2ip\5"+
		"\32\16\2jp\5\34\17\2kp\5\36\20\2lp\5 \21\2mp\5\"\22\2np\5\4\3\2oi\3\2"+
		"\2\2oj\3\2\2\2ok\3\2\2\2ol\3\2\2\2om\3\2\2\2on\3\2\2\2p\r\3\2\2\2qv\5"+
		"\22\n\2rs\t\3\2\2su\5\22\n\2tr\3\2\2\2ux\3\2\2\2vt\3\2\2\2vw\3\2\2\2w"+
		"\17\3\2\2\2xv\3\2\2\2y|\7\5\2\2z}\5\6\4\2{}\7\21\2\2|z\3\2\2\2|{\3\2\2"+
		"\2}~\3\2\2\2~\177\7\60\2\2\177\u008b\7\27\2\2\u0080\u0081\5\6\4\2\u0081"+
		"\u0088\7\60\2\2\u0082\u0083\7\24\2\2\u0083\u0084\5\6\4\2\u0084\u0085\7"+
		"\60\2\2\u0085\u0087\3\2\2\2\u0086\u0082\3\2\2\2\u0087\u008a\3\2\2\2\u0088"+
		"\u0086\3\2\2\2\u0088\u0089\3\2\2\2\u0089\u008c\3\2\2\2\u008a\u0088\3\2"+
		"\2\2\u008b\u0080\3\2\2\2\u008b\u008c\3\2\2\2\u008c\u008d\3\2\2\2\u008d"+
		"\u008e\7\26\2\2\u008e\u008f\7\33\2\2\u008f\u0094\5\f\7\2\u0090\u0091\7"+
		"\23\2\2\u0091\u0093\5\f\7\2\u0092\u0090\3\2\2\2\u0093\u0096\3\2\2\2\u0094"+
		"\u0092\3\2\2\2\u0094\u0095\3\2\2\2\u0095\u0097\3\2\2\2\u0096\u0094\3\2"+
		"\2\2\u0097\u0098\7\32\2\2\u0098\21\3\2\2\2\u0099\u009c\5\24\13\2\u009a"+
		"\u009b\t\4\2\2\u009b\u009d\5\24\13\2\u009c\u009a\3\2\2\2\u009c\u009d\3"+
		"\2\2\2\u009d\23\3\2\2\2\u009e\u00a1\5\26\f\2\u009f\u00a0\t\5\2\2\u00a0"+
		"\u00a2\5\26\f\2\u00a1\u009f\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2\25\3\2\2"+
		"\2\u00a3\u00a6\5\30\r\2\u00a4\u00a5\t\6\2\2\u00a5\u00a7\5\30\r\2\u00a6"+
		"\u00a4\3\2\2\2\u00a6\u00a7\3\2\2\2\u00a7\27\3\2\2\2\u00a8\u00a9\7\27\2"+
		"\2\u00a9\u00aa\5\22\n\2\u00aa\u00ab\7\26\2\2\u00ab\u00ae\3\2\2\2\u00ac"+
		"\u00ae\5$\23\2\u00ad\u00a8\3\2\2\2\u00ad\u00ac\3\2\2\2\u00ae\31\3\2\2"+
		"\2\u00af\u00b0\7\b\2\2\u00b0\u00b1\7\27\2\2\u00b1\u00b2\5\16\b\2\u00b2"+
		"\u00b3\7\26\2\2\u00b3\u00b4\7\33\2\2\u00b4\u00b5\5\f\7\2\u00b5\u00bb\7"+
		"\32\2\2\u00b6\u00b7\7\t\2\2\u00b7\u00b8\7\33\2\2\u00b8\u00b9\5\f\7\2\u00b9"+
		"\u00ba\7\32\2\2\u00ba\u00bc\3\2\2\2\u00bb\u00b6\3\2\2\2\u00bb\u00bc\3"+
		"\2\2\2\u00bc\33\3\2\2\2\u00bd\u00be\7\f\2\2\u00be\u00bf\7\27\2\2\u00bf"+
		"\u00c0\5\16\b\2\u00c0\u00c1\7\26\2\2\u00c1\u00c5\7\33\2\2\u00c2\u00c4"+
		"\5\f\7\2\u00c3\u00c2\3\2\2\2\u00c4\u00c7\3\2\2\2\u00c5\u00c3\3\2\2\2\u00c5"+
		"\u00c6\3\2\2\2\u00c6\u00c8\3\2\2\2\u00c7\u00c5\3\2\2\2\u00c8\u00c9\7\32"+
		"\2\2\u00c9\35\3\2\2\2\u00ca\u00cb\7\n\2\2\u00cb\u00ce\7\27\2\2\u00cc\u00cf"+
		"\5\16\b\2\u00cd\u00cf\5$\23\2\u00ce\u00cc\3\2\2\2\u00ce\u00cd\3\2\2\2"+
		"\u00cf\u00d0\3\2\2\2\u00d0\u00ce\3\2\2\2\u00d0\u00d1\3\2\2\2\u00d1\u00d2"+
		"\3\2\2\2\u00d2\u00d3\7\26\2\2\u00d3\u00d4\7\23\2\2\u00d4\37\3\2\2\2\u00d5"+
		"\u00d6\7\13\2\2\u00d6\u00d7\7\27\2\2\u00d7\u00d9\7\60\2\2\u00d8\u00da"+
		"\5\b\5\2\u00d9\u00d8\3\2\2\2\u00d9\u00da\3\2\2\2\u00da\u00db\3\2\2\2\u00db"+
		"\u00dc\7\26\2\2\u00dc\u00dd\7\23\2\2\u00dd!\3\2\2\2\u00de\u00e0\7\60\2"+
		"\2\u00df\u00e1\5\b\5\2\u00e0\u00df\3\2\2\2\u00e0\u00e1\3\2\2\2\u00e1\u00e2"+
		"\3\2\2\2\u00e2\u00e3\7)\2\2\u00e3\u00e4\5\16\b\2\u00e4\u00e5\7\23\2\2"+
		"\u00e5#\3\2\2\2\u00e6\u00f5\7\60\2\2\u00e7\u00e8\7\31\2\2\u00e8\u00e9"+
		"\5\24\13\2\u00e9\u00f2\7\30\2\2\u00ea\u00eb\7\27\2\2\u00eb\u00ec\5\24"+
		"\13\2\u00ec\u00ed\7\26\2\2\u00ed\u00f1\3\2\2\2\u00ee\u00ef\7\24\2\2\u00ef"+
		"\u00f1\5\24\13\2\u00f0\u00ea\3\2\2\2\u00f0\u00ee\3\2\2\2\u00f1\u00f4\3"+
		"\2\2\2\u00f2\u00f0\3\2\2\2\u00f2\u00f3\3\2\2\2\u00f3\u00f6\3\2\2\2\u00f4"+
		"\u00f2\3\2\2\2\u00f5\u00e7\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6\u00fc\3\2"+
		"\2\2\u00f7\u00fc\7,\2\2\u00f8\u00fc\7-\2\2\u00f9\u00fc\7.\2\2\u00fa\u00fc"+
		"\7/\2\2\u00fb\u00e6\3\2\2\2\u00fb\u00f7\3\2\2\2\u00fb\u00f8\3\2\2\2\u00fb"+
		"\u00f9\3\2\2\2\u00fb\u00fa\3\2\2\2\u00fc%\3\2\2\2 *-\67<@GLPUdov|\u0088"+
		"\u008b\u0094\u009c\u00a1\u00a6\u00ad\u00bb\u00c5\u00ce\u00d0\u00d9\u00e0"+
		"\u00f0\u00f2\u00f5\u00fb";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}