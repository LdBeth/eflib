all: EFLIB
.PRECIOUS: %.a
.PHONY: clean

%.S: %.ML1
	ml1 $< > $@
%.a: %.S
	rplcomp $*.S $*.a $*.ext
%.O: %.a
	sasm -N -o $@ $<
BINHEAD.a:
	echo '    NIBASC /HPHP49-C/' > $@
ERF.M: ERF.MN ERF.O
	makerom $< $@
	sasm -N -o EFHEAD.O EFHEAD.a
	sasm -N -o EFHASH.O EFHASH.a
	sasm -N -o EFEND.O EFEND.a
EFLIB: ERF.O ERF.M BINHEAD.O
	sload ERF.M
	sload -H EF.M
clean:
	rm -f *.O *.a
