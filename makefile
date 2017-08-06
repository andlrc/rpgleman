MANDIR	= $(PREFIX)/usr/share/man/man3RPG

all: bif keywords

bif:	%ABS %ADDR %ALLOC %BITAND %BITNOT %BITOR %BITXOR %CHAR %CHECK  \
	%CHECKR %DATE %DAYS %DEC %DECH %DECPOS %DIFF %DIV %EDITC       \
	%EDITFLT %EDITW %ELEM %EOF %EQUAL %ERROR %FIELDS %FLOAT %FOUND \
	%GRAPH %HANDLER %HOURS %INT %INTH %KDS %LEN %LOOKUPxx %MAX     \
	%MIN %MINUTES %MONTHS %MSECONDS %NULLIND %OCCUR %OPEN %PADDR   \
	%PARMNUM %PARMS %REALLOC %REM %REPLACE %SCAN %SCANRPL %SECONDS \
	%SHTDN %SIZE %SQRT %STATUS %STR %SUBARR %SUBDT %SUBST %THIS    \
	%TIME %TIMESTAMP %TLOOKUPxx %TRIM %TRIML %TRIMR %UCS2 %UNS     \
	%UNSH %XFOOT %XLATE %XML %YEARS 

keywords: ALIAS ALIGN ALT ALTSEQ ASCEND BASED BINDEC CCSID CHAR CLASS  \
	CONST CTDATA DATE DATFMT DESCEND DIM DTAARA EXPORT EXT EXTFLD  \
	EXTFMT EXTNAME EXTPGM EXTPROC FLOAT FROMFILE GRAPH IMPORT INT  \
	IND INZ LEN LIKE LIKEDS LIKEFILE LIKEREC NOOPT NULLIND OBJECT  \
	OCCURS OPDESC OPTIONS OVERLAY PACKED PACKEVEN PERRCD POINTER   \
	POS PREFIX PROCPTR PSDS QUALIFIED RTNPARM STATIC TEMPLATE TIME \
	TIMESTAMP TIMFMT TOFILE UCS2 UNS VALUE VARCHAR VARGRAPH        \
	VARUCS2 VARYING ZONED

clean:
	-rm man/*.3RPG

install:
	mkdir -p $(MANDIR)
	cp man/* $(MANDIR)

uninstall:
	rm -r $(MANDIR)

# BIF
\%ABS:
	./getrpgleman bbabs
\%ADDR:
	./getrpgleman bbaddr
\%ALLOC:
	./getrpgleman bballoc
\%BITAND:
	./getrpgleman bband
\%BITNOT:
	./getrpgleman bbnot
\%BITOR:
	./getrpgleman bbor
\%BITXOR:
	./getrpgleman bbxor
\%CHAR:
	./getrpgleman bbchar
\%CHECK:
	./getrpgleman bbchk
\%CHECKR:
	./getrpgleman bbchkr
\%DATE:
	./getrpgleman bbdate
\%DAYS:
	./getrpgleman bbday
\%DEC:
	./getrpgleman bbdec
\%DECH:
	./getrpgleman bbdech
\%DECPOS:
	./getrpgleman bbdecp
\%DIFF:
	./getrpgleman bbdif
\%DIV:
	./getrpgleman bbdiv
\%EDITC:
	./getrpgleman bbeditc
\%EDITFLT:
	./getrpgleman bbeditf
\%EDITW:
	./getrpgleman bbeditw
\%ELEM:
	./getrpgleman bbelem
\%EOF:
	./getrpgleman bbeof
\%EQUAL:
	./getrpgleman bbequal
\%ERROR:
	./getrpgleman bberror
\%FIELDS:
	./getrpgleman bbfields
\%FLOAT:
	./getrpgleman bbfloat
\%FOUND:
	./getrpgleman bbfound
\%GRAPH:
	./getrpgleman bbgraph
\%HANDLER:
	./getrpgleman bbhandl
\%HOURS:
	./getrpgleman bbhou
\%INT:
	./getrpgleman bbint
\%INTH:
	./getrpgleman bbinth
\%KDS:
	./getrpgleman bbkds
\%LEN:
	./getrpgleman bblen
\%LOOKUPxx:
	./getrpgleman bbloo
\%MAX:
	./getrpgleman bbmaxvalue
\%MIN:
	./getrpgleman bbminvalue
\%MINUTES:
	./getrpgleman bbmin
\%MONTHS:
	./getrpgleman bbmon
\%MSECONDS:
	./getrpgleman bbmsec
\%NULLIND:
	./getrpgleman bbnull
\%OCCUR:
	./getrpgleman bboccur
\%OPEN:
	./getrpgleman bbopen
\%PADDR:
	./getrpgleman bbpaddr
\%PARMNUM:
	./getrpgleman bbparmnum
\%PARMS:
	./getrpgleman bbparm
\%REALLOC:
	./getrpgleman bbreall
\%REM:
	./getrpgleman bbrem
\%REPLACE:
	./getrpgleman bbrepl
\%SCAN:
	./getrpgleman bbscan
\%SCANR:
	./getrpgleman bbscanr
\%SCANRPL:
	./getrpgleman bbscanrp
\%SECONDS:
	./getrpgleman bbsec
\%SHTDN:
	./getrpgleman bbshut
\%SIZE:
	./getrpgleman bbsize
\%SQRT:
	./getrpgleman bbsqrt
\%STATUS:
	./getrpgleman bbstat
\%STR:
	./getrpgleman bbstr
\%SUBARR:
	./getrpgleman bbsubarr
\%SUBDT:
	./getrpgleman bbsubd
\%SUBST:
	./getrpgleman bbsubs9
\%THIS:
	./getrpgleman bbthis
\%TIME:
	./getrpgleman bbtime
\%TIMESTAMP:
	./getrpgleman bbtmst
\%TLOOKUPxx:
	./getrpgleman bbtloo
\%TRIM:
	./getrpgleman bbtrim
\%TRIML:
	./getrpgleman bbtriml
\%TRIMR:
	./getrpgleman bbtrimr
\%UCS2:
	./getrpgleman bbucs2
\%UNS:
	./getrpgleman bbuns
\%UNSH:
	./getrpgleman bbunsh
\%XFOOT:
	./getrpgleman bbxfoot
\%XLATE:
	./getrpgleman bbxlat
\%XML:
	./getrpgleman bbxml
\%YEARS:
	./getrpgleman bbyear

# Keywords
ALIAS:
	./getrpgleman dalias
ALIGN:
	./getrpgleman dalign
ALT:
	./getrpgleman dalt
ALTSEQ:
	./getrpgleman daltsq
ASCEND:
	./getrpgleman dascend
BASED:
	./getrpgleman dbased
BINDEC:
	./getrpgleman dkwbindec
CCSID:
	./getrpgleman dccsid
CHAR:
	./getrpgleman dkwchar
CLASS:
	./getrpgleman dclass
CONST:
	./getrpgleman dconst
CTDATA:
	./getrpgleman dctdata
DATE:
	./getrpgleman dkwdate
DATFMT:
	./getrpgleman ddatfmt
DESCEND:
	./getrpgleman ddescnd
DIM:
	./getrpgleman ddim
DTAARA:
	./getrpgleman ddtaara
EXPORT:
	./getrpgleman dexport
EXT:
	./getrpgleman dkwext
EXTFLD:
	./getrpgleman dextfld
EXTFMT:
	./getrpgleman dextfmt
EXTNAME:
	./getrpgleman dextnam
EXTPGM:
	./getrpgleman dextpgm
EXTPROC:
	./getrpgleman dextprc
FLOAT:
	./getrpgleman dkwfloat
FROMFILE:
	./getrpgleman dfrfile
GRAPH:
	./getrpgleman dkwgraph
IMPORT:
	./getrpgleman dimport
INT:
	./getrpgleman dkwint
IND:
	./getrpgleman dkwind
INZ:
	./getrpgleman dinz
LEN:
	./getrpgleman dkwlen
LIKE:
	./getrpgleman dlike
LIKEDS:
	./getrpgleman dlikeds
LIKEFILE:
	./getrpgleman dlikefile
LIKEREC:
	./getrpgleman dlikerec
NOOPT:
	./getrpgleman dnoopt
NULLIND:
	./getrpgleman dkwnullind
OBJECT:
	./getrpgleman dkwobject
OCCURS:
	./getrpgleman doccurs
OPDESC:
	./getrpgleman dopdesc
OPTIONS:
	./getrpgleman doptns
OVERLAY:
	./getrpgleman doverly
PACKED:
	./getrpgleman dkwpacked
PACKEVEN:
	./getrpgleman dpackev
PERRCD:
	./getrpgleman dperrcd
POINTER:
	./getrpgleman dkwpointer
POS:
	./getrpgleman dkwpos
PREFIX:
	./getrpgleman dprefix
PROCPTR:
	./getrpgleman dprcptr
PSDS:
	./getrpgleman dkwpsds
QUALIFIED:
	./getrpgleman dqualif
RTNPARM:
	./getrpgleman drtnparm
STATIC:
	./getrpgleman dstatic
TEMPLATE:
	./getrpgleman dtemplatekw
TIME:
	./getrpgleman dkwtime
TIMESTAMP:
	./getrpgleman dkwtimestamp
TIMFMT:
	./getrpgleman dtimfmt
TOFILE:
	./getrpgleman dtofile
UCS2:
	./getrpgleman dkwucs2
UNS:
	./getrpgleman dkwuns
VALUE:
	./getrpgleman dvalue
VARCHAR:
	./getrpgleman dkwvarchar
VARGRAPH:
	./getrpgleman dkwvargraph
VARUCS2:
	./getrpgleman dkwvarucs2
VARYING:
	./getrpgleman dvaryg
ZONED:
	./getrpgleman dkwzoned
