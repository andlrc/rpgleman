MANDIR	= $(PREFIX)/usr/share/man

all: bif kw cd

# Built-in Functions
bif:	bif_ABS		bif_ADDR	bif_ALLOC	bif_BITAND	\
	bif_BITNOT	bif_BITOR	bif_BITXOR	bif_CHAR	\
	bif_CHECK	bif_CHECKR	bif_DATE	bif_DAYS	\
	bif_DEC		bif_DECH	bif_DECPOS	bif_DIFF	\
	bif_DIV		bif_EDITC	bif_EDITFLT	bif_EDITW	\
	bif_ELEM	bif_EOF		bif_EQUAL	bif_ERROR	\
	bif_FIELDS	bif_FLOAT	bif_FOUND	bif_GRAPH	\
	bif_HANDLER	bif_HOURS	bif_INT		bif_INTH	\
	bif_KDS		bif_LEN		bif_LOOKUPxx	bif_MAX		\
	bif_MIN		bif_MINUTES	bif_MONTHS	bif_MSECONDS	\
	bif_NULLIND	bif_OCCUR	bif_OPEN	bif_PADDR	\
	bif_PARMNUM	bif_PARMS	bif_REALLOC	bif_REM	\
	bif_REPLACE	bif_SCAN	bif_SCANRPL	bif_SECONDS	\
	bif_SHTDN	bif_SIZE	bif_SQRT	bif_STATUS	\
	bif_STR		bif_SUBARR	bif_SUBDT	bif_SUBST	\
	bif_THIS	bif_TIME	bif_TIMESTAMP	bif_TLOOKUPxx	\
	bif_TRIM	bif_TRIML	bif_TRIMR	bif_UCS2	\
	bif_UNS		bif_UNSH	bif_XFOOT	bif_XLATE	\
	bif_XML		bif_YEARS	

# Keywords
kw:	kw_ALIAS	kw_ALIGN	kw_ALT		kw_ALTSEQ	\
	kw_ASCEND	kw_BASED	kw_BINDEC	kw_CCSID	\
	kw_CHAR		kw_CLASS	kw_CONST	kw_CTDATA	\
	kw_DATE		kw_DATFMT	kw_DESCEND	kw_DIM		\
	kw_DTAARA	kw_EXPORT	kw_EXT		kw_EXTFLD	\
	kw_EXTFMT	kw_EXTNAME	kw_EXTPGM	kw_EXTPROC	\
	kw_FLOAT	kw_FROMFILE	kw_GRAPH	kw_IMPORT	\
	kw_INT		kw_IND		kw_INZ		kw_LEN		\
	kw_LIKE		kw_LIKEDS	kw_LIKEFILE	kw_LIKEREC	\
	kw_NOOPT	kw_NULLIND	kw_OBJECT	kw_OCCURS	\
	kw_OPDESC	kw_OPTIONS	kw_OVERLAY	kw_PACKED	\
	kw_PACKEVEN	kw_PERRCD	kw_POINTER	kw_POS		\
	kw_PREFIX	kw_PROCPTR	kw_PSDS		kw_QUALIFIED	\
	kw_RTNPARM	kw_STATIC	kw_TEMPLATE	kw_TIME		\
	kw_TIMESTAMP	kw_TIMFMT	kw_TOFILE	kw_UCS2		\
	kw_UNS		kw_VALUE	kw_VARCHAR	kw_VARGRAPH	\
	kw_VARUCS2	kw_VARYING	kw_ZONED

# Compiler Directives
cd:	cd_TITLE	cd_EJECT	cd_SPACE	cd_SET		\
	cd_RESTORE	cd_COPY		cd_INCLUDE	cd_DEFINE	\
	cd_UNDEFINE	cd_IF		cd_ELSEIF	cd_ELSE		\
	cd_ENDIF	cd_EOF		cd_FREE		cd_END-FREE

clean:
	-rm -r man/man*

install:
	cp -r man/man* $(MANDIR)

uninstall:
	rm -r $(MANDIR)/man3RPG*

# BIF
bif_ABS:
	./getrpgleman bbabs
bif_ADDR:
	./getrpgleman bbaddr
bif_ALLOC:
	./getrpgleman bballoc
bif_BITAND:
	./getrpgleman bband
bif_BITNOT:
	./getrpgleman bbnot
bif_BITOR:
	./getrpgleman bbor
bif_BITXOR:
	./getrpgleman bbxor
bif_CHAR:
	./getrpgleman bbchar
bif_CHECK:
	./getrpgleman bbchk
bif_CHECKR:
	./getrpgleman bbchkr
bif_DATE:
	./getrpgleman bbdate
bif_DAYS:
	./getrpgleman bbday
bif_DEC:
	./getrpgleman bbdec
bif_DECH:
	./getrpgleman bbdech
bif_DECPOS:
	./getrpgleman bbdecp
bif_DIFF:
	./getrpgleman bbdif
bif_DIV:
	./getrpgleman bbdiv
bif_EDITC:
	./getrpgleman bbeditc
bif_EDITFLT:
	./getrpgleman bbeditf
bif_EDITW:
	./getrpgleman bbeditw
bif_ELEM:
	./getrpgleman bbelem
bif_EOF:
	./getrpgleman bbeof
bif_EQUAL:
	./getrpgleman bbequal
bif_ERROR:
	./getrpgleman bberror
bif_FIELDS:
	./getrpgleman bbfields
bif_FLOAT:
	./getrpgleman bbfloat
bif_FOUND:
	./getrpgleman bbfound
bif_GRAPH:
	./getrpgleman bbgraph
bif_HANDLER:
	./getrpgleman bbhandl
bif_HOURS:
	./getrpgleman bbhou
bif_INT:
	./getrpgleman bbint
bif_INTH:
	./getrpgleman bbinth
bif_KDS:
	./getrpgleman bbkds
bif_LEN:
	./getrpgleman bblen
bif_LOOKUPxx:
	./getrpgleman bbloo
bif_MAX:
	./getrpgleman bbmaxvalue
bif_MIN:
	./getrpgleman bbminvalue
bif_MINUTES:
	./getrpgleman bbmin
bif_MONTHS:
	./getrpgleman bbmon
bif_MSECONDS:
	./getrpgleman bbmsec
bif_NULLIND:
	./getrpgleman bbnull
bif_OCCUR:
	./getrpgleman bboccur
bif_OPEN:
	./getrpgleman bbopen
bif_PADDR:
	./getrpgleman bbpaddr
bif_PARMNUM:
	./getrpgleman bbparmnum
bif_PARMS:
	./getrpgleman bbparm
bif_REALLOC:
	./getrpgleman bbreall
bif_REM:
	./getrpgleman bbrem
bif_REPLACE:
	./getrpgleman bbrepl
bif_SCAN:
	./getrpgleman bbscan
bif_SCANR:
	./getrpgleman bbscanr
bif_SCANRPL:
	./getrpgleman bbscanrp
bif_SECONDS:
	./getrpgleman bbsec
bif_SHTDN:
	./getrpgleman bbshut
bif_SIZE:
	./getrpgleman bbsize
bif_SQRT:
	./getrpgleman bbsqrt
bif_STATUS:
	./getrpgleman bbstat
bif_STR:
	./getrpgleman bbstr
bif_SUBARR:
	./getrpgleman bbsubarr
bif_SUBDT:
	./getrpgleman bbsubd
bif_SUBST:
	./getrpgleman bbsubs9
bif_THIS:
	./getrpgleman bbthis
bif_TIME:
	./getrpgleman bbtime
bif_TIMESTAMP:
	./getrpgleman bbtmst
bif_TLOOKUPxx:
	./getrpgleman bbtloo
bif_TRIM:
	./getrpgleman bbtrim
bif_TRIML:
	./getrpgleman bbtriml
bif_TRIMR:
	./getrpgleman bbtrimr
bif_UCS2:
	./getrpgleman bbucs2
bif_UNS:
	./getrpgleman bbuns
bif_UNSH:
	./getrpgleman bbunsh
bif_XFOOT:
	./getrpgleman bbxfoot
bif_XLATE:
	./getrpgleman bbxlat
bif_XML:
	./getrpgleman bbxml
bif_YEARS:
	./getrpgleman bbyear

# Keywords
kw_ALIAS:
	./getrpgleman dalias
kw_ALIGN:
	./getrpgleman dalign
kw_ALT:
	./getrpgleman dalt
kw_ALTSEQ:
	./getrpgleman daltsq
kw_ASCEND:
	./getrpgleman dascend
kw_BASED:
	./getrpgleman dbased
kw_BINDEC:
	./getrpgleman dkwbindec
kw_CCSID:
	./getrpgleman dccsid
kw_CHAR:
	./getrpgleman dkwchar
kw_CLASS:
	./getrpgleman dclass
kw_CONST:
	./getrpgleman dconst
kw_CTDATA:
	./getrpgleman dctdata
kw_DATE:
	./getrpgleman dkwdate
kw_DATFMT:
	./getrpgleman ddatfmt
kw_DESCEND:
	./getrpgleman ddescnd
kw_DIM:
	./getrpgleman ddim
kw_DTAARA:
	./getrpgleman ddtaara
kw_EXPORT:
	./getrpgleman dexport
kw_EXT:
	./getrpgleman dkwext
kw_EXTFLD:
	./getrpgleman dextfld
kw_EXTFMT:
	./getrpgleman dextfmt
kw_EXTNAME:
	./getrpgleman dextnam
kw_EXTPGM:
	./getrpgleman dextpgm
kw_EXTPROC:
	./getrpgleman dextprc
kw_FLOAT:
	./getrpgleman dkwfloat
kw_FROMFILE:
	./getrpgleman dfrfile
kw_GRAPH:
	./getrpgleman dkwgraph
kw_IMPORT:
	./getrpgleman dimport
kw_INT:
	./getrpgleman dkwint
kw_IND:
	./getrpgleman dkwind
kw_INZ:
	./getrpgleman dinz
kw_LEN:
	./getrpgleman dkwlen
kw_LIKE:
	./getrpgleman dlike
kw_LIKEDS:
	./getrpgleman dlikeds
kw_LIKEFILE:
	./getrpgleman dlikefile
kw_LIKEREC:
	./getrpgleman dlikerec
kw_NOOPT:
	./getrpgleman dnoopt
kw_NULLIND:
	./getrpgleman dkwnullind
kw_OBJECT:
	./getrpgleman dkwobject
kw_OCCURS:
	./getrpgleman doccurs
kw_OPDESC:
	./getrpgleman dopdesc
kw_OPTIONS:
	./getrpgleman doptns
kw_OVERLAY:
	./getrpgleman doverly
kw_PACKED:
	./getrpgleman dkwpacked
kw_PACKEVEN:
	./getrpgleman dpackev
kw_PERRCD:
	./getrpgleman dperrcd
kw_POINTER:
	./getrpgleman dkwpointer
kw_POS:
	./getrpgleman dkwpos
kw_PREFIX:
	./getrpgleman dprefix
kw_PROCPTR:
	./getrpgleman dprcptr
kw_PSDS:
	./getrpgleman dkwpsds
kw_QUALIFIED:
	./getrpgleman dqualif
kw_RTNPARM:
	./getrpgleman drtnparm
kw_STATIC:
	./getrpgleman dstatic
kw_TEMPLATE:
	./getrpgleman dtemplatekw
kw_TIME:
	./getrpgleman dkwtime
kw_TIMESTAMP:
	./getrpgleman dkwtimestamp
kw_TIMFMT:
	./getrpgleman dtimfmt
kw_TOFILE:
	./getrpgleman dtofile
kw_UCS2:
	./getrpgleman dkwucs2
kw_UNS:
	./getrpgleman dkwuns
kw_VALUE:
	./getrpgleman dvalue
kw_VARCHAR:
	./getrpgleman dkwvarchar
kw_VARGRAPH:
	./getrpgleman dkwvargraph
kw_VARUCS2:
	./getrpgleman dkwvarucs2
kw_VARYING:
	./getrpgleman dvaryg
kw_ZONED:
	./getrpgleman dkwzoned

cd_TITLE:
	./getrpgleman --section 3RPGCOMPDIR cdtitle
cd_EJECT:
	./getrpgleman --section 3RPGCOMPDIR cdeject
cd_SPACE:
	./getrpgleman --section 3RPGCOMPDIR cdspace
cd_SET:
	./getrpgleman --section 3RPGCOMPDIR cdset
cd_RESTORE:
	./getrpgleman --section 3RPGCOMPDIR cdrestore
cd_COPY:
	./getrpgleman --section 3RPGCOMPDIR --name COPY cdcopy
cd_INCLUDE:
	./getrpgleman --section 3RPGCOMPDIR --name INCLUDE cdcopy
cd_DEFINE:
	./getrpgleman --section 3RPGCOMPDIR cddef
cd_UNDEFINE:
	./getrpgleman --section 3RPGCOMPDIR cdund
cd_IF:
	./getrpgleman --section 3RPGCOMPDIR cdif
cd_ELSEIF:
	./getrpgleman --section 3RPGCOMPDIR cdeif
cd_ELSE:
	./getrpgleman --section 3RPGCOMPDIR cdels
cd_ENDIF:
	./getrpgleman --section 3RPGCOMPDIR cdendif
cd_EOF:
	./getrpgleman --section 3RPGCOMPDIR cdeof
cd_FREE:
	./getrpgleman --section 3RPGCOMPDIR --name FREE freefree
cd_END-FREE:
	./getrpgleman --section 3RPGCOMPDIR --name END-FREE freefree
