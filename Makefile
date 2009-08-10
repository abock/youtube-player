VERSION = 0.6
BUILD_ID = $(shell LANG=C date -u +%Y%m%d%k%M)

share/youtube-player/application.ini: share/youtube-player/application.ini.in
	sed 's,@VERSION@,$(VERSION),g; s,@BUILD_ID@,$(BUILD_ID),g' < $< > $@
