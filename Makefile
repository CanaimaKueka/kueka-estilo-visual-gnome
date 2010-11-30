# Makefile

SHELL := sh -e

SCRIPTS = "debian/preinst install" "debian/postinst configure" "debian/prerm remove" "debian/postrm remove"

all: test build

test:

	@echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n\n"

	@for SCRIPT in $(SCRIPTS); \
	do \
		echo -n "$${SCRIPT}\n"; \
		bash -n $${SCRIPT}; \
	done

	@echo -n "\n=================================================================================\nHECHO!\n\n"

build:

	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/themes/
	cp -r metacity/canaima-metacity $(DESTDIR)/usr/share/themes/
	cp -r gtk/canaima-gtk $(DESTDIR)/usr/share/themes/

	mkdir -p $(DESTDIR)/usr/share/canaima-estilo-visual/
	cp -r desktop-enlaces/ $(DESTDIR)/usr/share/canaima-estilo-visual/
	cp -r images/* $(DESTDIR)/usr/share/canaima-estilo-visual/

	mkdir -p $(DESTDIR)/etc/grub.d/
	cp -r grub/* $(DESTDIR)/etc/grub.d/

uninstall:

	rm -rf $(DESTDIR)/usr/share/icons/canaima-estilo-visual/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-metacity/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-gtk/
	rm -rf $(DESTDIR)/etc/grub.d/05_debian_theme

clean:

distclean:

reinstall: uninstall install
