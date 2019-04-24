grammar PreciseV5;

/*
* Parser Rules


*/


preciseV5       : PROGRAM ID COLON declare*? function* body END SCOLON ;
declare         : VAR (ID | array) COLON type SCOLON ;
type            : INT | FLOAT | BOOL | CHAR ;
array           : ID LBRA exp RBRA ;
body            : MAIN LPAREN RPAREN LCBRA estatuto* RCBRA ;
estatuto        : condicion | ciclo | escritura | lectura | asignacion | declare | llamada ;
expresionbool   : expresion (pnCond (AND | OR) expresion)* ;
function        : FUNCTION (type | VOID) ID LPAREN (type ID (COMA type ID)*)? RPAREN LCBRA estatuto* (RETURN expresionbool SCOLON)? RCBRA ;
expresion       : exp (pnEq (GTHAN | LTHAN | GRTHAN | LSTHAN | NOTEQUAL | EQUAL) exp)? ;
exp             : termino (pnSA (PLUS | MIN) termino )? ;
termino         : factor (pnDM(DIV | MUL) factor)? ;
factor          : LPAREN expresion RPAREN | varcte | array | ID | llamada ;
condicion       : IF LPAREN expresionbool RPAREN pnIfWh LCBRA estatuto* RCBRA (ELSE pnElse LCBRA estatuto* RCBRA)? SCOLON ;
ciclo           : WHILE LPAREN expresionbool RPAREN pnIfWh LCBRA estatuto* RCBRA SCOLON ;
escritura       : PRINT LPAREN (TEXT | expresionbool) RPAREN SCOLON ;
lectura         : READ LPAREN ID (array)? RPAREN SCOLON ;
asignacion      : ID (array)? ASSIGN expresionbool SCOLON;
varcte          : CTEINT | CTEFLOAT | CTECHAR | 'true' | 'false' ;
llamada         : ID LPAREN expresionbool pnLlamadaL ((COMA pnLlamadaN expresionbool pnLlamadaL)*)? RPAREN ;




pnCond          : ;
pnEq            : ;
pnSA            : ;
pnDM            : ;
pnIfWh          : ;
pnElse          : ;
pnLlamadaL      : ;
pnLlamadaN      : ;



/*
* Lexer Rules
*/

// Fragementos de letras para distinguir entre mayusuclas y minusculas

fragment A          : ('A'|'a') ;
fragment B          : ('B'|'b') ;
fragment C          : ('C'|'c') ;
fragment D          : ('D'|'d') ;
fragment E          : ('E'|'e') ;
fragment F          : ('F'|'f') ;
fragment G          : ('G'|'g') ;
fragment H          : ('H'|'h') ;
fragment I          : ('I'|'i') ;
fragment J          : ('J'|'j') ;
fragment K          : ('K'|'k') ;
fragment L          : ('L'|'l') ;
fragment M          : ('M'|'m') ;
fragment N          : ('N'|'n') ;
fragment O          : ('O'|'o') ;
fragment P          : ('P'|'p') ;
fragment Q          : ('Q'|'q') ;
fragment R          : ('R'|'r') ;
fragment S          : ('S'|'s') ;
fragment T          : ('T'|'t') ;
fragment U          : ('U'|'u') ;
fragment V          : ('V'|'v') ;
fragment W          : ('W'|'w') ;
fragment X          : ('X'|'x') ;
fragment Y          : ('Y'|'y') ;
fragment Z          : ('Z'|'z') ;

fragment DIGIT      : ('0'..'9');
fragment LOWERCASE  : [a-z] ;
fragment UPPERCASE  : [A-Z] ;
fragment APOS       : ('\'');
fragment QUOTE      : ('"') ;


/* PALABRAS RESERVADAS */

PROGRAM             : P R O G R A M ;
VAR                 : V A R ;
FUNCTION            : F U N C T I O N ;
END                 : E N D ;
MAIN                : M A I N ;
IF                  : I F ;
ELSE                : E L S E ;
PRINT               : P R I N T ;
READ                : R E A D ;
WHILE               : W H I L E ;
INT                 : I N T ;
FLOAT               : F L O A T ;
CHAR                : C H A R ;
BOOL                : B O O L ;
VOID                : V O I D ;
RETURN              : R E T U R N ;


/* TOKENS */


COLON               : (':') ;
SCOLON              : (';') ;
COMA                : (',') ;
DOT                 : ('.') ;
RPAREN              : (')') ;
LPAREN              : ('(') ;
RBRA                : (']') ;
LBRA                : ('[') ;
RCBRA               : ('}') ;
LCBRA               : ('{') ;
PLUS                : ('+') ;
MIN                 : ('-') ;
DIV                 : ('/') ;
MUL                 : ('*') ;
MOD                 : ('%') ;
GTHAN               : ('>') ;
LTHAN               : ('<') ;
GRTHAN              : ('>=') ;
LSTHAN              : ('<=') ;
NOTEQUAL            : ('!=') ;
EQUAL               : ('==') ;
AND                 : ('&&') ;
OR                  : ('||') ;
ASSIGN              : ('=') ;

TRUE                : T R U E ;
FALSE               : F A L S E;

CTEINT              : DIGIT+ ;
CTEFLOAT            : DIGIT+ DOT DIGIT+;
CTECHAR             : APOS [A-Za-z0-9_] APOS;
TEXT                : QUOTE .*? QUOTE;


ID                  : [A-Za-z][A-Za-z0-9_]*;

BSPACE              : [ \t\n\r]+ -> skip ;
