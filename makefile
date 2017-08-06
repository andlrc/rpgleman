MANDIR	= $(PREFIX)/usr/share/man/man3RPG

all: bif dcl-ds dcl-c dcl-s dcl-pi dcl-pi-parm

bif:	%ABS %ADDR %ALLOC %BITAND %BITNOT %BITOR %BITXOR %CHAR %CHECK %CHECKR \
	%DATE %DAYS %DEC %DECH %DECPOS %DIFF %DIV %EDITC %EDITFLT %EDITW \
	%ELEM %EOF %EQUAL %ERROR %FIELDS %FLOAT %FOUND %GRAPH %HANDLER %HOURS \
	%INT %INTH %KDS %LEN %LOOKUPxx %MINUTES %MONTHS %MSECONDS %NULLIND \
	%OCCUR %OPEN %PADDR %PARMNUM %PARMS %REALLOC %REM %REPLACE %SCAN \
	%SCANRPL %SECONDS %SHTDN %SIZE %SQRT %STATUS %STR %SUBARR %SUBDT \
	%SUBST %THIS %TIME %TIMESTAMP %TLOOKUPxx %TRIM %TRIML %TRIMR %UCS2 \
	%UNS %UNSH %XFOOT %XLATE %XML %YEARS 

dcl-ds:	ALIAS ALIGN ALTSEQ BASED DTAARA EXPORT EXTNAME IMPORT INZ LEN LIKEDS \
	NOOPT OCCURS PREFIX QUALIFIED STATIC TEMPLATE \
	dcl-ds-subf

dcl-ds-subf:	ALT ALTSEQ ASCEND CTDATA DATFMT DESCEND DIM DTAARA EXTFLD \
	EXTFMT FROMFILE INZ LEN LIKE LIKEDS LIKEREC OVERLAY PACKEVEN PERRCD \
	PROCPTR TIMFMT TOFILE VARYING

dcl-c:	CONST

dcl-s:	ALT ALTSEQ ASCEND BASED CCSID CLASS CTDATA DATFMT DESCEND DIM DTAARA \
	EXPORT EXTFMT FROMFILE IMPORT INZ LEN LIKE NOOPT PERRCD PROCPTR \
	STATIC TEMPLATE TIMFMT TOFILE VARYING

dcl-pr:	dcl-pi
dcl-pi: ALTSEQ CCSID CLASS DATFMT DIM EXTPGM EXTPROC LEN LIKE LIKEDS LIKEREC \
	OPDESC PROCPTR RTNPARM STATIC TIMFMT VARYING \
	dcl-pi-parm

dcl-pi-parm: ALTSEQ ASCEND CCSID CLASS CONST DATFMT DESCEND DIM LIKEFILE LIKE \
	LIKEDS LIKEREC NOOPT OPTIONS PROCPTR TIMFMT VALUE VARYING

clean:
	-rm man/*.3RPG

install:
	mkdir -p $(MANDIR)
	cp man/* $(MANDIR)

uninstall:
	rm -r $(MANDIR)

# BIF
\%ABS:
	./getrpgleman 814
\%ADDR:
	./getrpgleman 815
\%ALLOC:
	./getrpgleman 816
\%BITAND:
	./getrpgleman 817
\%BITNOT:
	./getrpgleman 818
\%BITOR:
	./getrpgleman 819
\%BITXOR:
	./getrpgleman 820
\%CHAR:
	./getrpgleman 822
\%CHECK:
	./getrpgleman 823
\%CHECKR:
	./getrpgleman 824
\%DATE:
	./getrpgleman 825
\%DAYS:
	./getrpgleman 826
\%DEC:
	./getrpgleman 827
\%DECH:
	./getrpgleman 830
\%DECPOS:
	./getrpgleman 832
\%DIFF:
	./getrpgleman 833
\%DIV:
	./getrpgleman 834
\%EDITC:
	./getrpgleman 835
\%EDITFLT:
	./getrpgleman 836
\%EDITW:
	./getrpgleman 837
\%ELEM:
	./getrpgleman 838
\%EOF:
	./getrpgleman 839
\%EQUAL:
	./getrpgleman 840
\%ERROR:
	./getrpgleman 841
\%FIELDS:
	./getrpgleman 842
\%FLOAT:
	./getrpgleman 843
\%FOUND:
	./getrpgleman 844
\%GRAPH:
	./getrpgleman 845
\%HANDLER:
	./getrpgleman 846
\%HOURS:
	./getrpgleman 847
\%INT:
	./getrpgleman 848
\%INTH:
	./getrpgleman 849
\%KDS:
	./getrpgleman 850
\%LEN:
	./getrpgleman 851
\%LOOKUPxx:
	./getrpgleman 855
\%MINUTES:
	./getrpgleman 857
\%MONTHS:
	./getrpgleman 858
\%MSECONDS:
	./getrpgleman 859
\%NULLIND:
	./getrpgleman 860
\%OCCUR:
	./getrpgleman 861
\%OPEN:
	./getrpgleman 862
\%PADDR:
	./getrpgleman 863
\%PARMNUM:
	./getrpgleman 866
\%PARMS:
	./getrpgleman 865
\%REALLOC:
	./getrpgleman 867
\%REM:
	./getrpgleman 868
\%REPLACE:
	./getrpgleman 869
\%SCAN:
	./getrpgleman 870
\%SCANRPL:
	./getrpgleman 871
\%SECONDS:
	./getrpgleman 872
\%SHTDN:
	./getrpgleman 873
\%SIZE:
	./getrpgleman 874
\%SQRT:
	./getrpgleman 875
\%STATUS:
	./getrpgleman 876
\%STR:
	./getrpgleman 877
\%SUBARR:
	./getrpgleman 880
\%SUBDT:
	./getrpgleman 881
\%SUBST:
	./getrpgleman 882
\%THIS:
	./getrpgleman 885
\%TIME:
	./getrpgleman 886
\%TIMESTAMP:
	./getrpgleman 887
\%TLOOKUPxx:
	./getrpgleman 888
\%TRIM:
	./getrpgleman 889
\%TRIML:
	./getrpgleman 890
\%TRIMR:
	./getrpgleman 891
\%UCS2:
	./getrpgleman 892
\%UNS:
	./getrpgleman 893
\%UNSH:
	./getrpgleman 894
\%XFOOT:
	./getrpgleman 895
\%XLATE:
	./getrpgleman 896
\%XML:
	./getrpgleman 897
\%YEARS:
	./getrpgleman 898

# DCL-DS
ALIAS:
	./getrpgleman 515
ALIGN:
	./getrpgleman 516
ALTSEQ:
	./getrpgleman 518
BASED:
	./getrpgleman 520
DTAARA:
	./getrpgleman 528
EXPORT:
	./getrpgleman 529
EXTNAME:
	./getrpgleman 532
IMPORT:
	./getrpgleman 536
INZ:
	./getrpgleman 537
LEN:
	./getrpgleman 538
LIKEDS:
	./getrpgleman 542
NOOPT:
	./getrpgleman 547
OCCURS:
	./getrpgleman 548
PREFIX:
	./getrpgleman 554
QUALIFIED:
	./getrpgleman 556
STATIC:
	./getrpgleman 558
TEMPLATE:
	./getrpgleman 560

# DCL-DS-SUBF
ALT:
	./getrpgleman 517
ASCEND:
	./getrpgleman 519
CTDATA:
	./getrpgleman 524
DATFMT:
	./getrpgleman 525
DESCEND:
	./getrpgleman 526
DIM:
	./getrpgleman 527
EXTFLD:
	./getrpgleman 530
EXTFMT:
	./getrpgleman 531
FROMFILE:
	./getrpgleman 535
LIKE:
	./getrpgleman 540
LIKEREC:
	./getrpgleman 546
OVERLAY:
	./getrpgleman 551
PACKEVEN:
	./getrpgleman 552
PERRCD:
	./getrpgleman 553
PROCPTR:
	./getrpgleman 555
TIMFMT:
	./getrpgleman 562
TOFILE:
	./getrpgleman 563
VARYING:
	./getrpgleman 565

# DCL-C
CONST:
	./getrpgleman 523

# DCL-S:
CCSID:
	./getrpgleman 521
CLASS:
	./getrpgleman 522

# DCL-PI:
EXTPGM:
	./getrpgleman 533
EXTPROC:
	./getrpgleman 534
OPDESC:
	./getrpgleman 549
RTNPARM:
	./getrpgleman 557

# DCL-PI-PARM:
LIKEFILE:
	./getrpgleman 543
OPTIONS:
	./getrpgleman 550
VALUE:
	./getrpgleman 564
