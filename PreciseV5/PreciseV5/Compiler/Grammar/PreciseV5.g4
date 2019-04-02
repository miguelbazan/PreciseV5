grammar PreciseV5;

/*
 * Parser Rules


*/
  

preciseV5       : PROGRAM ID COLON declare? function* body END SCOLON ;
declare         : DECLARE type ID array? (COMA ID array?)* SCOLON (type ID array? (COMA ID array?)* SCOLON)?  ;
type            : INT | FLOAT | BOOL | CHAR ;
array           : LBRA varcte RBRA ;
body            : MAIN LPAREN RPAREN LCBRA estatuto* RCBRA ;
estatuto        : condicion | ciclo | escritura | lectura | asignacion | declare ;
expresionbool   : expresion ((AND | OR) expresion)* ;
function        : FUNCTION (type | VOID) ID LPAREN (type ID (COMA type ID)*)? RPAREN LCBRA declare? (estatuto (SCOLON estatuto)*)? RCBRA ;
expresion       : exp ((GTHAN | LTHAN | GRTHAN | LSTHAN | NOTEQUAL | EQUAL) exp)? ;
exp             : termino ((PLUS | MIN) termino )? ;
termino         : factor ((DIV | MUL) factor)? ;
factor          : LPAREN expresion RPAREN | varcte ;
condicion       : IF LPAREN expresionbool RPAREN LCBRA estatuto* RCBRA (ELSE LCBRA estatuto* RCBRA)? ;
ciclo           : WHILE LPAREN expresionbool RPAREN LCBRA estatuto* RCBRA ;
escritura       : PRINT LPAREN (expresionbool | varcte)+ RPAREN SCOLON ; 
lectura         : READ LPAREN ID (array)? RPAREN SCOLON ;
asignacion      : ID (array)? ASSIGN expresionbool SCOLON;
varcte          : ID (LBRA exp RBRA (LPAREN exp RPAREN | COMA exp)*)?| CTEINT | CTEFLOAT | CTEBOOL | CTECHAR ;

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


 /* PALABRAS RESERVADAS */

PROGRAM             : P R O G R A M ;
DECLARE             : D E C L A R E ;
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
CTEBOOL             : (TRUE|FALSE) ;
CTECHAR             : APOS [A-Za-z0-9_] APOS;

ID                  : [A-Za-z][A-Za-z0-9_]*;

BSPACE              : [ \t\n\r]+ -> skip ;
















