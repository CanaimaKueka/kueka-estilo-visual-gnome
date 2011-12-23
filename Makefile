# Makefile

SHELL := sh -e

SCRIPTS =	"debian/preinst install" \
		"debian/postinst configure" \
		"debian/postrm remove"

all: build

test:

	@echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n"

	@for SCRIPT in $(SCRIPTS); \
	do \
		echo -n "$${SCRIPT}\n"; \
		bash -n $${SCRIPT}; \
	done

	@echo -n "¡TODO BIEN!\n=================================================================================\n\n"

build:

	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/themes/
	cp -r metacity/canaima-metacity $(DESTDIR)/usr/share/themes/
	cp -r gtk/canaima-gtk $(DESTDIR)/usr/share/themes/

	mkdir -p $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/arte/
	cp -r arte/*.png $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/arte/

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-metacity/
	rm -rf $(DESTDIR)/usr/share/themes/canaima-gtk/

clean:

distclean:

reinstall: uninstall install
