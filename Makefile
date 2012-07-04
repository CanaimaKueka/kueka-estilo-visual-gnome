# Makefile

SHELL := sh -e

SCRIPTS = debian/postinst debian/prerm scripts/set-single-panel.sh scripts/set-twin-panel.sh

IMAGES = $(shell ls arte/ | grep "\.svg" | sed 's/\.svg//g')

all: test build

test:

	@printf "Comprobando sintaxis de los scripts de shell ["
	@for SCRIPT in $(SCRIPTS); do \
		sh -n $${SCRIPT}; \
		checkbashisms -f -x $${SCRIPT} || true; \
		printf "."; \
	done
	@printf "]\n"

build:

	@printf "Generando imágenes desde las fuentes [SVG > PNG,ICO] ["
	@for IMAGE in $(IMAGES); do \
		convert -background None arte/$${IMAGE}.svg \
			arte/$${IMAGE}.png; \
		printf "."; \
	done
	@printf "]\n"

install:

	@mkdir -p $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/arte/
	@mkdir -p $(DESTDIR)/etc/xdg/autostart/
	@mkdir -p $(DESTDIR)/usr/share/themes/
	@cp -r canaima-metacity canaima-gtk $(DESTDIR)/usr/share/themes/
	@cp -r change-panels.desktop $(DESTDIR)/etc/xdg/autostart/
	@cp -r scripts/*.py scripts/*.sh $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/
	@cp -r arte/*.png $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/arte/

uninstall:

	@rm -rf $(DESTDIR)/usr/share/canaima-estilo-visual-gnome/
	@rm -rf $(DESTDIR)/usr/share/themes/canaima-metacity/
	@rm -rf $(DESTDIR)/usr/share/themes/canaima-gtk/
	@rm -rf $(DESTDIR)/etc/xdg/autostart/change-panels.desktop

clean:

	@rm arte/*.png

distclean:

reinstall: uninstall install
