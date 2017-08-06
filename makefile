MANDIR	= $(PREFIX)/usr/share/man
RPGLEMAN	= ./getrpgleman $(FLAGS)

all: bif kw op cd more

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

# Free-Form Operations
op:	op_ACQ		op_BEGSR	op_CALLP	op_CHAIN	\
	op_CLEAR	op_CLOSE	op_COMMIT	op_DEALLOC	\
	op_DELETE	op_DOU		op_DOW		op_DSPLY	\
	op_DUMP		op_ELSE		op_ELSEIF	op_ENDDO	\
	op_ENDFOR	op_ENDIF	op_ENDMON	op_ENDSL	\
	op_ENDSR	op_EVAL		op_EVALR	op_EXCEPT	\
	op_EXFMT	op_EXSR		op_FEOD		op_FOR		\
	op_FORCE	op_IF		op_IN		op_ITER		\
	op_LEAVE	op_LEAVESR	op_MONITOR	op_NEXT		\
	op_ON-ERROR	op_ON-EXIT	op_OPEN		op_OTHER	\
	op_OUT		op_POST		op_READ		op_READC	\
	op_READE	op_READP	op_READPE	op_REL		\
	op_RESET	op_RETURN	op_ROLBK	op_SELECT	\
	op_SETGT	op_SETLL	op_SORTA	op_TEST		\
	op_UNLOCK	op_UPDATE	op_WHEN		op_WRITE

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

# Keywords
kw_ALIAS:
	$(RPGLEMAN) dalias
kw_ALIGN:
	$(RPGLEMAN) dalign
kw_ALT:
	$(RPGLEMAN) dalt
kw_ALTSEQ:
	$(RPGLEMAN) daltsq
kw_ASCEND:
	$(RPGLEMAN) dascend
kw_BASED:
	$(RPGLEMAN) dbased
kw_BINDEC:
	$(RPGLEMAN) dkwbindec
kw_CCSID:
	$(RPGLEMAN) dccsid
kw_CHAR:
	$(RPGLEMAN) dkwchar
kw_CLASS:
	$(RPGLEMAN) dclass
kw_CONST:
	$(RPGLEMAN) dconst
kw_CTDATA:
	$(RPGLEMAN) dctdata
kw_DATE:
	$(RPGLEMAN) dkwdate
kw_DATFMT:
	$(RPGLEMAN) ddatfmt
kw_DESCEND:
	$(RPGLEMAN) ddescnd
kw_DIM:
	$(RPGLEMAN) ddim
kw_DTAARA:
	$(RPGLEMAN) ddtaara
kw_EXPORT:
	$(RPGLEMAN) dexport
kw_EXT:
	$(RPGLEMAN) dkwext
kw_EXTFLD:
	$(RPGLEMAN) dextfld
kw_EXTFMT:
	$(RPGLEMAN) dextfmt
kw_EXTNAME:
	$(RPGLEMAN) dextnam
kw_EXTPGM:
	$(RPGLEMAN) dextpgm
kw_EXTPROC:
	$(RPGLEMAN) dextprc
kw_FLOAT:
	$(RPGLEMAN) dkwfloat
kw_FROMFILE:
	$(RPGLEMAN) dfrfile
kw_GRAPH:
	$(RPGLEMAN) dkwgraph
kw_IMPORT:
	$(RPGLEMAN) dimport
kw_INT:
	$(RPGLEMAN) dkwint
kw_IND:
	$(RPGLEMAN) dkwind
kw_INZ:
	$(RPGLEMAN) dinz
kw_LEN:
	$(RPGLEMAN) dkwlen
kw_LIKE:
	$(RPGLEMAN) dlike
kw_LIKEDS:
	$(RPGLEMAN) dlikeds
kw_LIKEFILE:
	$(RPGLEMAN) dlikefile
kw_LIKEREC:
	$(RPGLEMAN) dlikerec
kw_NOOPT:
	$(RPGLEMAN) dnoopt
kw_NULLIND:
	$(RPGLEMAN) dkwnullind
kw_OBJECT:
	$(RPGLEMAN) dkwobject
kw_OCCURS:
	$(RPGLEMAN) doccurs
kw_OPDESC:
	$(RPGLEMAN) dopdesc
kw_OPTIONS:
	$(RPGLEMAN) doptns
kw_OVERLAY:
	$(RPGLEMAN) doverly
kw_PACKED:
	$(RPGLEMAN) dkwpacked
kw_PACKEVEN:
	$(RPGLEMAN) dpackev
kw_PERRCD:
	$(RPGLEMAN) dperrcd
kw_POINTER:
	$(RPGLEMAN) dkwpointer
kw_POS:
	$(RPGLEMAN) dkwpos
kw_PREFIX:
	$(RPGLEMAN) dprefix
kw_PROCPTR:
	$(RPGLEMAN) dprcptr
kw_PSDS:
	$(RPGLEMAN) dkwpsds
kw_QUALIFIED:
	$(RPGLEMAN) dqualif
kw_RTNPARM:
	$(RPGLEMAN) drtnparm
kw_STATIC:
	$(RPGLEMAN) dstatic
kw_TEMPLATE:
	$(RPGLEMAN) dtemplatekw
kw_TIME:
	$(RPGLEMAN) dkwtime
kw_TIMESTAMP:
	$(RPGLEMAN) dkwtimestamp
kw_TIMFMT:
	$(RPGLEMAN) dtimfmt
kw_TOFILE:
	$(RPGLEMAN) dtofile
kw_UCS2:
	$(RPGLEMAN) dkwucs2
kw_UNS:
	$(RPGLEMAN) dkwuns
kw_VALUE:
	$(RPGLEMAN) dvalue
kw_VARCHAR:
	$(RPGLEMAN) dkwvarchar
kw_VARGRAPH:
	$(RPGLEMAN) dkwvargraph
kw_VARUCS2:
	$(RPGLEMAN) dkwvarucs2
kw_VARYING:
	$(RPGLEMAN) dvaryg
kw_ZONED:
	$(RPGLEMAN) dkwzoned

# Free-Form Operations
op_ACQ:
	$(RPGLEMAN) zzacq
op_BEGSR:
	$(RPGLEMAN) zzbegsr
op_CALLP:
	$(RPGLEMAN) zzcallp
op_CHAIN:
	$(RPGLEMAN) zzchain
op_CLEAR:
	$(RPGLEMAN) zzclear
op_CLOSE:
	$(RPGLEMAN) zzclose
op_COMMIT:
	$(RPGLEMAN) zzcomit
op_DEALLOC:
	$(RPGLEMAN) zzdeall
op_DELETE:
	$(RPGLEMAN) zzdelet
op_DOU:
	$(RPGLEMAN) zzdou
op_DOW:
	$(RPGLEMAN) zzdow
op_DSPLY:
	$(RPGLEMAN) zzdsply
op_DUMP:
	$(RPGLEMAN) zzdump
op_ELSE:
	$(RPGLEMAN) zzelse
op_ELSEIF:
	$(RPGLEMAN) zzelsif
op_ENDDO:
	$(RPGLEMAN) --name ENDDO zzendyy
op_ENDFOR:
	$(RPGLEMAN) --name ENDFOR zzendyy
op_ENDIF:
	$(RPGLEMAN) --name ENDIF zzendyy
op_ENDMON:
	$(RPGLEMAN) --name ENDMON zzendyy
op_ENDSL:
	$(RPGLEMAN) --name ENDSL zzendyy
op_ENDSR:
	$(RPGLEMAN) zzendsr
op_EVAL:
	$(RPGLEMAN) zzeval
op_EVALR:
	$(RPGLEMAN) zzevalr
op_EXCEPT:
	$(RPGLEMAN) zzexcpt
op_EXFMT:
	$(RPGLEMAN) zzexfmt
op_EXSR:
	$(RPGLEMAN) zzexsr
op_FEOD:
	$(RPGLEMAN) zzfeod
op_FOR:
	$(RPGLEMAN) zzfor
op_FORCE:
	$(RPGLEMAN) zzforce
op_IF:
	$(RPGLEMAN) zzif
op_IN:
	$(RPGLEMAN) zzin
op_ITER:
	$(RPGLEMAN) zziter
op_LEAVE:
	$(RPGLEMAN) zzleave
op_LEAVESR:
	$(RPGLEMAN) zzlevsr
op_MONITOR:
	$(RPGLEMAN) zzmonit
op_NEXT:
	$(RPGLEMAN) zznext
op_ON-ERROR:
	$(RPGLEMAN) zzonerr
op_ON-EXIT:
	$(RPGLEMAN) zzonexit
op_OPEN:
	$(RPGLEMAN) zzopen
op_OTHER:
	$(RPGLEMAN) zzother
op_OUT:
	$(RPGLEMAN) zzout
op_POST:
	$(RPGLEMAN) zzpost
op_READ:
	$(RPGLEMAN) zzread
op_READC:
	$(RPGLEMAN) zzreadc
op_READE:
	$(RPGLEMAN) zzreade
op_READP:
	$(RPGLEMAN) zzreadp
op_READPE:
	$(RPGLEMAN) zzredpe
op_REL:
	$(RPGLEMAN) zzrel
op_RESET:
	$(RPGLEMAN) zzreset
op_RETURN:
	$(RPGLEMAN) zzretrn
op_ROLBK:
	$(RPGLEMAN) zzrolbk
op_SELECT:
	$(RPGLEMAN) zzselec
op_SETGT:
	$(RPGLEMAN) zzsetgt
op_SETLL:
	$(RPGLEMAN) zzsetll
op_SORTA:
	$(RPGLEMAN) zzsorta
op_TEST:
	$(RPGLEMAN) zztest
op_UNLOCK:
	$(RPGLEMAN) zzunlck
op_UPDATE:
	$(RPGLEMAN) zzupdat
op_WHEN:
	$(RPGLEMAN) zzwhen
op_WRITE:
	$(RPGLEMAN) zzwrite

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
