MANDIR	= $(PREFIX)/usr/share/man
RPGLEMAN	= ./getrpgleman $(FLAGS)

all: bif dkw cop cd more

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
