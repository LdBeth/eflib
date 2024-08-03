all: EFLIB
.PRECIOUS: %.a %.ext %.l
.PHONY: clean cleanall

%.S: %.ML1
	ml1 $< > $@
%.a: %.S
	rplcomp $*.S $*.a $*.ext
%.O: %.a
	sasm -N -o $@ $<
BINHEAD.a:
	echo '    NIBASC /HPHP49-C/' > $@
ERF.M: ERF.MN ERF.O EFSUBS.O
	makerom $< $@
	sasm -N -o EFHEAD.O EFHEAD.a
	sasm -N -o EFHASH.O EFHASH.a
	sasm -N -o EFEND.O EFEND.a
EFLIB: EFLIB.M ERF.M BINHEAD.O
	sload ERF.M
	sload -H EFLIB.M
clean:
	rm -f *.O *.a *.ext
cleanall: clean
	rm -f *.LR ERF.S
