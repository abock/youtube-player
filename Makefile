PACKAGE = youtube-player
VERSION = 0.6
BUILD_ID = $(shell LANG=C date -u +%Y%m%d%k%M)

share/youtube-player/application.ini: share/youtube-player/application.ini.in
	sed 's,@VERSION@,$(VERSION),g; s,@BUILD_ID@,$(BUILD_ID),g' < $< > $@

clean:
	rm -f share/youtube-player/application.ini

dist: clean
	mkdir $(PACKAGE)-$(VERSION)
	cp -a AUTHORS COPYING Makefile bin share $(PACKAGE)-$(VERSION)
	tar cfj $(PACKAGE)-$(VERSION).tar.bz2 $(PACKAGE)-$(VERSION)
	rm -rf $(PACKAGE)-$(VERSION)
