all:

install: $(DESTDIR)/etc/modules-load.d/blank.sh $(DESTDIR)/etc/init.d/modules-load

$(DESTDIR)/etc/modules-load.d/blank.sh: blank.sh
	install -D -m 0644 blank.sh $(DESTDIR)/etc/modules-load.d/blank.sh

$(DESTDIR)/etc/init.d/modules-load: modules-load.sh
	install -D -m 0744 modules-load.sh $(DESTDIR)/etc/init.d/modules-load
