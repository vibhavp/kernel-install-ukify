PLUGIN_PRIORITY ?= 80
PLUGIN_DEST = $(DESTDIR)/usr/lib/kernel/install.d/$(PLUGIN_PRIORITY)-ukify.install

.PHONY: install
install: ukify.install
	install -Dm755 ukify.install $(PLUGIN_DEST)

.PHONY: uninstall
uninstall: $(PLUGIN_DEST)
	rm $(PLUGIN_DEST)
