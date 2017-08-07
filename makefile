MANDIR	= $(PREFIX)/usr/share/man/man3RPG

all: bif

bif:
	./getrpgleman bif.txt

clean:
	-rm man/*.3RPG

install:
	mkdir -p $(MANDIR)
	cp man/* $(MANDIR)

uninstall:
	rm -r $(MANDIR)
