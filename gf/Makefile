concretes = CastleEng.gf

all: Castle.pgf

Castle.pgf: $(concretes)
	gf -make $^

clean:
	rm -f $(concretes:.gf=.gfo)
	rm -f Castle.pgf
	rm -f Castle.gfo
