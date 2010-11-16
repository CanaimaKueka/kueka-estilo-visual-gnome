# Makefile

SHELL := sh -e

all: test build

test:
	@echo "Nada para comprobar!"

build:
	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/gconf/defaults/
	cp -r gconf/* $(DESTDIR)/usr/share/gconf/defaults/

	mkdir -p $(DESTDIR)/usr/share/themes/
	cp -r metacity/canaima-metacity $(DESTDIR)/usr/share/themes/
	cp -r gtk/canaima-gtk $(DESTDIR)/usr/share/themes/

	mkdir -p $(DESTDIR)/usr/share/canaima-estilo-visual/
	cp -r desktop-enlaces $(DESTDIR)/usr/share/canaima-estilo-visual/
	cp -r images/* $(DESTDIR)/usr/share/canaima-estilo-visual/

	mkdir -p $(DESTDIR)/etc/grub.d/
	cp -r grub/* $(DESTDIR)/etc/grub.d/

	mkdir -p $(DESTDIR)/usr/lib/mime/packages/
	cp -r mime/* $(DESTDIR)/usr/lib/mime/packages/

uninstall:

	rm -rf $(DESTDIR)/usr/share/icons/canaima-estilo-visual/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-metacity/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-gtk/
	rm -rf $(DESTDIR)/usr/lib/mime/packages/openoffice.org-writer
	rm -rf $(DESTDIR)/usr/lib/mime/packages/openoffice.org-calc
	rm -rf $(DESTDIR)/usr/lib/mime/packages/openoffice.org-impress
	rm -rf $(DESTDIR)/etc/grub.d/10_linux
	rm -rf $(DESTDIR)/etc/grub.d/05_debian_theme

clean:

distclean:

reinstall: uninstall install
