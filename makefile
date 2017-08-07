MANDIR	= $(PREFIX)/usr/share/man
RPGLEMAN	= ./getrpgleman $(FLAGS)

all: bif dkw cop hkw cd

debug: clean
	$(MAKE) FLAGS=-d

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
	bif_PARMNUM	bif_PARMS	bif_REALLOC	bif_REM		\
	bif_REPLACE	bif_SCAN	bif_SCANRPL	bif_SECONDS	\
	bif_SHTDN	bif_SIZE	bif_SQRT	bif_STATUS	\
	bif_STR		bif_SUBARR	bif_SUBDT	bif_SUBST	\
	bif_THIS	bif_TIME	bif_TIMESTAMP	bif_TLOOKUPxx	\
	bif_TRIM	bif_TRIML	bif_TRIMR	bif_UCS2	\
	bif_UNS		bif_UNSH	bif_XFOOT	bif_XLATE	\
	bif_XML		bif_YEARS	

# Definition Keywords
dkw:	dkw_ALIAS	dkw_ALIGN	dkw_ALT		dkw_ALTSEQ	\
	dkw_ASCEND	dkw_BASED	dkw_BINDEC	dkw_CCSID	\
	dkw_CHAR	dkw_CLASS	dkw_CONST	dkw_CTDATA	\
	dkw_DATE	dkw_DATFMT	dkw_DESCEND	dkw_DIM		\
	dkw_DTAARA	dkw_EXPORT	dkw_EXT		dkw_EXTFLD	\
	dkw_EXTFMT	dkw_EXTNAME	dkw_EXTPGM	dkw_EXTPROC	\
	dkw_FLOAT	dkw_FROMFILE	dkw_GRAPH	dkw_IMPORT	\
	dkw_INT		dkw_IND		dkw_INZ		dkw_LEN		\
	dkw_LIKE	dkw_LIKEDS	dkw_LIKEFILE	dkw_LIKEREC	\
	dkw_NOOPT	dkw_NULLIND	dkw_OBJECT	dkw_OCCURS	\
	dkw_OPDESC	dkw_OPTIONS	dkw_OVERLAY	dkw_PACKED	\
	dkw_PACKEVEN	dkw_PERRCD	dkw_POINTER	dkw_POS		\
	dkw_PREFIX	dkw_PROCPTR	dkw_PSDS	dkw_QUALIFIED	\
	dkw_RTNPARM	dkw_STATIC	dkw_TEMPLATE	dkw_TIME	\
	dkw_TIMESTAMP	dkw_TIMFMT	dkw_TOFILE	dkw_UCS2	\
	dkw_UNS		dkw_VALUE	dkw_VARCHAR	dkw_VARGRAPH	\
	dkw_VARUCS2	dkw_VARYING	dkw_ZONED

# Free-Form Operations
cop:	cop_ACQ		cop_BEGSR	cop_CALLP	cop_CHAIN	\
	cop_CLEAR	cop_CLOSE	cop_COMMIT	cop_DEALLOC	\
	cop_DELETE	cop_DOU		cop_DOW		cop_DSPLY	\
	cop_DUMP	cop_ELSE	cop_ELSEIF	cop_ENDDO	\
	cop_ENDFOR	cop_ENDIF	cop_ENDMON	cop_ENDSL	\
	cop_ENDSR	cop_EVAL	cop_EVALR	cop_EXCEPT	\
	cop_EXFMT	cop_EXSR	cop_FEOD	cop_FOR		\
	cop_FORCE	cop_IF		cop_IN		cop_ITER	\
	cop_LEAVE	cop_LEAVESR	cop_MONITOR	cop_NEXT	\
	cop_ON-ERROR	cop_ON-EXIT	cop_OPEN	cop_OTHER	\
	cop_OUT		cop_POST	cop_READ	cop_READC	\
	cop_READE	cop_READP	cop_READPE	cop_REL		\
	cop_RESET	cop_RETURN	cop_ROLBK	cop_SELECT	\
	cop_SETGT	cop_SETLL	cop_SORTA	cop_TEST	\
	cop_UNLOCK	cop_UPDATE	cop_WHEN	cop_WRITE

# Control Keywords
hkw:	hkw_ALLOC	hkw_ACTGRP	hkw_ALTSEQ	hkw_ALWNULL	\
	hkw_AUT		hkw_BNDDIR	hkw_CCSID	hkw_CCSIDCVT	\
	hkw_COPYNEST	hkw_COPYRIGHT	hkw_CURSYM	hkw_CVTOPT	\
	hkw_DATEDIT	hkw_DATFMT	hkw_DCLOPT	hkw_DEBUG	\
	hkw_DECEDIT	hkw_DECPREC	hkw_DFTACTGRP	hkw_DFTNAME	\
	hkw_ENBPFRCOL	hkw_EXPROPTS	hkw_EXTBININT	hkw_FIXNBR	\
	hkw_FLYDIV	hkw_FORMSALIGN	hkw_FTRANS	hkw_GENLVL	\
	hkw_INDENT	hkw_INTPREC	hkw_LANGID	hkw_MAIN	\
	hkw_NOMAIN	hkw_OPENOPT	hkw_OPTIMIZE	hkw_OPTION	\
	hkw_PGMINFO	hkw_PRFDTA	hkw_SRTSEQ	hkw_STGMDL	\
	hkw_TEXT	hkw_THREAD	hkw_TIMFMT	hkw_TRUNCNBR	\
	hkw_USERPRF	hkw_VALIDATE

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
	$(RPGLEMAN) bbabs
bif_ADDR:
	$(RPGLEMAN) bbaddr
bif_ALLOC:
	$(RPGLEMAN) bballoc
bif_BITAND:
	$(RPGLEMAN) bband
bif_BITNOT:
	$(RPGLEMAN) bbnot
bif_BITOR:
	$(RPGLEMAN) bbor
bif_BITXOR:
	$(RPGLEMAN) bbxor
bif_CHAR:
	$(RPGLEMAN) bbchar
bif_CHECK:
	$(RPGLEMAN) bbchk
bif_CHECKR:
	$(RPGLEMAN) bbchkr
bif_DATE:
	$(RPGLEMAN) bbdate
bif_DAYS:
	$(RPGLEMAN) bbday
bif_DEC:
	$(RPGLEMAN) bbdec
bif_DECH:
	$(RPGLEMAN) bbdech
bif_DECPOS:
	$(RPGLEMAN) bbdecp
bif_DIFF:
	$(RPGLEMAN) bbdif
bif_DIV:
	$(RPGLEMAN) bbdiv
bif_EDITC:
	$(RPGLEMAN) bbeditc
bif_EDITFLT:
	$(RPGLEMAN) bbeditf
bif_EDITW:
	$(RPGLEMAN) bbeditw
bif_ELEM:
	$(RPGLEMAN) bbelem
bif_EOF:
	$(RPGLEMAN) bbeof
bif_EQUAL:
	$(RPGLEMAN) bbequal
bif_ERROR:
	$(RPGLEMAN) bberror
bif_FIELDS:
	$(RPGLEMAN) bbfields
bif_FLOAT:
	$(RPGLEMAN) bbfloat
bif_FOUND:
	$(RPGLEMAN) bbfound
bif_GRAPH:
	$(RPGLEMAN) bbgraph
bif_HANDLER:
	$(RPGLEMAN) bbhandl
bif_HOURS:
	$(RPGLEMAN) bbhou
bif_INT:
	$(RPGLEMAN) bbint
bif_INTH:
	$(RPGLEMAN) bbinth
bif_KDS:
	$(RPGLEMAN) bbkds
bif_LEN:
	$(RPGLEMAN) bblen
bif_LOOKUPxx:
	$(RPGLEMAN) bbloo
bif_MAX:
	$(RPGLEMAN) bbmaxvalue
bif_MIN:
	$(RPGLEMAN) bbminvalue
bif_MINUTES:
	$(RPGLEMAN) bbmin
bif_MONTHS:
	$(RPGLEMAN) bbmon
bif_MSECONDS:
	$(RPGLEMAN) bbmsec
bif_NULLIND:
	$(RPGLEMAN) bbnull
bif_OCCUR:
	$(RPGLEMAN) bboccur
bif_OPEN:
	$(RPGLEMAN) bbopen
bif_PADDR:
	$(RPGLEMAN) bbpaddr
bif_PARMNUM:
	$(RPGLEMAN) bbparmnum
bif_PARMS:
	$(RPGLEMAN) bbparm
bif_REALLOC:
	$(RPGLEMAN) bbreall
bif_REM:
	$(RPGLEMAN) bbrem
bif_REPLACE:
	$(RPGLEMAN) bbrepl
bif_SCAN:
	$(RPGLEMAN) bbscan
bif_SCANR:
	$(RPGLEMAN) bbscanr
bif_SCANRPL:
	$(RPGLEMAN) bbscanrp
bif_SECONDS:
	$(RPGLEMAN) bbsec
bif_SHTDN:
	$(RPGLEMAN) bbshut
bif_SIZE:
	$(RPGLEMAN) bbsize
bif_SQRT:
	$(RPGLEMAN) bbsqrt
bif_STATUS:
	$(RPGLEMAN) bbstat
bif_STR:
	$(RPGLEMAN) bbstr
bif_SUBARR:
	$(RPGLEMAN) bbsubarr
bif_SUBDT:
	$(RPGLEMAN) bbsubd
bif_SUBST:
	$(RPGLEMAN) bbsubs9
bif_THIS:
	$(RPGLEMAN) bbthis
bif_TIME:
	$(RPGLEMAN) bbtime
bif_TIMESTAMP:
	$(RPGLEMAN) bbtmst
bif_TLOOKUPxx:
	$(RPGLEMAN) bbtloo
bif_TRIM:
	$(RPGLEMAN) bbtrim
bif_TRIML:
	$(RPGLEMAN) bbtriml
bif_TRIMR:
	$(RPGLEMAN) bbtrimr
bif_UCS2:
	$(RPGLEMAN) bbucs2
bif_UNS:
	$(RPGLEMAN) bbuns
bif_UNSH:
	$(RPGLEMAN) bbunsh
bif_XFOOT:
	$(RPGLEMAN) bbxfoot
bif_XLATE:
	$(RPGLEMAN) bbxlat
bif_XML:
	$(RPGLEMAN) bbxml
bif_YEARS:
	$(RPGLEMAN) bbyear

# Definition Keywords
dkw_ALIAS:
	$(RPGLEMAN) dalias
dkw_ALIGN:
	$(RPGLEMAN) dalign
dkw_ALT:
	$(RPGLEMAN) dalt
dkw_ALTSEQ:
	$(RPGLEMAN) daltsq
dkw_ASCEND:
	$(RPGLEMAN) dascend
dkw_BASED:
	$(RPGLEMAN) dbased
dkw_BINDEC:
	$(RPGLEMAN) dkwbindec
dkw_CCSID:
	$(RPGLEMAN) dccsid
dkw_CHAR:
	$(RPGLEMAN) dkwchar
dkw_CLASS:
	$(RPGLEMAN) dclass
dkw_CONST:
	$(RPGLEMAN) dconst
dkw_CTDATA:
	$(RPGLEMAN) dctdata
dkw_DATE:
	$(RPGLEMAN) dkwdate
dkw_DATFMT:
	$(RPGLEMAN) ddatfmt
dkw_DESCEND:
	$(RPGLEMAN) ddescnd
dkw_DIM:
	$(RPGLEMAN) ddim
dkw_DTAARA:
	$(RPGLEMAN) ddtaara
dkw_EXPORT:
	$(RPGLEMAN) dexport
dkw_EXT:
	$(RPGLEMAN) dkwext
dkw_EXTFLD:
	$(RPGLEMAN) dextfld
dkw_EXTFMT:
	$(RPGLEMAN) dextfmt
dkw_EXTNAME:
	$(RPGLEMAN) dextnam
dkw_EXTPGM:
	$(RPGLEMAN) dextpgm
dkw_EXTPROC:
	$(RPGLEMAN) dextprc
dkw_FLOAT:
	$(RPGLEMAN) dkwfloat
dkw_FROMFILE:
	$(RPGLEMAN) dfrfile
dkw_GRAPH:
	$(RPGLEMAN) dkwgraph
dkw_IMPORT:
	$(RPGLEMAN) dimport
dkw_INT:
	$(RPGLEMAN) dkwint
dkw_IND:
	$(RPGLEMAN) dkwind
dkw_INZ:
	$(RPGLEMAN) dinz
dkw_LEN:
	$(RPGLEMAN) dkwlen
dkw_LIKE:
	$(RPGLEMAN) dlike
dkw_LIKEDS:
	$(RPGLEMAN) dlikeds
dkw_LIKEFILE:
	$(RPGLEMAN) dlikefile
dkw_LIKEREC:
	$(RPGLEMAN) dlikerec
dkw_NOOPT:
	$(RPGLEMAN) dnoopt
dkw_NULLIND:
	$(RPGLEMAN) dkwnullind
dkw_OBJECT:
	$(RPGLEMAN) dkwobject
dkw_OCCURS:
	$(RPGLEMAN) doccurs
dkw_OPDESC:
	$(RPGLEMAN) dopdesc
dkw_OPTIONS:
	$(RPGLEMAN) doptns
dkw_OVERLAY:
	$(RPGLEMAN) doverly
dkw_PACKED:
	$(RPGLEMAN) dkwpacked
dkw_PACKEVEN:
	$(RPGLEMAN) dpackev
dkw_PERRCD:
	$(RPGLEMAN) dperrcd
dkw_POINTER:
	$(RPGLEMAN) dkwpointer
dkw_POS:
	$(RPGLEMAN) dkwpos
dkw_PREFIX:
	$(RPGLEMAN) dprefix
dkw_PROCPTR:
	$(RPGLEMAN) dprcptr
dkw_PSDS:
	$(RPGLEMAN) dkwpsds
dkw_QUALIFIED:
	$(RPGLEMAN) dqualif
dkw_RTNPARM:
	$(RPGLEMAN) drtnparm
dkw_STATIC:
	$(RPGLEMAN) dstatic
dkw_TEMPLATE:
	$(RPGLEMAN) dtemplatekw
dkw_TIME:
	$(RPGLEMAN) dkwtime
dkw_TIMESTAMP:
	$(RPGLEMAN) dkwtimestamp
dkw_TIMFMT:
	$(RPGLEMAN) dtimfmt
dkw_TOFILE:
	$(RPGLEMAN) dtofile
dkw_UCS2:
	$(RPGLEMAN) dkwucs2
dkw_UNS:
	$(RPGLEMAN) dkwuns
dkw_VALUE:
	$(RPGLEMAN) dvalue
dkw_VARCHAR:
	$(RPGLEMAN) dkwvarchar
dkw_VARGRAPH:
	$(RPGLEMAN) dkwvargraph
dkw_VARUCS2:
	$(RPGLEMAN) dkwvarucs2
dkw_VARYING:
	$(RPGLEMAN) dvaryg
dkw_ZONED:
	$(RPGLEMAN) dkwzoned

# Free-Form Operations
cop_ACQ:
	$(RPGLEMAN) zzacq
cop_BEGSR:
	$(RPGLEMAN) zzbegsr
cop_CALLP:
	$(RPGLEMAN) zzcallp
cop_CHAIN:
	$(RPGLEMAN) zzchain
cop_CLEAR:
	$(RPGLEMAN) zzclear
cop_CLOSE:
	$(RPGLEMAN) zzclose
cop_COMMIT:
	$(RPGLEMAN) zzcomit
cop_DEALLOC:
	$(RPGLEMAN) zzdeall
cop_DELETE:
	$(RPGLEMAN) zzdelet
cop_DOU:
	$(RPGLEMAN) zzdou
cop_DOW:
	$(RPGLEMAN) zzdow
cop_DSPLY:
	$(RPGLEMAN) zzdsply
cop_DUMP:
	$(RPGLEMAN) zzdump
cop_ELSE:
	$(RPGLEMAN) zzelse
cop_ELSEIF:
	$(RPGLEMAN) zzelsif
cop_ENDDO:
	$(RPGLEMAN) --name ENDDO zzendyy
cop_ENDFOR:
	$(RPGLEMAN) --name ENDFOR zzendyy
cop_ENDIF:
	$(RPGLEMAN) --name ENDIF zzendyy
cop_ENDMON:
	$(RPGLEMAN) --name ENDMON zzendyy
cop_ENDSL:
	$(RPGLEMAN) --name ENDSL zzendyy
cop_ENDSR:
	$(RPGLEMAN) zzendsr
cop_EVAL:
	$(RPGLEMAN) zzeval
cop_EVALR:
	$(RPGLEMAN) zzevalr
cop_EXCEPT:
	$(RPGLEMAN) zzexcpt
cop_EXFMT:
	$(RPGLEMAN) zzexfmt
cop_EXSR:
	$(RPGLEMAN) zzexsr
cop_FEOD:
	$(RPGLEMAN) zzfeod
cop_FOR:
	$(RPGLEMAN) zzfor
cop_FORCE:
	$(RPGLEMAN) zzforce
cop_IF:
	$(RPGLEMAN) zzif
cop_IN:
	$(RPGLEMAN) zzin
cop_ITER:
	$(RPGLEMAN) zziter
cop_LEAVE:
	$(RPGLEMAN) zzleave
cop_LEAVESR:
	$(RPGLEMAN) zzlevsr
cop_MONITOR:
	$(RPGLEMAN) zzmonit
cop_NEXT:
	$(RPGLEMAN) zznext
cop_ON-ERROR:
	$(RPGLEMAN) zzonerr
cop_ON-EXIT:
	$(RPGLEMAN) zzonexit
cop_OPEN:
	$(RPGLEMAN) zzopen
cop_OTHER:
	$(RPGLEMAN) zzother
cop_OUT:
	$(RPGLEMAN) zzout
cop_POST:
	$(RPGLEMAN) zzpost
cop_READ:
	$(RPGLEMAN) zzread
cop_READC:
	$(RPGLEMAN) zzreadc
cop_READE:
	$(RPGLEMAN) zzreade
cop_READP:
	$(RPGLEMAN) zzreadp
cop_READPE:
	$(RPGLEMAN) zzredpe
cop_REL:
	$(RPGLEMAN) zzrel
cop_RESET:
	$(RPGLEMAN) zzreset
cop_RETURN:
	$(RPGLEMAN) zzretrn
cop_ROLBK:
	$(RPGLEMAN) zzrolbk
cop_SELECT:
	$(RPGLEMAN) zzselec
cop_SETGT:
	$(RPGLEMAN) zzsetgt
cop_SETLL:
	$(RPGLEMAN) zzsetll
cop_SORTA:
	$(RPGLEMAN) zzsorta
cop_TEST:
	$(RPGLEMAN) zztest
cop_UNLOCK:
	$(RPGLEMAN) zzunlck
cop_UPDATE:
	$(RPGLEMAN) zzupdat
cop_WHEN:
	$(RPGLEMAN) zzwhen
cop_WRITE:
	$(RPGLEMAN) zzwrite

# Control Keywords
hkw_ALLOC:
	$(RPGLEMAN) --section 3RPGHSPEC halloc
hkw_ACTGRP:
	$(RPGLEMAN) --section 3RPGHSPEC hactgrp
hkw_ALTSEQ:
	$(RPGLEMAN) --section 3RPGHSPEC haltseq
hkw_ALWNULL:
	$(RPGLEMAN) --section 3RPGHSPEC halwnul
hkw_AUT:
	$(RPGLEMAN) --section 3RPGHSPEC haut
hkw_BNDDIR:
	$(RPGLEMAN) --section 3RPGHSPEC hbnddir
hkw_CCSID:
	$(RPGLEMAN) --section 3RPGHSPEC hccsid
hkw_CCSIDCVT:
	$(RPGLEMAN) --section 3RPGHSPEC hccsidcvt
hkw_COPYNEST:
	$(RPGLEMAN) --section 3RPGHSPEC hcopyn
hkw_COPYRIGHT:
	$(RPGLEMAN) --section 3RPGHSPEC hcopyr
hkw_CURSYM:
	$(RPGLEMAN) --section 3RPGHSPEC hcursym
hkw_CVTOPT:
	$(RPGLEMAN) --section 3RPGHSPEC hcvtopt
hkw_DATEDIT:
	$(RPGLEMAN) --section 3RPGHSPEC hdedit
hkw_DATFMT:
	$(RPGLEMAN) --section 3RPGHSPEC hdatfmt
hkw_DCLOPT:
	$(RPGLEMAN) --section 3RPGHSPEC hdclopt
hkw_DEBUG:
	$(RPGLEMAN) --section 3RPGHSPEC hdebug
hkw_DECEDIT:
	$(RPGLEMAN) --section 3RPGHSPEC hdeced
hkw_DECPREC:
	$(RPGLEMAN) --section 3RPGHSPEC hdecprec
hkw_DFTACTGRP:
	$(RPGLEMAN) --section 3RPGHSPEC hdftact
hkw_DFTNAME:
	$(RPGLEMAN) --section 3RPGHSPEC hdftnam
hkw_ENBPFRCOL:
	$(RPGLEMAN) --section 3RPGHSPEC henbpfr
hkw_EXPROPTS:
	$(RPGLEMAN) --section 3RPGHSPEC hexprop
hkw_EXTBININT:
	$(RPGLEMAN) --section 3RPGHSPEC hextbin
hkw_FIXNBR:
	$(RPGLEMAN) --section 3RPGHSPEC hfixnbr
hkw_FLYDIV:
	$(RPGLEMAN) --section 3RPGHSPEC hfltdiv
hkw_FORMSALIGN:
	$(RPGLEMAN) --section 3RPGHSPEC hforms
hkw_FTRANS:
	$(RPGLEMAN) --section 3RPGHSPEC hftrans
hkw_GENLVL:
	$(RPGLEMAN) --section 3RPGHSPEC hgenlvl
hkw_INDENT:
	$(RPGLEMAN) --section 3RPGHSPEC hindent
hkw_INTPREC:
	$(RPGLEMAN) --section 3RPGHSPEC hintprc
hkw_LANGID:
	$(RPGLEMAN) --section 3RPGHSPEC hlangid
hkw_MAIN:
	$(RPGLEMAN) --section 3RPGHSPEC hmainkw
hkw_NOMAIN:
	$(RPGLEMAN) --section 3RPGHSPEC hnomain
hkw_OPENOPT:
	$(RPGLEMAN) --section 3RPGHSPEC hopenop
hkw_OPTIMIZE:
	$(RPGLEMAN) --section 3RPGHSPEC hoptim
hkw_OPTION:
	$(RPGLEMAN) --section 3RPGHSPEC hoption
hkw_PGMINFO:
	$(RPGLEMAN) --section 3RPGHSPEC pgminfokw
hkw_PRFDTA:
	$(RPGLEMAN) --section 3RPGHSPEC hprfdta
hkw_SRTSEQ:
	$(RPGLEMAN) --section 3RPGHSPEC hsrtseq
hkw_STGMDL:
	$(RPGLEMAN) --section 3RPGHSPEC hstgmdl
hkw_TEXT:
	$(RPGLEMAN) --section 3RPGHSPEC htext
hkw_THREAD:
	$(RPGLEMAN) --section 3RPGHSPEC hthread
hkw_TIMFMT:
	$(RPGLEMAN) --section 3RPGHSPEC htimfmt
hkw_TRUNCNBR:
	$(RPGLEMAN) --section 3RPGHSPEC htrunc
hkw_USERPRF:
	$(RPGLEMAN) --section 3RPGHSPEC husrprf
hkw_VALIDATE:
	$(RPGLEMAN) --section 3RPGHSPEC hvalidate

# Compiler Directives
cd_TITLE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdtitle
cd_EJECT:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdeject
cd_SPACE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdspace
cd_SET:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdset
cd_RESTORE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdrestore
cd_COPY:
	$(RPGLEMAN) --section 3RPGCOMPDIR --name COPY cdcopy
cd_INCLUDE:
	$(RPGLEMAN) --section 3RPGCOMPDIR --name INCLUDE cdcopy
cd_DEFINE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cddef
cd_UNDEFINE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdund
cd_IF:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdif
cd_ELSEIF:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdeif
cd_ELSE:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdels
cd_ENDIF:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdendif
cd_EOF:
	$(RPGLEMAN) --section 3RPGCOMPDIR cdeof
cd_FREE:
	$(RPGLEMAN) --section 3RPGCOMPDIR --name FREE freefree
cd_END-FREE:
	$(RPGLEMAN) --section 3RPGCOMPDIR --name END-FREE freefree
