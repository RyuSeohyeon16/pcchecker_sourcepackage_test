PKG=hamonikr-pcchecker
BIN=/usr/local/bin
APPS=/usr/share/applications
ICONS=/usr/share/icons/hicolor/256x256/apps
all: $(PKG)
clean :
	rm -f $(BIN)/pcchecker
	rm -f $(BIN)/pcchecker_asroot	
	rm -f $(APPS)/pcchecker.desktop
	rm -f $(ICONS)/pcchecker.png
	rm -f $(ICONS)/pccheckericon.png

install :
	install -D -m 755 -o root usr/bin/pcchecker $(BIN)/pcchecker
	install -D -m 755 -o root usr/bin/pcchecker_asroot $(BIN)/pcchecker_asroot
	install -D -m 755 -o root usr/share/applications/pcchecker.desktop $(APPS)/pcchecker.desktop
	install -D -m 644 -o root usr/share/icons/hicolor/256x256/apps/pcchecker.png $(ICONS)/pcchecker.png
	install -D -m 644 -o root usr/share/icons/hicolor/256x256/apps/pccheckericon.png $(ICONS)/pccheckericon.png
	install -D -m 644 -o root usr/share/icons/hicolor/256x256/apps/pc_icon.png $(ICONS)/pc_icon.png
	install -D -m 644 -o root usr/share/icons/hicolor/256x256/apps/pc_refresh.png $(ICONS)/pc_refresh.png
	install -D -m 644 -o root usr/share/icons/hicolor/256x256/apps/pc_upgrade.png $(ICONS)/pc_upgrade.png	
